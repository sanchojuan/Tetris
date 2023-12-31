//
//  CircularProgressView.swift
//  ProgressCircle
//
//  Created by Juan Sancho García on 31/12/23.
//

import UIKit

class CircularProgressView: UIView {

    fileprivate var progressLayer = CAShapeLayer()
    fileprivate var trackLayer = CAShapeLayer()
    
    
    var progressColor = UIColor.white {
        didSet {
            progressLayer.strokeColor = progressColor.cgColor
        }
    }
    
    var trackColor = UIColor.white {
        didSet {
            trackLayer.strokeColor = trackColor.cgColor
        }
    }
    
    var currentProgress: Float = 0 {
        didSet {
            if currentProgress == 1 { reset() }
        }
    }
    
    fileprivate func createCircularPath() {
        let pi = CGFloat.pi
        self.backgroundColor = UIColor.clear
        self.layer.cornerRadius = self.frame.size.width/2
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width/2, y: frame.size.height/2), radius: (self.frame.size.width - 1.5)/2, startAngle: -pi/2, endAngle: 3*pi/2, clockwise: true)
        trackLayer.path = circlePath.cgPath
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.strokeColor = trackColor.cgColor
        trackLayer.lineWidth = 10.0
        trackLayer.strokeEnd = 1.0
        layer.addSublayer(trackLayer)
        
        progressLayer.path = circlePath.cgPath
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.strokeColor = progressColor.cgColor
        progressLayer.lineWidth = 10.0
        progressLayer.strokeEnd = 0.0
        layer.addSublayer(progressLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createCircularPath()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createCircularPath()
    }
    
    func setProgressWithAnimation(value: Float) {
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = 0.25
        animation.fromValue = currentProgress
        animation.toValue = value
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        progressLayer.strokeEnd = CGFloat(value)
        progressLayer.add(animation, forKey: "animateProgress")
        
        currentProgress = value
    }
    
    func reset() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.setProgressWithAnimation(value: 0)
        })

    }
}

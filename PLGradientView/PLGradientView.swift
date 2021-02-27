//
//  PLGradientView.swift
//  PLGradientView
//
//  Created by Yutaka Ataka on 2020/04/19.
//  Copyright © 2020 playce Inc. All rights reserved.
//

import UIKit

@objc public enum GradientPosition: Int {
    case topToBottom
    case leftToRight
    case rightToLeft
    case bottomToTop
    case leftTopToRightBootm
    case rightTopToLeftBootm
    case leftBottomToRightTop
    case rightBottomToLeftTop
}

public class PLGradientView: UIView {

    fileprivate let gradientLayer = CAGradientLayer()

    fileprivate var colors: [CGColor]     = []
    fileprivate var locations: [NSNumber] = []
    fileprivate var startPoint: CGPoint   = CGPoint()
    fileprivate var endPoint: CGPoint     = CGPoint()

    override public func layoutSubviews() {
        super.layoutSubviews()

        drawGradation()
    }

    // MARK: - internal

    public func setup(colors: [CGColor], locations: [NSNumber], gradientPosition: GradientPosition) {
        self.colors    = colors
        self.locations = locations

        switch gradientPosition {
        case .topToBottom:
            startPoint = CGPoint(x: 0.5, y: 0.0)
            endPoint   = CGPoint(x: 0.5, y: 1.0)
        case .leftToRight:
            startPoint = CGPoint(x: 0.0, y: 0.5)
            endPoint   = CGPoint(x: 1.0, y: 0.5)
        case .rightToLeft:
            startPoint = CGPoint(x: 1.0, y: 0.5)
            endPoint   = CGPoint(x: 0.0, y: 0.5)
        case .bottomToTop:
            startPoint = CGPoint(x: 0.5, y: 1.0)
            endPoint   = CGPoint(x: 0.5, y: 0.0)
        case .leftTopToRightBootm:
            startPoint = CGPoint(x: 0.0, y: 0.0)
            endPoint   = CGPoint(x: 1.0, y: 1.0)
        case .rightTopToLeftBootm:
            startPoint = CGPoint(x: 1.0, y: 0.0)
            endPoint   = CGPoint(x: 0.0, y: 1.0)
        case .leftBottomToRightTop:
            startPoint = CGPoint(x: 0.0, y: 1.0)
            endPoint   = CGPoint(x: 1.0, y: 0.0)
        case .rightBottomToLeftTop:
            startPoint = CGPoint(x: 1.0, y: 1.0)
            endPoint   = CGPoint(x: 0.0, y: 0.0)
        }
        setNeedsLayout()
        layoutIfNeeded()
    }

    // MARK: - private

    fileprivate func drawGradation() {
        gradientLayer.removeFromSuperlayer()
        gradientLayer.frame.size = frame.size
        gradientLayer.colors     = colors
        gradientLayer.locations  = locations
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint   = endPoint
        layer.addSublayer(gradientLayer)
    }
}

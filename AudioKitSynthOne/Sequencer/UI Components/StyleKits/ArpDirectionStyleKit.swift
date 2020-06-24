//
//  ArpDirectionStyleKit.swift
//  AudioKitSynthOne
//
//  Created by AudioKit Contributors on 3/19/18.
//  Copyright © 2018 AudioKit. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//

import UIKit

public class ArpDirectionStyleKit: NSObject {

    //// Drawing Methods

    dynamic public class func drawArpDirectionButton(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 109, height: 37), resizing: ResizingBehavior = .aspectFit, directionSelected: CGFloat = 2) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 109, height: 37), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 109, y: resizedFrame.height / 37)

        //// Color Declarations
        let selectedColor = UIColor(red: 0.306, green: 0.306, blue: 0.325, alpha: 1.000)
        let offColor = UIColor(red: 0.200, green: 0.200, blue: 0.200, alpha: 1.000)
        let textColor = UIColor(red: 0.855, green: 0.855, blue: 0.855, alpha: 1.000)

        //// Variable Declarations
        let upDownSelected = directionSelected == 1 ? selectedColor : offColor
        let downSeleted = directionSelected == 2 ? selectedColor : offColor
        let upSelected = directionSelected == 0 ? selectedColor : offColor

        //// Button
        //// up Drawing
        let upPath = UIBezierPath(roundedRect: CGRect(x: 0.5, y: 2, width: 35, height: 29), cornerRadius: 1)
        upSelected.setFill()
        upPath.fill()
        UIColor.black.setStroke()
        upPath.lineWidth = 1
        upPath.stroke()

        //// down Drawing
        let downPath = UIBezierPath(roundedRect: CGRect(x: 70.5, y: 2, width: 35, height: 29), cornerRadius: 1)
        downSeleted.setFill()
        downPath.fill()
        UIColor.black.setStroke()
        downPath.lineWidth = 1
        downPath.stroke()

        //// up_down Drawing
        let upDownPath = UIBezierPath(roundedRect: CGRect(x: 35.5, y: 2, width: 35, height: 29), cornerRadius: 1)
        upDownSelected.setFill()
        upDownPath.fill()
        UIColor.black.setStroke()
        upDownPath.lineWidth = 1
        upDownPath.stroke()

        //// Rectangle Drawing
        context.saveGState()
        context.translateBy(x: 88, y: 26.5)
        context.rotate(by: -90 * CGFloat.pi / 180)

        let rectanglePath = UIBezierPath()
        rectanglePath.move(to: CGPoint(x: 12.5, y: -5))
        rectanglePath.addLine(to: CGPoint(x: 5.5, y: 0.5))
        rectanglePath.addLine(to: CGPoint(x: 12.5, y: 6))
        textColor.setFill()
        rectanglePath.fill()

        context.restoreGState()

        //// Rectangle 2 Drawing
        context.saveGState()
        context.translateBy(x: 49.62, y: 4)
        context.rotate(by: 90 * CGFloat.pi / 180)

        let rectangle2Path = UIBezierPath()
        rectangle2Path.move(to: CGPoint(x: 10.8, y: -5.38))
        rectangle2Path.addLine(to: CGPoint(x: 3.8, y: 0.12))
        rectangle2Path.addLine(to: CGPoint(x: 10.8, y: 5.62))
        textColor.setFill()
        rectangle2Path.fill()

        context.restoreGState()

        //// Rectangle 3 Drawing
        context.saveGState()
        context.translateBy(x: 56, y: 30.5)
        context.rotate(by: -90 * CGFloat.pi / 180)

        let rectangle3Path = UIBezierPath()
        rectangle3Path.move(to: CGPoint(x: 12.5, y: -5))
        rectangle3Path.addLine(to: CGPoint(x: 5.5, y: 0.5))
        rectangle3Path.addLine(to: CGPoint(x: 12.5, y: 6))
        textColor.setFill()
        rectangle3Path.fill()

        context.restoreGState()

        //// Rectangle 4 Drawing
        context.saveGState()
        context.translateBy(x: 18.12, y: 9)
        context.rotate(by: 90 * CGFloat.pi / 180)

        let rectangle4Path = UIBezierPath()
        rectangle4Path.move(to: CGPoint(x: 10.8, y: -5.38))
        rectangle4Path.addLine(to: CGPoint(x: 3.8, y: 0.12))
        rectangle4Path.addLine(to: CGPoint(x: 10.8, y: 5.62))
        textColor.setFill()
        rectangle4Path.fill()

        context.restoreGState()

        context.restoreGState()

    }

    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}

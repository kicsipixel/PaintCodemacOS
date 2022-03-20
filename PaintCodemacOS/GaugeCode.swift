//
//  GaugeCode.swift
//  PaintCodemacOS
//
//  Created by Szabolcs Toth on 20.03.2022.
//  Copyright © 2022 purzelbaum.hu. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import Cocoa

public class GaugeCode : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawTemperature(frame targetFrame: NSRect = NSRect(x: 0, y: 0, width: 200, height: 200), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Resize to Target Frame
        NSGraphicsContext.saveGraphicsState()
        let resizedFrame: NSRect = resizing.apply(rect: NSRect(x: 0, y: 0, width: 200, height: 200), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 200, y: resizedFrame.height / 200)
        let resizedShadowScale: CGFloat = min(resizedFrame.width / 200, resizedFrame.height / 200)


        //// Color Declarations
        let strokeColor10 = NSColor(red: 0.173, green: 0.761, blue: 0.408, alpha: 0.5)
        let strokeColor5 = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        let strokeColor8 = NSColor(red: 0.286, green: 0.318, blue: 0.349, alpha: 1)
        let fillColor4 = NSColor(red: 0.886, green: 0.886, blue: 0.886, alpha: 1)
        let strokeColor9 = NSColor(red: 0.984, green: 0.733, blue: 0.082, alpha: 0.5)
        let strokeColor11 = NSColor(red: 0.984, green: 0.082, blue: 0.082, alpha: 0.6)
        let fillColor3 = NSColor(red: 0.969, green: 0.969, blue: 0.969, alpha: 1)
        let fillColor5 = NSColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)

        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = NSColor.black.withAlphaComponent(0.1)
        shadow.shadowOffset = NSSize(width: 3, height: -3)
        shadow.shadowBlurRadius = 5

        //// Temperature Gauge
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalIn: NSRect(x: 30, y: 30, width: 140, height: 140))
        fillColor4.setFill()
        ovalPath.fill()
        strokeColor8.setStroke()
        ovalPath.lineWidth = 10
        ovalPath.stroke()


        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.move(to: NSPoint(x: 68.63, y: 58.74))
        bezierPath.curve(to: NSPoint(x: 50.49, y: 84.63), controlPoint1: NSPoint(x: 60.04, y: 65.28), controlPoint2: NSPoint(x: 53.7, y: 74.33))
        bezierPath.curve(to: NSPoint(x: 50.69, y: 116.25), controlPoint1: NSPoint(x: 47.27, y: 94.93), controlPoint2: NSPoint(x: 47.34, y: 105.98))
        bezierPath.curve(to: NSPoint(x: 69.17, y: 141.9), controlPoint1: NSPoint(x: 54.04, y: 126.51), controlPoint2: NSPoint(x: 60.5, y: 135.47))
        bezierPath.curve(to: NSPoint(x: 99.1, y: 152.11), controlPoint1: NSPoint(x: 77.85, y: 148.33), controlPoint2: NSPoint(x: 88.3, y: 151.89))
        bezierPath.curve(to: NSPoint(x: 129.4, y: 143.09), controlPoint1: NSPoint(x: 109.89, y: 152.32), controlPoint2: NSPoint(x: 120.48, y: 149.17))
        bezierPath.curve(to: NSPoint(x: 148.89, y: 118.2), controlPoint1: NSPoint(x: 138.32, y: 137.02), controlPoint2: NSPoint(x: 145.13, y: 128.32))
        bezierPath.curve(to: NSPoint(x: 150.34, y: 86.61), controlPoint1: NSPoint(x: 152.64, y: 108.07), controlPoint2: NSPoint(x: 153.15, y: 97.04))
        bezierPath.curve(to: NSPoint(x: 133.24, y: 60.02), controlPoint1: NSPoint(x: 147.54, y: 76.19), controlPoint2: NSPoint(x: 141.56, y: 66.9))
        strokeColor9.setStroke()
        bezierPath.lineWidth = 10
        bezierPath.miterLimit = 4
        bezierPath.stroke()


        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.move(to: NSPoint(x: 50.49, y: 84.63))
        bezier2Path.curve(to: NSPoint(x: 50.69, y: 116.25), controlPoint1: NSPoint(x: 47.27, y: 94.93), controlPoint2: NSPoint(x: 47.34, y: 105.98))
        bezier2Path.curve(to: NSPoint(x: 69.17, y: 141.9), controlPoint1: NSPoint(x: 54.04, y: 126.51), controlPoint2: NSPoint(x: 60.5, y: 135.47))
        bezier2Path.curve(to: NSPoint(x: 99.1, y: 152.11), controlPoint1: NSPoint(x: 77.85, y: 148.33), controlPoint2: NSPoint(x: 88.3, y: 151.89))
        bezier2Path.curve(to: NSPoint(x: 129.4, y: 143.09), controlPoint1: NSPoint(x: 109.89, y: 152.32), controlPoint2: NSPoint(x: 120.48, y: 149.17))
        bezier2Path.curve(to: NSPoint(x: 148.88, y: 118.2), controlPoint1: NSPoint(x: 138.32, y: 137.02), controlPoint2: NSPoint(x: 145.13, y: 128.32))
        bezier2Path.curve(to: NSPoint(x: 150.34, y: 86.61), controlPoint1: NSPoint(x: 152.64, y: 108.07), controlPoint2: NSPoint(x: 153.15, y: 97.04))
        bezier2Path.curve(to: NSPoint(x: 133.24, y: 60.02), controlPoint1: NSPoint(x: 147.54, y: 76.19), controlPoint2: NSPoint(x: 141.56, y: 66.9))
        strokeColor10.setStroke()
        bezier2Path.lineWidth = 10
        bezier2Path.miterLimit = 4
        bezier2Path.stroke()


        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.move(to: NSPoint(x: 150.34, y: 86.61))
        bezier3Path.curve(to: NSPoint(x: 133.24, y: 60.02), controlPoint1: NSPoint(x: 147.54, y: 76.19), controlPoint2: NSPoint(x: 141.56, y: 66.89))
        strokeColor11.setStroke()
        bezier3Path.lineWidth = 10
        bezier3Path.miterLimit = 4
        bezier3Path.stroke()


        //// Group 2
        NSGraphicsContext.saveGraphicsState()
        context.setAlpha(0.7)
        context.beginTransparencyLayer(auxiliaryInfo: nil)


        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.move(to: NSPoint(x: 99.94, y: 67.64))
        bezier5Path.line(to: NSPoint(x: 101.72, y: 67.64))
        bezier5Path.line(to: NSPoint(x: 101.72, y: 64.08))
        bezier5Path.line(to: NSPoint(x: 105.05, y: 67.64))
        bezier5Path.line(to: NSPoint(x: 107.38, y: 67.64))
        bezier5Path.line(to: NSPoint(x: 103.85, y: 64.08))
        bezier5Path.line(to: NSPoint(x: 107.57, y: 59))
        bezier5Path.line(to: NSPoint(x: 105.25, y: 59))
        bezier5Path.line(to: NSPoint(x: 102.58, y: 62.77))
        bezier5Path.line(to: NSPoint(x: 101.72, y: 61.89))
        bezier5Path.line(to: NSPoint(x: 101.72, y: 59))
        bezier5Path.line(to: NSPoint(x: 99.94, y: 59))
        bezier5Path.line(to: NSPoint(x: 99.94, y: 67.64))
        bezier5Path.close()
        fillColor5.setFill()
        bezier5Path.fill()


        context.endTransparencyLayer()
        NSGraphicsContext.restoreGraphicsState()


        //// Group 3
        NSGraphicsContext.saveGraphicsState()
        context.setAlpha(0.5)
        context.beginTransparencyLayer(auxiliaryInfo: nil)


        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.move(to: NSPoint(x: 104.06, y: 120))
        bezier6Path.curve(to: NSPoint(x: 103.96, y: 120.02), controlPoint1: NSPoint(x: 104.03, y: 120), controlPoint2: NSPoint(x: 103.99, y: 120.01))
        bezier6Path.line(to: NSPoint(x: 95.21, y: 123.14))
        bezier6Path.curve(to: NSPoint(x: 95.02, y: 123.54), controlPoint1: NSPoint(x: 95.05, y: 123.2), controlPoint2: NSPoint(x: 94.96, y: 123.38))
        bezier6Path.line(to: NSPoint(x: 95.64, y: 125.41))
        bezier6Path.curve(to: NSPoint(x: 95.8, y: 125.59), controlPoint1: NSPoint(x: 95.67, y: 125.49), controlPoint2: NSPoint(x: 95.73, y: 125.56))
        bezier6Path.curve(to: NSPoint(x: 96.04, y: 125.61), controlPoint1: NSPoint(x: 95.88, y: 125.63), controlPoint2: NSPoint(x: 95.96, y: 125.64))
        bezier6Path.line(to: NSPoint(x: 104.79, y: 122.48))
        bezier6Path.curve(to: NSPoint(x: 104.98, y: 122.09), controlPoint1: NSPoint(x: 104.95, y: 122.43), controlPoint2: NSPoint(x: 105.04, y: 122.25))
        bezier6Path.line(to: NSPoint(x: 104.36, y: 120.21))
        bezier6Path.curve(to: NSPoint(x: 104.2, y: 120.03), controlPoint1: NSPoint(x: 104.33, y: 120.13), controlPoint2: NSPoint(x: 104.28, y: 120.07))
        bezier6Path.curve(to: NSPoint(x: 104.06, y: 120), controlPoint1: NSPoint(x: 104.16, y: 120.01), controlPoint2: NSPoint(x: 104.11, y: 120))
        bezier6Path.close()
        bezier6Path.move(to: NSPoint(x: 95.71, y: 123.63))
        bezier6Path.line(to: NSPoint(x: 103.87, y: 120.71))
        bezier6Path.line(to: NSPoint(x: 104.3, y: 122))
        bezier6Path.line(to: NSPoint(x: 96.13, y: 124.91))
        bezier6Path.line(to: NSPoint(x: 95.71, y: 123.63))
        bezier6Path.close()
        fillColor5.setFill()
        bezier6Path.fill()


        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.move(to: NSPoint(x: 95.94, y: 120))
        bezier7Path.curve(to: NSPoint(x: 95.81, y: 120.03), controlPoint1: NSPoint(x: 95.89, y: 120), controlPoint2: NSPoint(x: 95.85, y: 120.01))
        bezier7Path.curve(to: NSPoint(x: 95.64, y: 120.21), controlPoint1: NSPoint(x: 95.73, y: 120.06), controlPoint2: NSPoint(x: 95.67, y: 120.13))
        bezier7Path.line(to: NSPoint(x: 95.02, y: 122.09))
        bezier7Path.curve(to: NSPoint(x: 95.2, y: 122.48), controlPoint1: NSPoint(x: 94.96, y: 122.25), controlPoint2: NSPoint(x: 95.04, y: 122.42))
        bezier7Path.line(to: NSPoint(x: 96.76, y: 123.1))
        bezier7Path.curve(to: NSPoint(x: 97.17, y: 122.93), controlPoint1: NSPoint(x: 96.92, y: 123.17), controlPoint2: NSPoint(x: 97.1, y: 123.09))
        bezier7Path.curve(to: NSPoint(x: 96.99, y: 122.52), controlPoint1: NSPoint(x: 97.23, y: 122.77), controlPoint2: NSPoint(x: 97.15, y: 122.59))
        bezier7Path.line(to: NSPoint(x: 95.7, y: 122.01))
        bezier7Path.line(to: NSPoint(x: 96.13, y: 120.73))
        bezier7Path.line(to: NSPoint(x: 99.57, y: 122.16))
        bezier7Path.curve(to: NSPoint(x: 99.98, y: 122), controlPoint1: NSPoint(x: 99.73, y: 122.23), controlPoint2: NSPoint(x: 99.91, y: 122.16))
        bezier7Path.curve(to: NSPoint(x: 99.81, y: 121.59), controlPoint1: NSPoint(x: 100.04, y: 121.84), controlPoint2: NSPoint(x: 99.97, y: 121.65))
        bezier7Path.line(to: NSPoint(x: 96.06, y: 120.02))
        bezier7Path.curve(to: NSPoint(x: 95.94, y: 120), controlPoint1: NSPoint(x: 96.02, y: 120.01), controlPoint2: NSPoint(x: 95.98, y: 120))
        bezier7Path.close()
        fillColor5.setFill()
        bezier7Path.fill()


        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.move(to: NSPoint(x: 103.13, y: 122.5))
        bezier8Path.curve(to: NSPoint(x: 102.84, y: 122.7), controlPoint1: NSPoint(x: 103, y: 122.5), controlPoint2: NSPoint(x: 102.88, y: 122.57))
        bezier8Path.curve(to: NSPoint(x: 103.01, y: 123.1), controlPoint1: NSPoint(x: 102.77, y: 122.86), controlPoint2: NSPoint(x: 102.85, y: 123.04))
        bezier8Path.line(to: NSPoint(x: 104.3, y: 123.62))
        bezier8Path.line(to: NSPoint(x: 103.87, y: 124.89))
        bezier8Path.line(to: NSPoint(x: 100.43, y: 123.46))
        bezier8Path.curve(to: NSPoint(x: 100.02, y: 123.63), controlPoint1: NSPoint(x: 100.27, y: 123.39), controlPoint2: NSPoint(x: 100.09, y: 123.47))
        bezier8Path.curve(to: NSPoint(x: 100.19, y: 124.04), controlPoint1: NSPoint(x: 99.96, y: 123.79), controlPoint2: NSPoint(x: 100.03, y: 123.97))
        bezier8Path.line(to: NSPoint(x: 103.94, y: 125.6))
        bezier8Path.curve(to: NSPoint(x: 104.19, y: 125.6), controlPoint1: NSPoint(x: 104.02, y: 125.63), controlPoint2: NSPoint(x: 104.11, y: 125.63))
        bezier8Path.curve(to: NSPoint(x: 104.36, y: 125.41), controlPoint1: NSPoint(x: 104.27, y: 125.56), controlPoint2: NSPoint(x: 104.33, y: 125.49))
        bezier8Path.line(to: NSPoint(x: 104.98, y: 123.54))
        bezier8Path.curve(to: NSPoint(x: 104.8, y: 123.15), controlPoint1: NSPoint(x: 105.04, y: 123.38), controlPoint2: NSPoint(x: 104.96, y: 123.21))
        bezier8Path.line(to: NSPoint(x: 103.24, y: 122.52))
        bezier8Path.curve(to: NSPoint(x: 103.13, y: 122.5), controlPoint1: NSPoint(x: 103.2, y: 122.51), controlPoint2: NSPoint(x: 103.16, y: 122.5))
        bezier8Path.close()
        fillColor5.setFill()
        bezier8Path.fill()


        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.move(to: NSPoint(x: 98.86, y: 125.7))
        bezier9Path.curve(to: NSPoint(x: 98.81, y: 125.7), controlPoint1: NSPoint(x: 98.84, y: 125.7), controlPoint2: NSPoint(x: 98.83, y: 125.7))
        bezier9Path.curve(to: NSPoint(x: 96.25, y: 127.88), controlPoint1: NSPoint(x: 97.21, y: 125.96), controlPoint2: NSPoint(x: 96.25, y: 126.77))
        bezier9Path.curve(to: NSPoint(x: 98.45, y: 131.34), controlPoint1: NSPoint(x: 96.25, y: 129.31), controlPoint2: NSPoint(x: 97.42, y: 130.39))
        bezier9Path.curve(to: NSPoint(x: 100, y: 133.44), controlPoint1: NSPoint(x: 99.25, y: 132.08), controlPoint2: NSPoint(x: 100, y: 132.77))
        bezier9Path.line(to: NSPoint(x: 100, y: 134.69))
        bezier9Path.curve(to: NSPoint(x: 100.17, y: 134.97), controlPoint1: NSPoint(x: 100, y: 134.81), controlPoint2: NSPoint(x: 100.07, y: 134.91))
        bezier9Path.curve(to: NSPoint(x: 100.5, y: 134.94), controlPoint1: NSPoint(x: 100.28, y: 135.02), controlPoint2: NSPoint(x: 100.4, y: 135.01))
        bezier9Path.curve(to: NSPoint(x: 104.38, y: 128.86), controlPoint1: NSPoint(x: 100.66, y: 134.82), controlPoint2: NSPoint(x: 104.38, y: 132.06))
        bezier9Path.curve(to: NSPoint(x: 100.84, y: 125.71), controlPoint1: NSPoint(x: 104.38, y: 126.93), controlPoint2: NSPoint(x: 102.55, y: 125.97))
        bezier9Path.curve(to: NSPoint(x: 100.49, y: 125.95), controlPoint1: NSPoint(x: 100.68, y: 125.68), controlPoint2: NSPoint(x: 100.52, y: 125.79))
        bezier9Path.line(to: NSPoint(x: 100.17, y: 127.58))
        bezier9Path.line(to: NSPoint(x: 99.13, y: 125.85))
        bezier9Path.curve(to: NSPoint(x: 98.86, y: 125.7), controlPoint1: NSPoint(x: 99.07, y: 125.76), controlPoint2: NSPoint(x: 98.97, y: 125.7))
        bezier9Path.close()
        bezier9Path.move(to: NSPoint(x: 100.63, y: 134.03))
        bezier9Path.line(to: NSPoint(x: 100.63, y: 133.44))
        bezier9Path.curve(to: NSPoint(x: 98.87, y: 130.88), controlPoint1: NSPoint(x: 100.63, y: 132.5), controlPoint2: NSPoint(x: 99.77, y: 131.71))
        bezier9Path.curve(to: NSPoint(x: 96.88, y: 127.88), controlPoint1: NSPoint(x: 97.89, y: 129.97), controlPoint2: NSPoint(x: 96.88, y: 129.04))
        bezier9Path.curve(to: NSPoint(x: 98.7, y: 126.36), controlPoint1: NSPoint(x: 96.88, y: 126.87), controlPoint2: NSPoint(x: 98.09, y: 126.49))
        bezier9Path.line(to: NSPoint(x: 100.04, y: 128.6))
        bezier9Path.curve(to: NSPoint(x: 100.37, y: 128.75), controlPoint1: NSPoint(x: 100.11, y: 128.71), controlPoint2: NSPoint(x: 100.24, y: 128.77))
        bezier9Path.curve(to: NSPoint(x: 100.62, y: 128.5), controlPoint1: NSPoint(x: 100.49, y: 128.72), controlPoint2: NSPoint(x: 100.59, y: 128.63))
        bezier9Path.line(to: NSPoint(x: 101.04, y: 126.38))
        bezier9Path.curve(to: NSPoint(x: 103.75, y: 128.86), controlPoint1: NSPoint(x: 102.4, y: 126.65), controlPoint2: NSPoint(x: 103.75, y: 127.43))
        bezier9Path.curve(to: NSPoint(x: 100.63, y: 134.03), controlPoint1: NSPoint(x: 103.75, y: 131.08), controlPoint2: NSPoint(x: 101.62, y: 133.18))
        bezier9Path.close()
        fillColor5.setFill()
        bezier9Path.fill()


        context.endTransparencyLayer()
        NSGraphicsContext.restoreGraphicsState()


        //// Pointer
        NSGraphicsContext.saveGraphicsState()
        context.translateBy(x: 99.5, y: 100.5)

        context.setShadow(offset: NSSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: shadow.shadowColor!.cgColor)
        context.beginTransparencyLayer(auxiliaryInfo: nil)


        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.move(to: NSPoint(x: 0.5, y: -0.5))
        bezier4Path.line(to: NSPoint(x: -32.5, y: -37.5))
        strokeColor5.setStroke()
        bezier4Path.lineWidth = 8
        bezier4Path.miterLimit = 4
        bezier4Path.lineCapStyle = .round
        bezier4Path.stroke()


        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalIn: NSRect(x: -7.5, y: -7.5, width: 15, height: 15))
        fillColor3.setFill()
        oval2Path.fill()


        context.endTransparencyLayer()

        NSGraphicsContext.restoreGraphicsState()
        
        NSGraphicsContext.restoreGraphicsState()

    }




    @objc(GaugeCodeResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: NSRect, target: NSRect) -> NSRect {
            if rect == target || target == NSRect.zero {
                return rect
            }

            var scales = NSSize.zero
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
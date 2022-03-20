//
//  GaugeView.swift
//  PaintCodemacOS
//
//  Created by Szabolcs Tóth on 20.03.2022.
//  Copyright © 2022 Szabolcs Tóth. All rights reserved.
//

import Cocoa

class GaugeView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        GaugeCode.drawTemperature(frame: dirtyRect, resizing: .aspectFit)
    }
    
}

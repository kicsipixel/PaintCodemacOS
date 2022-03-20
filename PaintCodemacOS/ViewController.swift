//
//  ViewController.swift
//  PaintCodemacOS
//
//  Created by Szabolcs Tóth on 20.03.2022.
//  Copyright © 2022 Szabolcs Tóth. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let gaugeView: GaugeView = {
        let view = GaugeView(frame: NSRect(x: 0, y: 0, width: 400, height: 400))
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(gaugeView)
        NSLayoutConstraint.activate([
            gaugeView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gaugeView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}


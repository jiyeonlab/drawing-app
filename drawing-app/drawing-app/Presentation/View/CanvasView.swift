//
//  CanvasView.swift
//  drawing-app
//
//  Created by Jiyeon  on 2023/11/08.
//

import UIKit

class CanvasView: UIView {
    
    private var touchesBegan: ((CGPoint) -> ())
    
    init(touchesBegan: @escaping ((CGPoint) -> ())) {
        self.touchesBegan = touchesBegan
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let point = touches.first?.location(in: self) {
            touchesBegan(point)
        }
    }
    
    func draw(_ shape: CAShapeLayer) {
        self.layer.addSublayer(shape)
    }
}

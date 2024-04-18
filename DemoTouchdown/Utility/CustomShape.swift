//
//  CustomShape.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 15/04/24.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path{
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
   
   
}

#Preview {
    CustomShape()
}

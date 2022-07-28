//
//  SunView.swift
//  DrawApp
//
//  Created by Maksim Grischenko on 22.07.2022.
//

import SwiftUI

struct SunView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.yellow.opacity(0.2))
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let size = min(width, height)
                
                Path { path in
                    
                    path.move(to: CGPoint(x: size / 2, y: size * 0.05))
                    path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.3))
                    path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.3))
                    
                    path.move(to: CGPoint(x: size * 0.15, y: size * 0.15))
                    path.addLine(to: CGPoint(x: size * 0.3, y: size * 0.4))
                    path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.3))
                    
                    path.move(to: CGPoint(x: size / 2, y: size * 0.95))
                    path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.7))
                    path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.7))
                    
                    path.move(to: CGPoint(x: size * 0.85, y: size * 0.85))
                    path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.7))
                    path.addLine(to: CGPoint(x: size * 0.7, y: size * 0.6))
                    
                    path.move(to: CGPoint(x: size * 0.85, y: size * 0.15))
                    path.addLine(to: CGPoint(x: size * 0.7, y: size * 0.4))
                    path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.3))
                    
                    path.move(to: CGPoint(x: size * 0.05, y: size / 2))
                    path.addLine(to: CGPoint(x: size * 0.3, y: size * 0.4))
                    path.addLine(to: CGPoint(x: size * 0.3, y: size * 0.6))
                    
                    path.move(to: CGPoint(x: size * 0.15, y: size * 0.85))
                    path.addLine(to: CGPoint(x: size * 0.3, y: size * 0.6))
                    path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.7))
                    
                    path.move(to: CGPoint(x: size * 0.95, y: size / 2))
                    path.addLine(to: CGPoint(x: size * 0.7, y: size * 0.4))
                    path.addLine(to: CGPoint(x: size * 0.7, y: size * 0.6))
                    
                }
                .fill(Color.orange)
                
                Circle()
                    .fill(Color.yellow)
                    .frame(width: width/2, height: height/2)
                    .overlay(Circle().stroke(Color.orange, lineWidth: 2))
                    .offset(x: size/4, y: size/4)
                
                
                
            }
        }
    }
}

struct SunView_Previews: PreviewProvider {
    static var previews: some View {
        SunView()
            .frame(width: 300, height: 300)
    }
}

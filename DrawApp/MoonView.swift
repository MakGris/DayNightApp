//
//  MoonView.swift
//  DrawApp
//
//  Created by Maksim Grischenko on 25.07.2022.
//

import SwiftUI

struct MoonView: View {
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: size * 0.7, y: size * 0.1))
                    path.addQuadCurve(
                        to: CGPoint(x: size * 0.7, y: size * 0.9),
                        control: CGPoint(x: -size * 0.15, y: size * 0.5)
                    )
                    path.move(to: CGPoint(x: size * 0.7, y: size * 0.1))
                    path.addQuadCurve(
                        to: CGPoint(x: size * 0.7, y: size * 0.9),
                        control: CGPoint(x: size * 0.2, y: size * 0.5)
                    )
                }
                .fill(Color.yellow, style: FillStyle(eoFill: true, antialiased: true))
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.7, y: size * 0.1))
                    path.addQuadCurve(
                        to: CGPoint(x: size * 0.7, y: size * 0.9),
                        control: CGPoint(x: -size * 0.15, y: size * 0.5)
                    )
                    path.move(to: CGPoint(x: size * 0.7, y: size * 0.1))
                    path.addQuadCurve(
                        to: CGPoint(x: size * 0.7, y: size * 0.9),
                        control: CGPoint(x: size * 0.2, y: size * 0.5)
                    )
                }
                .stroke()
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.7, y: size * 0.1))
                    path.addQuadCurve(
                        to: CGPoint(x: size * 0.7, y: size * 0.9),
                        control: CGPoint(x: -size * 0.15, y: size * 0.5)
                    )
                    path.move(to: CGPoint(x: size * 0.7, y: size * 0.1))
                    path.addQuadCurve(
                        to: CGPoint(x: size * 0.7, y: size * 0.9),
                        control: CGPoint(x: size * 0.2, y: size * 0.5)
                    )
                }
                .stroke(Color.yellow.opacity(0.3),style: StrokeStyle(lineWidth: 15))
            }
            
        }
        
    }
}

struct MoonView_Previews: PreviewProvider {
    static var previews: some View {
        MoonView()
            .frame(width: 300, height: 300)
    }
}

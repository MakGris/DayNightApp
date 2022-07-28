//
//  ButtonView.swift
//  DrawApp
//
//  Created by Maksim Grischenko on 28.07.2022.
//

import SwiftUI

struct ButtonView: ButtonStyle {
    @Binding var bulbColor: Color
    func makeBody(configuration: Configuration) -> some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: size/2, y: size/2),
                    radius: size/2,
                    startAngle: Angle(degrees: 60),
                    endAngle: Angle(degrees: 120),
                    clockwise: true
                )
            }
            .foregroundColor(bulbColor)
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: width/2, y: width/2),
                    radius: width/2,
                    startAngle: Angle(degrees: 60),
                    endAngle: Angle(degrees: 120),
                    clockwise: true
                )
            }
            .stroke(lineWidth: 2)
            
            Path { path in
                
                path.move(to: CGPoint(x: size * 0.25, y: size * 0.93))
                path.addLine(to: CGPoint(x: size * 0.25, y: size * 1.17))
                path.addLine(to: CGPoint(x: size * 0.75, y: size * 1.17))
                path.addLine(to: CGPoint(x: size * 0.75, y: size * 0.93))
            }
            .foregroundColor(.gray)
            
            Path { path in
                
                path.move(to: CGPoint(x: size * 0.25, y: size * 0.93))
                path.addLine(to: CGPoint(x: size * 0.25, y: size * 1.17))
                path.addLine(to: CGPoint(x: size * 0.75, y: size * 1.17))
                path.addLine(to: CGPoint(x: size * 0.75, y: size * 0.93))
                path.addLine(to: CGPoint(x: size * 0.25, y: size * 0.93))
            }
            .stroke(lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: size * 0.33, y: size * 1.17))
                path.addLine(to: CGPoint(x: size * 0.33, y: size * 1.27))
                path.addLine(to: CGPoint(x: size * 0.67, y: size * 1.27))
                path.addLine(to: CGPoint(x: size * 0.67, y: size * 1.17))
            }
            .foregroundColor(.gray)
            
            Path { path in
                path.move(to: CGPoint(x: size * 0.33, y: size * 1.17))
                path.addLine(to: CGPoint(x: size * 0.33, y: size * 1.27))
                path.addLine(to: CGPoint(x: size * 0.67, y: size * 1.27))
                path.addLine(to: CGPoint(x: size * 0.67, y: size * 1.17))
            }
            .stroke(lineWidth: 2)
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: size/2, y: size * 1.27),
                    radius: size * 0.07,
                    startAngle: Angle(degrees: 0),
                    endAngle: Angle(degrees: 180),
                    clockwise: false
                )
            }
            .foregroundColor(.gray)
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: size/2, y: size * 1.27),
                    radius: size * 0.07,
                    startAngle: Angle(degrees: 0),
                    endAngle: Angle(degrees: 180),
                    clockwise: false
                )
            }
            .stroke(lineWidth: 2)
            
        }
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Button("Light on") {
            
        }.buttonStyle(ButtonView(bulbColor: .constant(.yellow)))
            .frame(width: 300, height: 300)
        
    }
}

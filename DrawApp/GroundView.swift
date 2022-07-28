//
//  DayGround.swift
//  DrawApp
//
//  Created by Maksim Grischenko on 24.07.2022.
//

import SwiftUI

struct GroundView: View {
    @Binding var grossColor: Color
    @Binding var groundColor: Color
    @Binding var soilFirstLayerColor: Color
    @Binding var soilSecondLayerColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            VStack(alignment: .center, spacing: 0) {
                Rectangle()
                    .foregroundColor(grossColor)
                    .frame(width: width, height: height / 10, alignment: .center)
                Rectangle()
                    .foregroundColor(groundColor)
                    .frame(width: width, height: height / 10)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(soilFirstLayerColor)
                        .frame(width: width, height: height)
                    
                    Path { path in
                        path.move(to: CGPoint(x: 0, y: height / 2))
                        path.addQuadCurve(
                            to: CGPoint(x: width * 0.08, y: height * 0.3),
                            control: CGPoint(x: width * 0.08, y: height * 0.5)
                        )
                        path.addQuadCurve(
                            to: CGPoint(x: width * 0.15, y: height * 0.4),
                            control: CGPoint(x: width * 0.1, y: height * 0.1)
                        )
                        path.addQuadCurve(
                            to: CGPoint(x: width * 0.25, y: height * 0.4),
                            control: CGPoint(x: width * 0.20, y: height * 0.6)
                        )
                        path.addQuadCurve(
                            to: CGPoint(x: width * 0.35, y: height * 0.3),
                            control: CGPoint(x: width * 0.3, y: height * 0.3)
                        )
                        path.addQuadCurve(
                            to: CGPoint(x: width * 0.5, y: height * 0.4),
                            control: CGPoint(x: width * 0.35, y: height * 0.5)
                        )
                        path.addQuadCurve(
                            to: CGPoint(x: width * 0.75, y: height * 0.3),
                            control: CGPoint(x: width * 0.55, y: height * 0.1)
                        )
                        path.addQuadCurve(
                            to: CGPoint(x: width * 0.85, y: height * 0.4),
                            control: CGPoint(x: width * 0.75, y: height * 0.1)
                        )
                        path.addQuadCurve(
                            to: CGPoint(x: width, y: height * 0.35),
                            control: CGPoint(x: width * 0.9, y: height * 0.2)
                        )
                        path.addLine(to: CGPoint(x: width , y: 0))
                        path.addLine(to: CGPoint(x: 0, y: 0))
                        path.addLine(to: CGPoint(x: 0, y: height / 2))
                    }
                    .foregroundColor(soilSecondLayerColor)
                    
                }
            }
        }
    }
}


struct DayGround_Previews: PreviewProvider {
    static var previews: some View {
        GroundView(
            grossColor: .constant(Color(red: 111/255, green: 182/255, blue: 8/255)),
            groundColor: .constant(Color(red: 120/255, green: 77/255, blue: 44/255)),
            soilFirstLayerColor: .constant(Color(red: 196/255, green: 153/255, blue: 108/255)),
            soilSecondLayerColor: .constant(Color(red: 169/255, green: 124/255, blue: 82/255))
        )
        .frame(width: 400, height: 100)
    }
}

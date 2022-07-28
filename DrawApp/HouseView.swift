//
//  HouseView.swift
//  DrawApp
//
//  Created by Maksim Grischenko on 27.07.2022.
//

import SwiftUI

struct HouseView: View {
    @Binding var houseColor: Color
    @Binding var windowColor: Color
    @Binding var foundationColor: Color
    var body: some View {
        
        ZStack {
            
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let size = min(width, height)
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.2, y: size))
                    path.addLine(to: CGPoint(x: size * 0.2, y: size * 0.6))
                    path.addLine(to: CGPoint(x: size * 0.5, y: size * 0.35))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.6))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size))
                    path.addLine(to: CGPoint(x: size * 0.2, y: size))
                    
                    path.move(to: CGPoint(x: size * 0.2, y: size * 0.6))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.6))
                }.foregroundColor(houseColor)
                
                
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.2, y: size * 0.965))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.965))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size))
                    path.addLine(to: CGPoint(x: size * 0.2, y: size))
                }
                .foregroundColor(foundationColor)
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.4, y: size * 0.665))
                    path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.665))
                    path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.83))
                    path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.83))
                    path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.665))
                    
                }.foregroundColor(windowColor)
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.8, y: size * 0.665))
                    path.addLine(to: CGPoint(x: size * 0.9, y: size * 0.665))
                    path.addLine(to: CGPoint(x: size * 0.9, y: size * 0.7))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.7))
                    
                }.foregroundColor(houseColor)
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.8, y: size * 0.93))
                    path.addLine(to: CGPoint(x: size * 0.865, y: size * 0.93))
                    path.addLine(to: CGPoint(x: size * 0.865, y: size * 0.965))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.965))
                    path.addLine(to: CGPoint(x: size * 0.93, y: size * 0.965))
                    path.addLine(to: CGPoint(x: size * 0.93, y: size))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size))
                    
                }.foregroundColor(houseColor)
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.8, y: size * 0.93))
                    path.addLine(to: CGPoint(x: size * 0.865, y: size * 0.93))
                    path.addLine(to: CGPoint(x: size * 0.865, y: size * 0.965))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.965))
                    path.addLine(to: CGPoint(x: size * 0.93, y: size * 0.965))
                    path.addLine(to: CGPoint(x: size * 0.93, y: size))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size))
                    
                }.stroke()
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.8, y: size * 0.665))
                    path.addLine(to: CGPoint(x: size * 0.9, y: size * 0.665))
                    path.addLine(to: CGPoint(x: size * 0.9, y: size * 0.7))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.7))
                    
                }.stroke()
                
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.4, y: size * 0.665))
                    path.addLine(to: CGPoint(x: size * 0.6 , y: size * 0.665))
                    path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.83))
                    path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.83))
                    path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.665))
                    
                    path.move(to: CGPoint(x: size * 0.5, y: size * 0.83))
                    path.addLine(to: CGPoint(x: size * 0.5, y: size * 0.665))
                    
                }.stroke()
                
                Path { path in
                    path.move(to: CGPoint(x: size * 0.2, y: size))
                    path.addLine(to: CGPoint(x: size * 0.2, y: size * 0.6))
                    path.addLine(to: CGPoint(x: size * 0.5, y: size * 0.35))
                    path.addLine(to: CGPoint(x: size * 0.8 , y: size * 0.6))
                    path.addLine(to: CGPoint(x: size * 0.8 , y: size))
                    path.addLine(to: CGPoint(x: size * 0.2, y: size))
                    
                    path.move(to: CGPoint(x: size * 0.2, y: size * 0.6))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.6))
                    
                    path.move(to: CGPoint(x: size * 0.2, y: size * 0.965))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size * 0.965))
                    path.addLine(to: CGPoint(x: size * 0.8, y: size))
                    path.addLine(to: CGPoint(x: size * 0.2, y: size))
                }.stroke()
            }
            
            
        }
    }
}


struct HouseView_Previews: PreviewProvider {
    static var previews: some View {
        HouseView(houseColor: .constant(.brown), windowColor: .constant(.blue), foundationColor: .constant(.gray))
            .frame(width: 300, height: 300)
    }
}

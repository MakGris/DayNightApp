//
//  ContentView.swift
//  DrawApp
//
//  Created by Maksim Grischenko on 22.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var transitionSun = 0.0
    @State private var transitionMoon = UIScreen.main.bounds.height
    @State private var starOpacity = 0.0
    @State private var isButtonPressed = false
    @State private var bulbColor = Color.yellow
    @State private var colorSky = Color.blue
    @State private var houseColor = Color(
        red: 244/255,
        green: 180/255,
        blue: 109/255
    )
    @State private var windowColor = Color(
        red: 199/255,
        green: 235/255,
        blue: 235/255
    )
    @State private var foundationColor = Color(
        red: 198/255,
        green: 191/255,
        blue: 184/255
    )
    @State private var grossColor = Color(
        red: 111/255,
        green: 182/255,
        blue: 8/255
    )
    @State private var groundColor = Color(
        red: 120/255,
        green: 77/255,
        blue: 44/255
    )
    @State private var soilFirstLayerColor = Color(
        red: 196/255,
        green: 153/255,
        blue: 108/255
    )
    @State private var soilSecondLayerColor = Color(
        red: 169/255,
        green: 124/255,
        blue: 82/255
    )
    
    var body: some View {
        
        ZStack {
            colorSky
                .ignoresSafeArea()
            VStack {
                GeometryReader { geometry in
                    ForEach(0...15, id: \.self) { index in
                        StarView(index: index)
                            .offset(
                                x: CGFloat.random(in: 0.0...geometry.size.width),
                                y: CGFloat.random(in: 0.0...geometry.size.height)
                            )
                    }
                }
                .opacity(starOpacity)
                .animation(.easeInOut(duration: 1.0), value: starOpacity)
            }.padding()
                .padding(.bottom, 200)
            
            VStack {
                ZStack {
                    SunView()
                        .frame(width: 100, height: 100)
                        .offset(y: transitionSun)
                        .animation(.easeOut(duration: 2.0), value: transitionSun)
                    MoonView()
                        .frame(width: 100, height: 100)
                        .offset(y: transitionMoon)
                        .animation(.easeOut(duration: 2.0), value: transitionMoon)
                }
                HStack {
                    Spacer()
                    Button("Light on", action: buttonPressed)
                        .buttonStyle(ButtonView(bulbColor: $bulbColor))
                        .frame(width: 40, height: 80)
                        .padding()
                }
                Spacer()
                HStack {
                    HouseView(
                        houseColor: $houseColor,
                        windowColor: $windowColor,
                        foundationColor: $foundationColor
                    )
                    .frame(width: 300, height: 300)
                    .padding(.bottom, -10)
                    Spacer()
                }
                GroundView(
                    grossColor: $grossColor,
                    groundColor: $groundColor,
                    soilFirstLayerColor: $soilFirstLayerColor,
                    soilSecondLayerColor: $soilSecondLayerColor
                )
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: 100)
                .padding(.bottom, 0)
                .padding(.top, 0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private func buttonPressed() {
        isButtonPressed.toggle()
        if isButtonPressed {
            starOpacity = 1.0
            transitionSun = UIScreen.main.bounds.height
            transitionMoon = 0.0
            withAnimation(.easeOut(duration: 1)) {
                houseColor = Color(
                    red: 90/255,
                    green: 90/255,
                    blue: 151/255
                )
                foundationColor = Color(
                    red: 49/255,
                    green: 49/255,
                    blue: 99/255
                )
                windowColor = .yellow
                colorSky = Color(
                    red: 15/255,
                    green: 15/255,
                    blue: 65/255,
                    opacity: 0.8
                )
                grossColor = Color(
                    red: 2/255,
                    green: 1/255,
                    blue: 44/255
                )
                groundColor = Color(
                    red: 15/255,
                    green: 15/255,
                    blue: 65/255
                )
                soilFirstLayerColor = Color(
                    red: 90/255,
                    green: 90/255,
                    blue: 151/255
                )
                soilSecondLayerColor = Color(
                    red: 49/255,
                    green: 49/255,
                    blue: 99/255
                )
                bulbColor = .gray
                
            }
            
            
        }
        else {
            starOpacity = 0.0
            transitionSun = 0
            transitionMoon = UIScreen.main.bounds.height
            withAnimation(.easeIn(duration: 1)) {
                colorSky = .blue
                bulbColor = .yellow
                houseColor = Color(
                    red: 244/255,
                    green: 180/255,
                    blue: 109/255
                )
                foundationColor = Color(
                    red: 198/255,
                    green: 191/255,
                    blue: 184/255
                )
                windowColor = Color(
                    red: 199/255,
                    green: 235/255,
                    blue: 235/255
                )
                grossColor = Color(
                    red: 111/255,
                    green: 182/255,
                    blue: 8/255
                )
                groundColor = Color(
                    red: 120/255,
                    green: 77/255,
                    blue: 44/255
                )
                soilFirstLayerColor = Color(
                    red: 196/255,
                    green: 153/255,
                    blue: 108/255
                )
                soilSecondLayerColor = Color(
                    red: 169/255,
                    green: 124/255,
                    blue: 82/255
                )
            }
        }
    }
}

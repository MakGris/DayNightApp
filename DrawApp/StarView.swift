//
//  StarView.swift
//  DrawApp
//
//  Created by Maksim Grischenko on 27.07.2022.
//

import SwiftUI

struct StarView: View {
    let index: Int
    var body: some View {
        Circle()
            .frame(width: 3, height: 3)
            .foregroundColor(.white)
    }
}


struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView(index: 5)
            .frame(width: 400, height: 400)
        
    }
}

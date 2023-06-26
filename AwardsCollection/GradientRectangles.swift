//
//  GradientRectangles.swift
//  AwardsCollection
//
//  Created by Артём Латушкин on 26.06.2023.
//

import SwiftUI

struct GradientRectangles: View {
    var body: some View {
        GeometryReader { geometry in
            let wight = geometry.size.width
            let hight = geometry.size.height
            ZStack {
                ForEach(0..<3) { iteration in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.green, .blue]),
                                startPoint: UnitPoint(x: 0, y: 1),
                                endPoint: UnitPoint(x: 1, y: 0)
                            )
                        )
                        .rotationEffect(.degrees(Double(iteration) * 60)) // Поварачиваем фигуру
                        .frame(width: wight * 0.72, height: hight * 0.72)
                }
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
                    .scaleEffect(0.72)
            }
        }
        
    }
}

struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles()
            .frame(width: 200, height: 200)
    }
}

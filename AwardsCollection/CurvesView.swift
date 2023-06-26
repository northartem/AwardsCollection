//
//  CurvesView.swift
//  AwardsCollection
//
//  Created by Артём Латушкин on 26.06.2023.
//

import SwiftUI

struct CurvesView: View {
    var body: some View {
        GeometryReader { geometry in
            let wight = geometry.size.width
            let hight = geometry.size.height
            let minSize = min(wight, hight)
            let nearLine = minSize * 0.1
            let farLine = minSize - nearLine
            let middle = minSize / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: minSize, y: 0)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: minSize, y: minSize)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: 0, y: minSize)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine),
                    control: CGPoint(x: 0, y: 0)
                )
            }
            .fill(
                RadialGradient(
                    colors: [.white, .orange],
                    center: .center,
                    startRadius: minSize * 0.05,
                    endRadius: minSize * 0.6
                )
            )
            Path { path in
                path.addArc(
                    center: CGPoint(x: nearLine, y: nearLine),
                    radius: middle,
                    startAngle: .degrees(90),
                    endAngle: .degrees(0),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: farLine, y: nearLine),
                    radius: middle,
                    startAngle: .degrees(180),
                    endAngle: .degrees(90),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: farLine, y: farLine),
                    radius: middle,
                    startAngle: .degrees(270),
                    endAngle: .degrees(180),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: nearLine, y: farLine),
                    radius: middle,
                    startAngle: .degrees(0),
                    endAngle: .degrees(270 ),
                    clockwise: true
                )
                path.closeSubpath()
            }
            .stroke(.red, lineWidth: 2)
        }
    }
}

struct CurvesView_Previews: PreviewProvider {
    static var previews: some View {
        CurvesView()
            .frame(width: 200, height: 200)
    }
}

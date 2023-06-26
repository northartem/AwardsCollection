//
//  PathView.swift
//  AwardsCollection
//
//  Created by Артём Латушкин on 26.06.2023.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        GeometryReader { geometry in
            let wight = geometry.size.width
            let hight = geometry.size.height
            let minSize = min(wight, hight)
            let nearLine = minSize * 0.1
            let farLine = minSize - nearLine
            let middle = minSize / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle, y: farLine))
            }
            .stroke(Color.white, style: .init(lineWidth: 3, dash: [minSize / nearLine]))
            
            Image(systemName: "car.fill")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(nearLine / 100)
                .offset(x: minSize / -7.25)
        }
        
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}

//
//  MainView.swift
//  AwardsCollection
//
//  Created by Артём Латушкин on 26.06.2023.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Hide award" : "Show award")
                Spacer()
                Image(systemName: "chevron.up.square")
                    .rotationEffect(.degrees(awardIsShowing ? 0 : -180))
                    .scaleEffect(awardIsShowing ? 2 : 1)
                
            }
            Spacer()
            if awardIsShowing {
                GradientRectangles()
                    .frame(width: 300, height: 300)
                    .transition(.customTransition)
            }
            Spacer()
        }
        .font(.headline)
        .padding()
        
    }
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var customTransition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.move(edge: .trailing)
            .combined(with: .scale)
        return .asymmetric(
            insertion: insertion,
            removal: removal
        )
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

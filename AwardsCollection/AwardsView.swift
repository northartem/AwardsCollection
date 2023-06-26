//
//  AwardsView.swift
//  AwardsCollection
//
//  Created by Артём Латушкин on 26.06.2023.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 200, height: 200)
                    PathView()
                        .frame(width: 200, height: 200)
                    CurvesView()
                        .frame(width: 200, height: 200)
                    
                }
            }
            .navigationTitle("Awards")
        }
    }
}

struct AwordsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}

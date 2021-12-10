//
//  TopContentView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/10.
//

import SwiftUI

struct TopContentView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                VStack(spacing: .zero) {
                    TopBarSliderView()
                    Text("Hello, World!")
                        .padding()
                    Spacer()
                }
                FloatingButtonView()
                    .offset(x: -16.0, y: -16.0)
            }
            .navigationBarTitleDisplayMode(.inline)
            .modifier(ToolBarViewModifier())
        }
    }
}

struct TopContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopContentView()
    }
}

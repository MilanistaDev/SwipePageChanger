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
            ZStack(alignment: .top) {
                VStack(spacing: .zero) {
                    TopBarSliderView()
                    PageContentView()
                }
                Image("img_top_bar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100.0)
                    .offset(x: .zero, y: -1.0)
                FloatingButtonView()
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

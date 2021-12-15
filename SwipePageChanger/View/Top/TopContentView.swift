//
//  TopContentView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/10.
//

import SwiftUI

struct TopContentView: View {

    @State private var selection = 0
    @State private var items: [StationInfo] = [topContent]

    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                VStack(spacing: .zero) {
                    TopBarSliderView()
                    PageContentView(selection: $selection,
                                    items: items)
                }
                Image("img_top_bar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100.0)
                    .offset(x: .zero, y: -1.0)
                FloatingButtonView(selection: $selection,
                                   items: $items)
            }
            .navigationBarTitleDisplayMode(.inline)
            .modifier(ToolBarViewModifier(selection: $selection,
                                          items: items))
        }
    }
}

struct TopContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopContentView()
    }
}

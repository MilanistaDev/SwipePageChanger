//
//  TopBarSliderView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/10.
//

import SwiftUI

struct TopBarSliderView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.gray.opacity(0.5))
                .frame(maxWidth: .infinity)
                .frame(height: 2.0)
            Image("img_top_bar")
                .resizable()
                .scaledToFit()
                .frame(width: 100.0)
                .offset(x: .zero, y: -1.0)
        }
    }
}

struct TopBarSliderView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarSliderView()
    }
}

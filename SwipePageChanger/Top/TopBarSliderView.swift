//
//  TopBarSliderView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/10.
//

import SwiftUI

struct TopBarSliderView: View {
    var body: some View {
        Rectangle()
            .fill(Color.gray.opacity(0.5))
            .frame(maxWidth: .infinity)
            .frame(height: 2.0)
    }
}

struct TopBarSliderView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarSliderView()
            .padding()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}

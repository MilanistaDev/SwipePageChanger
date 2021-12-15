//
//  StationNewsHeaderView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/16.
//

import SwiftUI

struct StationNewsHeaderView: View {

    let title: String

    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 8.0, height: 24.0)
            Text(title)
                .font(.headline)
            Spacer()
        }
        .padding(.vertical, 4.0)
    }
}


struct StationNewsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StationNewsHeaderView(title: topContent.staName + "のニュース")
            StationNewsHeaderView(title: marunouchi[16].staName + "駅のニュース")
            StationNewsHeaderView(title: "トリビア")
        }
        .previewLayout(PreviewLayout.sizeThatFits)
    }
}

//
//  StationNewsHeaderView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/16.
//

import SwiftUI

struct StationNewsHeaderView: View {

    let stationName: String

    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 8.0, height: 24.0)
            Text(stationName + (stationName == "丸ノ内線" ? "のニュース": "駅のニュース"))
                .font(.headline)
            Spacer()
        }
        .padding(.leading, 20.0)
        .padding(.vertical, 4.0)
    }
}


struct StationNewsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StationNewsHeaderView(stationName: topContent.staName)
            StationNewsHeaderView(stationName: marunouchi[16].staName)
        }
        .previewLayout(PreviewLayout.sizeThatFits)
    }
}

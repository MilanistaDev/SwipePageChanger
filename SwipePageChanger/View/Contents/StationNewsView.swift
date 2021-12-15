//
//  StationNewsView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/16.
//

import SwiftUI

struct StationNewsView: View {

    let stationInfo: StationInfo
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        LazyVGrid(columns: columns, spacing: 12.0) {
            Section(header: StationNewsHeaderView(title: stationInfo.staName + (stationInfo.staName == "丸ノ内線" ? "のニュース": "駅のニュース"))) {
                ForEach(sampleNews, id: \.self) { news in
                    StationNewsRowView(stationNewsInfo: news)
                }
            }
            Section(header: StationNewsHeaderView(title: "おしらせ")) {
                ForEach(sampleNews2, id: \.self) { news in
                    StationNewsRowView(stationNewsInfo: news)
                }
            }
        }
        .padding(.horizontal, 20.0)
        .padding(.bottom, 20.0)
    }
}

struct StationNewsView_Previews: PreviewProvider {
    static var previews: some View {
        StationNewsView(stationInfo: topContent)
    }
}

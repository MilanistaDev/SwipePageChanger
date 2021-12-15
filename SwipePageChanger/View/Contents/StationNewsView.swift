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
        LazyVGrid(columns: columns) {
            Section(header: StationNewsHeaderView(stationName: stationInfo.staName)) {
                ForEach(sampleNews, id: \.self) { news in
                    Text(news.title)
                }
            }
        }
    }
}

struct StationNewsView_Previews: PreviewProvider {
    static var previews: some View {
        StationNewsView(stationInfo: topContent)
    }
}

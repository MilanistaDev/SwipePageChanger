//
//  StationNewsRowView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/16.
//

import SwiftUI

struct StationNewsRowView: View {

    let stationNewsInfo: StationNewsInfo

    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Color(UIColor.tertiarySystemBackground)
                .aspectRatio(1.2, contentMode: .fill)
                .overlay(
                    Image(stationNewsInfo.image)
                        .resizable()
                        .scaledToFill()
                )
                .offset(x: .zero, y: -2.0)
                .padding(.bottom, 8.0)
            Group {
                Text(stationNewsInfo.title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.bottom, 8.0)
                Text(stationNewsInfo.description)
                    .font(.footnote)
                    .lineLimit(3)
                    .padding(.bottom, 16.0)
            }
            .padding(.horizontal, 8.0)
        }
        .background(Color(UIColor.tertiarySystemBackground))
        .cornerRadius(8.0)
        .shadow(color: .black.opacity(0.3), radius: 5.0, x: .zero, y: .zero)
    }
}

struct StationNewsRowView_Previews: PreviewProvider {
    static var previews: some View {
        StationNewsRowView(stationNewsInfo: sampleNews[0])
            .padding()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}

//
//  TargetStationCardView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/15.
//

import SwiftUI

struct TargetStationCardView: View {

    let stationInfo: StationInfo
    @State private var isShowModal = false

    var body: some View {
        VStack(spacing: 20.0) {
            HStack {
                Image(stationInfo.staNum)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40.0)
                Text(stationInfo.staName)
                    .font(.title)
                    .bold()
            }
            Button {
                isShowModal.toggle()
            } label: {
                Text("Webページ")
                    .font(.subheadline)
                    .bold()
            }

        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16.0)
        .background(Color(UIColor.tertiarySystemBackground))
        .cornerRadius(16.0)
        .shadow(color: .black.opacity(0.2), radius: 5.0, x: .zero, y: .zero)
        .fullScreenCover(isPresented: $isShowModal) {
            SafariView(url: URL(string: stationInfo.url)!)
                .ignoresSafeArea()
        }
    }
}

struct TargetStationCardView_Previews: PreviewProvider {
    static var previews: some View {
        TargetStationCardView(stationInfo: topContent)
            .padding()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}

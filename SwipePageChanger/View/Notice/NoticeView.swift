//
//  NoticeView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/17.
//

import SwiftUI

struct NoticeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                NoticeLinkCardView()
                    .padding(.bottom, 16.0)
                Text("使い方")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 8.0)
                ForEach(0..<howToUse.count) { index in
                    Text(howToUse[index].title)
                        .font(.headline)
                        .padding(.bottom, 8.0)
                    Text(howToUse[index].desc)
                        .font(.footnote)
                        .padding(.bottom, 16.0)
                }
            }
            .padding(.horizontal, 20.0)
            .padding(.top, 20.0)
        }
        .navigationTitle("お知らせ")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NoticeView_Previews: PreviewProvider {
    static var previews: some View {
        NoticeView()
    }
}

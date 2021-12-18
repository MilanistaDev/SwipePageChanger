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
            VStack {
                NoticeLinkCardView()
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

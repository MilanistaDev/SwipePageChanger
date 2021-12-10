//
//  PageContentView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/10.
//

import SwiftUI

struct PageContentView: View {

    @State private var selection = 0
    @State private var items = ["Top", "hoge"]

    var body: some View {
        TabView(selection: $selection) {
            ForEach(0..<items.count) { index in
                Text(items.reversed()[index])
                    .tag(index)
            }
        }
        .background(Color.gray.opacity(0.1))
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .onAppear {
            selection = items.count - 1
        }
    }
}

struct PageContentView_Previews: PreviewProvider {
    static var previews: some View {
        PageContentView()
    }
}

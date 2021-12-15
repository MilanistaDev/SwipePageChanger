//
//  PageContentView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/10.
//

import SwiftUI

struct PageContentView: View {

    @Binding var selection: Int
    let items: [StationInfo]

    var body: some View {
        TabView(selection: $selection) {
            ForEach(items.indices, id: \.self) { index in
                Text(items.reversed()[index].staName)
                    .tag(index)
            }
        }
        .background(Color.gray.opacity(0.1))
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .animation(.linear(duration: 0.3))
        .onAppear {
            selection = items.count - 1
        }
    }
}

struct PageContentView_Previews: PreviewProvider {
    static var previews: some View {
        PageContentView(selection: .constant(0),
                        items: [topContent])
    }
}

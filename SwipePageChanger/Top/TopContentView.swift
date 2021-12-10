//
//  TopContentView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/10.
//

import SwiftUI

struct TopContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello, World!")
                .modifier(ToolBarViewModifier())
        }
    }
}

struct TopContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopContentView()
    }
}

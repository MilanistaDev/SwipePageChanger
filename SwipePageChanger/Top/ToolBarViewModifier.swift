//
//  ToolBarViewModifier.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/10.
//

import SwiftUI

struct ToolBarViewModifier: ViewModifier {

    @Binding var selection: Int
    let items: [String]

    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                    } label: {
                        Image(systemName: "line.horizontal.3.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width:24.0, height: 32.0)
                            .foregroundColor(.gray)
                    }
                }
                ToolbarItem(placement: .principal) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: .zero) {
                            ForEach(items.reversed().indices, id: \.self) { index in
                                Button {
                                    selection = index
                                } label: {
                                    Text(items.reversed()[index])
                                        .font(.subheadline)
                                        .fontWeight(selection == index ? .semibold: .regular)
                                        .foregroundColor(selection == index ? .primary: .gray)
                                }
                                .frame(width: 100.0, height: 44.0)
                            }
                        }
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                    } label: {
                        Image(systemName: "bell.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24.0, height: 24.0)
                            .foregroundColor(.gray)
                    }
                }
            }
    }
}

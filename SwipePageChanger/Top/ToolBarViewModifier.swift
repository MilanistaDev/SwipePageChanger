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
    @State var proxy: ScrollViewProxy?

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
                    ScrollViewReader { scrollProxy in
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: .zero) {
                                // 16 or 20pt * 2 (diretionalLayoutMargin.trailing and leading values)
                                Spacer()
                                    .frame(width: (UIScreen.main.bounds.width - 76.0 - 40.0 - 100.0) / 2)
                                ForEach(items.reversed().indices, id: \.self) { index in
                                    Button {
                                        selection = index
                                        withAnimation {
                                            scrollProxy.scrollTo(selection, anchor: .center)
                                        }
                                    } label: {
                                        if index == items.count - 1 {
                                            Image("02_Marunouchi")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30.0, height: 30.0)
                                        } else {
                                            Text(items.reversed()[index])
                                                .font(.subheadline)
                                                .fontWeight(selection == index ? .semibold: .regular)
                                                .foregroundColor(selection == index ? .primary: .gray)
                                                .id(index)
                                        }
                                    }
                                    .frame(width: 100.0, height: 44.0)
                                }
                                Spacer()
                                    .frame(width: (UIScreen.main.bounds.width - 116.0 - 100.0) / 2)
                            }
                            .onAppear {
                                self.proxy = scrollProxy
                            }
                            .onChange(of: selection) { _ in
                                withAnimation {
                                    self.proxy?.scrollTo(selection, anchor: .center)
                                }
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

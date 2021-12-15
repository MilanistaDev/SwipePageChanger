//
//  ToolBarViewModifier.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/10.
//

import SwiftUI

struct ToolBarViewModifier: ViewModifier {

    @Binding var selection: Int
    let items: [StationInfo]
    @State var proxy: ScrollViewProxy?
    private let tabButtonSize: CGSize = CGSize(width: 100.0, height: 44.0)

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
                    GeometryReader { geometryProxy in
                        ZStack {
                            ScrollViewReader { scrollProxy in
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: .zero) {
                                        Spacer()
                                            .frame(width: spacerWidth(geometryProxy.frame(in: .global).origin.x))
                                        ForEach(items.reversed().indices, id: \.self) { index in
                                            Button {
                                                selection = index
                                                withAnimation {
                                                    scrollProxy.scrollTo(selection, anchor: .center)
                                                }
                                            } label: {
                                                if index == items.count - 1 {
                                                    Image(items.reversed()[index].staNum)
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 30.0, height: 30.0)
                                                } else {
                                                    Text(items.reversed()[index].staName)
                                                        .font(.subheadline)
                                                        .fontWeight(selection == index ? .semibold: .regular)
                                                        .foregroundColor(selection == index ? .primary: .gray)
                                                        .id(index)
                                                }
                                            }
                                            .frame(width: 100.0, height: 44.0)
                                        }
                                        Spacer()
                                            .frame(width: spacerWidth(geometryProxy.frame(in: .global).origin.x))
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
                            HStack {
                                LinearGradient(gradient: Gradient(colors: [.gradation, .gradation.opacity(0.1)]),
                                               startPoint: .leading, endPoint: .trailing)
                                    .frame(width: 8.0, height: 44.0)
                                Spacer()
                                LinearGradient(gradient: Gradient(colors: [.gradation.opacity(0.1), .gradation]),
                                               startPoint: .leading, endPoint: .trailing)
                                    .frame(width: 8.0, height: 44.0)
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

    private func spacerWidth(_ viewOriginX: CGFloat) -> CGFloat {
        return (UIScreen.main.bounds.width - (viewOriginX * 2) - tabButtonSize.width) / 2
    }
}

//
//  FloatingButtonView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/10.
//

import SwiftUI

struct FloatingButtonView: View {

    @Binding var selection: Int
    @Binding var items: [String]
    @State private var counter = 0

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button {
                    addNewValue()
                } label: {
                    Image(systemName: "rectangle.stack.badge.plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24.0, height: 24.0)
                        .foregroundColor(.white)
                        .padding(.all, 12.0)
                        .background(Color.red)
                        .cornerRadius(24.0)
                        .shadow(color: .black.opacity(0.3),
                                radius: 5.0,
                                x: 1.0, y: 1.0)
                }
            }
            .padding(.all, 16.0)
        }
    }

    private func addNewValue() {
        guard counter < marunouchi.count else { return }
        items.append(marunouchi[counter])
        counter += 1
        selection = items.count - 1
    }
}

struct FloatingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButtonView(selection: .constant(0),
                           items: .constant(["Top"]))
            .padding()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}

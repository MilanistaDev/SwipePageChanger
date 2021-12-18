//
//  NoticeLinkCardView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/18.
//

import SwiftUI

struct NoticeLinkCardView: View {

    @State private var isShowModal = false

    var body: some View {
        VStack {
            Text("SwipePageChanger")
                .font(.title2)
                .foregroundColor(.blue)
            HStack {
                Image("icn_github")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40.0, height: 40.0)
                Text("@MilanistaDev")
                    .font(.headline)
            }

        }
        .padding(.vertical, 24.0)
        .frame(maxWidth: .infinity)
        .background(Color(UIColor.tertiarySystemBackground))
        .cornerRadius(16.0)
        .shadow(color: .black.opacity(0.3), radius: 5.0, x: .zero, y: .zero)
        .onTapGesture {
            isShowModal.toggle()
        }
        .fullScreenCover(isPresented: $isShowModal) {
            SafariView(url: URL(string: "https://github.com/MilanistaDev/SwipePageChanger")!)
                .ignoresSafeArea()
        }
    }
}

struct NoticeLinkCardView_Previews: PreviewProvider {
    static var previews: some View {
        NoticeLinkCardView()
    }
}

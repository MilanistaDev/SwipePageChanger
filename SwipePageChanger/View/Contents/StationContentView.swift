//
//  StationContentView.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/15.
//

import SwiftUI

struct StationContentView: View {

    let stationInfo: StationInfo

    var body: some View {
        Text(stationInfo.staName)
    }
}

struct StationContentView_Previews: PreviewProvider {
    static var previews: some View {
        StationContentView(stationInfo: marunouchi[0])
    }
}

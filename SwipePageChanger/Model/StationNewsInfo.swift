//
//  StationNewsInfo.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/16.
//

import Foundation

struct StationNewsInfo: Hashable {
    var image: String
    var title: String
    var description: String
    var url: String
}

let sampleNews: [StationNewsInfo] = [
    StationNewsInfo(image: "img_news_01", title: "2000系爆誕",
                    description: "02系に変わり新車両の2000系が登場します。さらに安心安全性が増した車両には電源スペースも。",
                    url: "https://www.tokyometro.jp/news/2019/195311.html"),
    StationNewsInfo(image: "img_news_02", title: "サインカーブ！",
                    description: "2000系も伝統のサインカーブの存在が光ります。ホームドアがあっても見えるのがいいですね。",
                    url: "https://www.tokyometro.jp/news/images_h/metroNews20180326_40.pdf"),
    StationNewsInfo(image: "img_news_03", title: "サードレール",
                    description: "丸ノ内線は銀座線と同じくサードレール方式(第三軌条方式)。トンネルが小さくてすみました。",
                    url: "https://google.com/search/?q=%E3%82%B5%E3%83%BC%E3%83%89%E3%83%AC%E3%83%BC%E3%83%AB"),
    StationNewsInfo(image: "img_news_00", title: "茗荷谷，なんで？",
                    description: "各駅は発車メロディに変わってきました。茗荷谷はまだ営団ブザーなのです。住宅街が近いから？",
                    url: "https://google.com/search/?q=%E8%8C%97%E8%8D%B7%E8%B0%B7+%E3%83%96%E3%82%B6%E3%83%BC")
]

let sampleNews2: [StationNewsInfo] = [
    StationNewsInfo(image: "img_news_01", title: "【2000系爆誕】",
                    description: "02系に変わり新車両の2000系が登場します。さらに安心安全性が増した車両には電源スペースも。",
                    url: "https://www.tokyometro.jp/news/2019/195311.html"),
    StationNewsInfo(image: "img_news_02", title: "【サインカーブ！】",
                    description: "2000系も伝統のサインカーブの存在が光ります。ホームドアがあっても見えるのがいいですね。",
                    url: "https://www.tokyometro.jp/news/images_h/metroNews20180326_40.pdf"),
    StationNewsInfo(image: "img_news_03", title: "【サードレール】",
                    description: "丸ノ内線は銀座線と同じくサードレール方式(第三軌条方式)。トンネルが小さくてすみました。",
                    url: "https://google.com/search/?q=%E3%82%B5%E3%83%BC%E3%83%89%E3%83%AC%E3%83%BC%E3%83%AB"),
    StationNewsInfo(image: "img_news_00", title: "【茗荷谷，なんで？】",
                    description: "各駅は発車メロディに変わってきました。茗荷谷はまだ営団ブザーなのです。住宅街が近いから？",
                    url: "https://google.com/search/?q=%E8%8C%97%E8%8D%B7%E8%B0%B7+%E3%83%96%E3%82%B6%E3%83%BC")
]

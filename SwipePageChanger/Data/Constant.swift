//
//  Constant.swift
//  SwipePageChanger
//
//  Created by Takuya Aso on 2021/12/11.
//

import Foundation

let marunouchi: [StationInfo] = [
    StationInfo(staNum: "M01", staName: "荻窪", url: "https://www.tokyometro.jp/station/ogikubo/index.html"),
    StationInfo(staNum: "M02", staName: "南阿佐ケ谷", url: "https://www.tokyometro.jp/station/minami-asagaya/index.html"),
    StationInfo(staNum: "M03", staName: "新高円寺", url: "https://www.tokyometro.jp/station/shin-koenji/index.html"),
    StationInfo(staNum: "M04", staName: "東高円寺", url: "https://www.tokyometro.jp/station/higashi-koenji/index.html"),
    StationInfo(staNum: "M05", staName: "新中野", url: "https://www.tokyometro.jp/station/shin-nakano/index.html"),
    StationInfo(staNum: "M06", staName: "中野坂上", url: "https://www.tokyometro.jp/station/nakano-sakaue/index.html"),
    StationInfo(staNum: "M07", staName: "西新宿", url: "https://www.tokyometro.jp/station/nishi-shinjuku/index.html"),
    StationInfo(staNum: "M08", staName: "新宿", url: "https://www.tokyometro.jp/station/shinjuku/index.html"),
    StationInfo(staNum: "M09", staName: "新宿三丁目", url: "https://www.tokyometro.jp/station/shinjuku-sanchome/index.html"),
    StationInfo(staNum: "M10", staName: "新宿御苑前", url: "https://www.tokyometro.jp/station/shinjuku-gyoemmae/index.html"),
    StationInfo(staNum: "M11", staName: "四谷三丁目", url: "https://www.tokyometro.jp/station/yotsuya-sanchome/index.html"),
    StationInfo(staNum: "M12", staName: "四ツ谷", url: "https://www.tokyometro.jp/station/yotsuya/index.html"),
    StationInfo(staNum: "M13", staName: "赤坂見附", url: "https://www.tokyometro.jp/station/akasaka-mitsuke/index.html"),
    StationInfo(staNum: "M14", staName: "国会議事堂前", url: "https://www.tokyometro.jp/station/kokkai-gijidomae/index.html"),
    StationInfo(staNum: "M15", staName: "霞ケ関", url: "https://www.tokyometro.jp/station/kasumigaseki/index.html"),
    StationInfo(staNum: "M16", staName: "銀座", url: "https://www.tokyometro.jp/station/ginza/index.html"),
    StationInfo(staNum: "M17", staName: "東京", url: "https://www.tokyometro.jp/station/tokyo/index.html"),
    StationInfo(staNum: "M18", staName: "大手町", url: "https://www.tokyometro.jp/station/otemachi/index.html"),
    StationInfo(staNum: "M19", staName: "淡路町", url: "https://www.tokyometro.jp/station/awajicho/index.html"),
    StationInfo(staNum: "M20", staName: "御茶ノ水", url: "https://www.tokyometro.jp/station/ochanomizu/index.html"),
    StationInfo(staNum: "M21", staName: "本郷三丁目", url: "https://www.tokyometro.jp/station/hongo-sanchome/index.html"),
    StationInfo(staNum: "M22", staName: "後楽園", url: "https://www.tokyometro.jp/station/korakuen/index.html"),
    StationInfo(staNum: "M23", staName: "茗荷谷", url: "https://www.tokyometro.jp/station/myogadani/index.html"),
    StationInfo(staNum: "M24", staName: "新大塚", url: "https://www.tokyometro.jp/station/shin-otsuka/index.html"),
    StationInfo(staNum: "M25", staName: "池袋", url: "https://www.tokyometro.jp/station/ikebukuro/index.html"),
    StationInfo(staNum: "Mb05", staName: "中野新橋", url: "https://www.tokyometro.jp/station/nakano-shimbashi/index.html"),
    StationInfo(staNum: "Mb04", staName: "中野富士見町", url: "https://www.tokyometro.jp/station/nakano-fujimicho/index.html"),
    StationInfo(staNum: "Mb03", staName: "方南町", url: "https://www.tokyometro.jp/station/honancho/index.html")
]

let howToUse: [(title: String, desc: String)] = [
    ("1. 駅を追加", "最初は丸ノ内線タブしかありません。画面下のボタンを押すと荻窪からどんどん追加されていきます。方南町まで追加したらボタンを押しても反応しなくなります。実際はお気に入りの駅などを選択できるようにして初期表示時に追加されていることが望ましいです。"),
    ("2. コンテンツ部分をページング", "コンテンツ部分をページングすると連動して駅のタブも中央に移動します。"),
    ("3. タブ部分を操作", "タブ部分もスクロール可能になっています。確認したい駅をタップすると連動するコンテンツ画面がアニメーションありで表示されます。この際タップされた駅のタブは中央に移動します。"),
    ("4. コンテンツはダミー", "各タブのページに表示されるコンテンツは今回は共通です。各タブ用のコンテンツ内容を返すAPIを用意して取得したデータを展開するのが通常の運用かと思われます。")
]

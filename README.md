# SwipePageChanger

This app is a sample app that links the tab displayed  
in the Navigation Bar and the paging of the content.  
The Tab part is scrollable, and the corresponding Tab is  
displayed with animation in the center of the screen by paging.  
In SwiftUI, it's relatively easy to implement  
because we can easily access the NavigationBar part.

このアプリは NavigationBar に表示されたタブと  
コンテンツのページングが連動するサンプルアプリです。  
Tab 部分はスクロール可能になっていて，ページングにより  
対応する Tab が画面中央にアニメーションありで表示されます。  
SwiftUI では NavigationBar 部分に容易にアクセスできるため比較的実装しやすいです。

## Sample GIF and Images

The theme of this app is the Tokyo Metro Marunouchi Line of the Tokyo subway.  
Since it is a sample application, the content is static and common to all stations.

|Add New Page & Paging|Select tab|
|:--:|:--:|
|![SwipePageChanger_1](https://user-images.githubusercontent.com/8732417/146650058-c5863ff5-7503-4641-905c-8c4cef51165c.gif)|![SwipePageChanger_2](https://user-images.githubusercontent.com/8732417/146650064-da7cfcb7-4c1d-4834-8a24-c8e670f28178.gif)|

|Light|Dark|
|:--:|:--:|
|![img_light](https://user-images.githubusercontent.com/8732417/146650237-8f7cca7c-8d10-4c63-a323-549981512a8f.PNG)|![img_dark](https://user-images.githubusercontent.com/8732417/146650233-47055d2a-8f5f-4d3c-98cb-016a8bfde4cc.PNG)|

## Environment

* Xcode 13
* iOS 14 and later
* SwiftUI(2+)

## Point of implementation

* `toolBar` modifier and `ToolbarItem`
* `ScrollViewReader`
* `TabView`'s `PageTabViewStyle`
* `selection` (Status of selected item)

## Article

Qiita Advent Calendar 2021 "iOS" Day 20.  
[https://qiita.com/MilanistaDev/items/09809b38dc8b23efa9ac](https://qiita.com/MilanistaDev/items/09809b38dc8b23efa9ac)


## Contact

Please feel free to contact us if you find a bug or have any feedback.  
Suggestions for adding functions and code corrections are also welcome.

```swift
let name = "Takuya Aso" 
let email = "milanista224" + "@" + "icloud.com"
let profession = "iOS Engineer"
let location = "Tokyo"
```

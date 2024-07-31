@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    //根组件
    Stack() {

      //基本页
      Column() {
        Image($rawfile('title.png'))
          .width(280)
          .margin({top:30})
        Text('惊喜大奖等你来拿')
          .margin({top:20})
          .fontColor(Color.White)
      }
      .backgroundImage($rawfile('background_mobile.png'))
      .height('100%')
      .width('100%')
      .zIndex(1)
      .padding(10)

      //单抽获奖页
      Column() {

      }
      .height('100%')
      .width('100%')
      .zIndex(0)

    }
    .linearGradient({
      direction: GradientDirection.Bottom,
      colors: [['#ff042ce5', 0], ['#ff6b96f7', 0.5], ['#ff13a5f3', 1]]
    })
    .height('100%')
    .width('100%')
  }
}
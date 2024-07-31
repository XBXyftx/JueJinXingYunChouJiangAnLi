@Entry
@Component
struct Index {
  @State shengYuKuangShi:number=9999999;

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
          .fontSize(18)
          .fontColor(Color.White)

        //剩余矿石和抽奖规则
        Row(){
          //剩余矿石
          Row({space:5}){
            Image($rawfile('image.png'))
              .width(30)
            Text(this.shengYuKuangShi.toString())
              .fontColor(Color.White)
              .fontSize(18)
          }
          .backgroundColor('#54d0e1fe')
          .padding({top:2,bottom:2,left:10,right:10})
          .borderRadius(100)
        }
        .margin({top:30})
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({top:10,bottom:10})
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
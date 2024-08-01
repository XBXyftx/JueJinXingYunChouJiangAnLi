@Entry
@Component
struct Index {
  @State shengYuKuangShi: number = 9999999;

  build() {
    //根组件
    Stack() {

      //基本页
      Column() {
        Image($rawfile('title.png'))
          .width(280)
          .margin({ top: 30 })
        Text('惊喜大奖等你来拿')
          .margin({ top: 20 })
          .fontSize(18)
          .fontColor(Color.White)

        //剩余矿石和抽奖规则
        Row() {
          //剩余矿石
          Row({ space: 5 }) {
            Image($rawfile('image.png'))
              .width(30)
            Text(this.shengYuKuangShi.toString())
              .fontColor(Color.White)
              .fontSize(18)
          }
          .backgroundColor('#54d0e1fe')
          .padding({
            top: 2,
            bottom: 2,
            left: 10,
            right: 10
          })
          .borderRadius(100)

          //抽奖规则
          Row({ space: 5 }) {
            Image($rawfile('query_icon.svg'))
              .width(20)
            Text('抽奖规则')
              .fontColor(Color.White)
          }

        }
        .margin({ top: 30, bottom: 20 })
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ top: 10, bottom: 10 })

        //抽奖区最外层
        Column() {
          Column() {
            //四角圆点
            Row() {
            } //左上
            .width(15)
            .height(15)
            .borderRadius(20)
            .backgroundColor(Color.Orange)
            .position({ x: 5, y: 5 })

            Row() {
            } //右上
            .width(15)
            .height(15)
            .borderRadius(20)
            .backgroundColor(Color.Orange)
            .position({ x: 280, y: 5 })

            Row() {
            } //左下
            .width(15)
            .height(15)
            .borderRadius(20)
            .backgroundColor(Color.Orange)
            .position({ x: 5, y: 280 })

            Row() {
            } //右下
            .width(15)
            .height(15)
            .borderRadius(20)
            .backgroundColor(Color.Orange)
            .position({ x: 280, y: 280 })


            //四中白点
            Row() {
            } //上
            .width(15)
            .height(15)
            .borderRadius(20)
            .backgroundColor(Color.White)
            .position({ x: '50%', y: 5 })
            .translate({ x: '-50%' })

            Row() {
            } //下
            .width(15)
            .height(15)
            .borderRadius(20)
            .backgroundColor(Color.White)
            .position({ x: '50%', y: 280 })
            .translate({ x: '-50%' })

            Row() {
            } //右
            .width(15)
            .height(15)
            .borderRadius(20)
            .backgroundColor(Color.White)
            .position({ x: 280, y: '50%' })
            .translate({ y: '-50%' })

            Row() {
            } //左
            .width(15)
            .height(15)
            .borderRadius(20)
            .backgroundColor(Color.White)
            .position({ x: 5, y: '50%' })
            .translate({ y: '-50%' })


            //4半白圈
            Row() {
            } //左上
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: 5, y: '25%' })
            .translate({y:'-50%'})
            Row() {
            } //左下
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: 5, y: '75%' })
            .translate({y:'-50%'})
            Row() {
            } //上左
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: '25%', y: 5 })
            .translate({x:'-50%'})
            Row() {
            } //上右
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: '75%', y: 5 })
            .translate({x:'-50%'})
            Row() {
            } //右上
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: 280, y: '25%' })
            .translate({y:'-50%'})
            Row() {
            } //上右
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: 280, y: '75%' })
            .translate({y:'-50%'})
            Row() {
            } //下左
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: '25%', y: 280 })
            .translate({x:'-50%'})
            Row() {
            } //下右
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: '75%', y: 280 })
            .translate({x:'-50%'})

          }
          .justifyContent(FlexAlign.Center)
          .alignItems(HorizontalAlign.Center)
          .width(300)
          .height(300)

        }
        .width(300)
        .height(380)
        .backgroundColor('#ffffd4a0')
        .borderRadius(10)
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
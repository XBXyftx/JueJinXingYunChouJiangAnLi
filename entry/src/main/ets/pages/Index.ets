interface JiangPinJi {
  img: Resource
  text: string
}

@Entry
@Component
struct Index {
  @State shengYuKuangShi: number = 9999999;
  @State jiangPinJi: JiangPinJi[] = [
    { img: $rawfile('image0.png'), text: '手机支架' },
    { img: $rawfile('image1.png'), text: '曼秀雷敦薄荷润唇膏' },
    { img: $rawfile('image2.png'), text: '随机盲盒' },
    { img: $rawfile('image3.png'), text: '睡眠日小盒子' },
    { img: $rawfile('image4.png'), text: '虎虎生威眼罩' },
    { img: $rawfile('image5.png'), text: '头戴式耳机' },
    { img: $rawfile('image6.png'), text: 'Pico Neo3' },
    { img: $rawfile('image7.png'), text: 'AirPros' },
  ]
  @State value:number=3000

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
            .translate({ y: '-50%' })

            Row() {
            } //左下
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: 5, y: '75%' })
            .translate({ y: '-50%' })

            Row() {
            } //上左
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: '25%', y: 5 })
            .translate({ x: '-50%' })

            Row() {
            } //上右
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: '75%', y: 5 })
            .translate({ x: '-50%' })

            Row() {
            } //右上
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: 280, y: '25%' })
            .translate({ y: '-50%' })

            Row() {
            } //上右
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: 280, y: '75%' })
            .translate({ y: '-50%' })

            Row() {
            } //下左
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: '25%', y: 280 })
            .translate({ x: '-50%' })

            Row() {
            } //下右
            .width(15)
            .height(15)
            .borderRadius(20)
            .border({ width: 1, color: Color.White })
            .position({ x: '75%', y: 280 })
            .translate({ x: '-50%' })


            //中央奖品区底色框
            Flex({ wrap: FlexWrap.Wrap }) {
              Column({ space: 10 }) {
                Image($rawfile('image.png'))
                  .width(35)
                Text('随机矿石')
                  .fontColor(Color.Orange)
                  .fontSize(12)
              }
              .width(70)
              .height(70)
              .justifyContent(FlexAlign.Center)
              .margin(5)
              .backgroundColor(Color.White)

              ForEach(this.jiangPinJi, (item: JiangPinJi, i) => {
                Column({ space: 10 }) {
                  Image(item.img)
                    .width(35)
                  Text(item.text)
                    .fontColor(Color.Orange)
                    .fontSize(12)
                    .width(65)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                    .maxLines(1)
                    .textAlign(TextAlign.Center)
                }
                .width(70)
                .height(70)
                .justifyContent(FlexAlign.Center)
                .margin(5)
                .backgroundColor(Color.White)
              })

            }
            .padding(5)
            .width(250)
            .height(250)
            .backgroundColor(Color.Orange)

          }
          .justifyContent(FlexAlign.Center)
          .alignItems(HorizontalAlign.Center)
          .width(300)
          .height(300)


          //按钮区域
          Row() {
            //单抽按钮
            Column({ space: 5 }) {
              Text('单抽')
                .fontSize(14)
                .fontColor(Color.White)
              Row({ space: 10 }) {
                Image($rawfile('image.png'))
                  .width(14)
                Text('200')
                  .fontSize(14)
                  .fontColor(Color.White)
              }
            }
            .padding(5)
            .width(110)
            .height(50)
            .linearGradient({
              direction: GradientDirection.Bottom,
              colors: [['#ffffb06c', 0], ['#fff36205', 1]]
            })
            .borderRadius(10)
            .shadow({
              color: '#ffa42d00',
              radius: 5,
              offsetY: 20
            })
            .onClick(() => {
              if (this.shengYuKuangShi>=200) {
                this.shengYuKuangShi -= 200
                // this.value+=200
              }

            })

            //十连抽按钮
            Column({ space: 5 }) {
              Text('十连抽')
                .fontSize(14)
                .fontColor(Color.White)
              Row({ space: 10 }) {
                Image($rawfile('image.png'))
                  .width(14)
                Text('2000')
                  .fontSize(14)
                  .fontColor(Color.White)
              }
            }
            .padding(5)
            .width(110)
            .height(50)
            .linearGradient({
              direction: GradientDirection.Bottom,
              colors: [['#ffffb06c', 0], ['#fff36205', 1]]
            })
            .borderRadius(10)
            .shadow({
              color: '#ffa42d00',
              radius: 5,
              offsetY: 20
            })
            .onClick(() => {
              if (this.shengYuKuangShi>=2000) {
                this.shengYuKuangShi -= 2000
                // this.value+=2000
              }
            })

          }
          .alignItems(VerticalAlign.Center)
          .padding(30)
          .justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
          .layoutWeight(1)

        }
        .width(300)
        .height(380)
        .backgroundColor('#ffffd4a0')
        .borderRadius(10)


        //连接区
        Row({ space: 80 }) {
          Image($rawfile('bridge_icon.svg'))
            .width(30)
          Image($rawfile('bridge_icon.svg'))
            .width(30)
        }
        //进度条区域
        Column() {
          Row({space:10}){
            Progress({ value: this.value,total:6000, type: ProgressType.Linear })
              .width(150)
              .height(20)
              .style({strokeWidth:15,enableSmoothEffect:true})

            Text(){
              Span(this.value.toString())
                .fontColor('#ffee7503')
              Span('/6000')
            }
          }
          .padding(10)

        }
        .padding(10)
        .width(300)
        .backgroundColor('#ffffd4a0')

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
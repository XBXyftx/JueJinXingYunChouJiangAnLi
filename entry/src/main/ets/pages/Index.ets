interface JiangPinJi {
  img: Resource
  text: string
}

@Entry
@Component
struct Index {
  @State shengYuKuangShi: number = 99999;//剩余矿石数
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
  @State value: number = 3000//幸运值进度
  @State random: number = 0//随机矿石数
  @State danChouYe: number[] = [0, 0]//单抽和十连抽中奖页
  @State xingYunTiShiYe: number[] = [0, 0]//幸运值满的提示页
  @State zhongJiangYe: number[] = [0, 0]//幸运值满后的中奖页
  @State zhongJiangRandom:number=0//幸运值满后的随机奖品索引
  @State kuangShiBuZuYe:number[]=[0,0]//矿石不足提示页
  @State chouJiangGuiZe:number[]=[0,0]//抽奖规则

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
          .onClick(()=>{
            this.chouJiangGuiZe=[2,1]
          })

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
              if (this.value === 6000) {
                this.value = 0
                this.zhongJiangYe = [2, 1]
                this.zhongJiangRandom=Math.floor(Math.random() * 9)
              } else {
                if (this.shengYuKuangShi >= 200) {
                  this.shengYuKuangShi -= 200
                  if(this.value+100>=6000){
                    this.value=6000
                  }else {
                    this.value += 100
                  }
                  this.random = Math.floor(Math.random() * 100)
                  this.danChouYe = [2, 1]
                }else {
                  this.kuangShiBuZuYe=[2,1]
                }
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
              if (this.value >= 6000) {
                this.value = 0
                this.zhongJiangYe = [2, 1]
                this.zhongJiangRandom=Math.floor(Math.random() * 9)
              } else {
                if (this.shengYuKuangShi >= 2000) {
                  this.shengYuKuangShi -= 2000
                  if(this.value+500>=6000){
                    this.value=6000
                  }else {
                    this.value += 500
                  }
                  this.random = Math.floor(Math.random() * 1000)
                  this.danChouYe = [2, 1]

                }else {
                  this.kuangShiBuZuYe=[2,1]
                }
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
          Row({ space: 10 }) {
            Progress({ value: this.value, total: 6000, type: ProgressType.Linear })
              .width(150)
              .height(20)
              .style({ strokeWidth: 15, enableSmoothEffect: true })

            Text() {
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


      //单抽和十连抽获奖页
      Column() {
        Column({ space: 10 }) {
          Text(`恭喜抽中${this.random}矿石`)
            .fontSize(20)
            .fontColor('#fff7770e')
            .fontWeight(700)
            .margin(30)
          Image($rawfile('image.png'))
            .width(80)
          Text('点击收下奖励本次矿石累加进矿石数中')
            .fontSize(12)
            .margin(15)
          Button('收下奖励')
            .width(200)
            .onClick(() => {
              if (this.value >= 6000) {
                this.xingYunTiShiYe = [2, 1]
              }
              this.shengYuKuangShi += this.random
              this.danChouYe = [0, 0]
            })
        }
        .backgroundColor(Color.White)
        .width(300)
        .height(300)

        Image($rawfile('close.svg'))
          .width(40)
          .margin(20)
          .onClick(() => {
            if (this.value >= 6000) {
              this.xingYunTiShiYe = [2, 1]
            }
            this.danChouYe = [0, 0]

          })

      }
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
      .height('100%')
      .width('100%')
      .backgroundColor('rgba(0,0,0,0.8)')
      .zIndex(this.danChouYe[0])
      .opacity(this.danChouYe[1])


      //幸运值满提示页
      Column() {
        Column() {
          Text('幸运值已经满6000,下一次抽奖必定获得转盘内奖品')
            .fontSize(20)
            .width(250)
        }
        .padding(20)
        .backgroundColor(Color.White)
        .borderRadius(20)
      }
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
      .height('100%')
      .width('100%')
      .backgroundColor('rgba(0,0,0,0.4)')
      .zIndex(this.xingYunTiShiYe[0])
      .opacity(this.xingYunTiShiYe[1])
      .onClick(() => {
        this.xingYunTiShiYe=[0,0]
      })


      //矿石不足提示页
      Column() {
        Column() {
          Text('您的矿石不足无法抽奖')
            .fontSize(20)
            .width(250)
            .textAlign(TextAlign.Center)
        }
        .padding(20)
        .backgroundColor(Color.White)
        .borderRadius(20)
      }
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
      .height('100%')
      .width('100%')
      .backgroundColor('rgba(0,0,0,0.4)')
      .zIndex(this.kuangShiBuZuYe[0])
      .opacity(this.kuangShiBuZuYe[1])
      .onClick(() => {
        this.kuangShiBuZuYe=[0,0]
      })




      //抽奖规则
      Column() {
        Column({space:10}) {
          Text('抽奖规则')
            .fontWeight(700)
            .margin({bottom:20})
            .fontSize(16)
          Text('参与本次活动前，请您详细阅读活动规则及相关条款，凡参与本次活动，则视为您已阅读理解并同意活动规则及注意事项全部内容。')
            .fontSize(14)
            .fontWeight(500)
          Text('一、抽奖说明')
            .fontWeight(500)
          Text('1、同一用户每人每天首次访问稀土掘金，完成每日签到后，即可免费获得一次抽奖机会。')
            .fontSize(13)
            .fontWeight(300)
          Text('2、免费抽奖次数用尽后，每抽奖一次需要消耗200矿石；当您账户中的矿石数小于200时，将无法参与抽奖，当您账户矿石数量小于2000时将无法使用10连抽功能。')
            .fontSize(13)
            .fontWeight(300)
          Text('3、幸运值累计到6000时，必定抽奖转盘中的实物奖励，任何一次抽中实物奖励后，幸运值会重新累计。')
            .fontSize(13)
            .fontWeight(300)
            .margin({bottom:20})
        }
        .width(300)
        .padding(10)
        .backgroundColor(Color.White)
        .borderRadius(20)
        .alignItems(HorizontalAlign.Start)
      }
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
      .height('100%')
      .width('100%')
      .backgroundColor('rgba(0,0,0,0.2)')
      .zIndex(this.chouJiangGuiZe[0])
      .opacity(this.chouJiangGuiZe[1])
      .onClick(() => {
        this.chouJiangGuiZe=[0,0]
      })



      //满幸运中奖页
      Column() {
        Column({space:10}) {
          Text(`恭喜抽中${this.jiangPinJi[this.zhongJiangRandom].text}`)
            .width(200)
            .textAlign(TextAlign.Center)
            .fontSize(20)
          Image(this.jiangPinJi[this.zhongJiangRandom].img)
            .width(100)
          Button('收下奖励')
            .width(200)
            .onClick(()=>{
              this.zhongJiangYe=[0,0]
            })
        }
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .width(300)
        .height(300)
        .backgroundColor(Color.White)

        Image($rawfile('close.svg'))
          .width(40)
          .margin(20)
          .onClick(() => {
            this.zhongJiangYe = [0, 0]
          })
      }
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
      .height('100%')
      .width('100%')
      .backgroundColor('rgba(0,0,0,0.8)')
      .zIndex(this.zhongJiangYe[0])
      .opacity(this.zhongJiangYe[1])

    }
    .linearGradient({
      direction: GradientDirection.Bottom,
      colors: [['#ff042ce5', 0], ['#ff6b96f7', 0.5], ['#ff13a5f3', 1]]
    })
    .height('100%')
    .width('100%')
  }
}
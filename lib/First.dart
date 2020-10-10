import 'package:Blockpay/Slider_widget.dart';
import 'package:Blockpay/ss2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web3dart/web3dart.dart';

class web extends StatefulWidget {
  @override
  _webState createState() => _webState();
}

class _webState extends State<web> {
  Client httpcl;
  Web3Client ethcl;
  bool data = false;
  final address = "0x197b4a6ECf9aE7Bb5593417A10ee645b2d9EFAa0";
  int myAmount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.gray300,
      body: ZStack([
        VxBox()
            .blue600
            .size(context.screenWidth, context.percentHeight * 30)
            .make(),
        VStack([
          (context.percentHeight * 10).heightBox,
          "\$BlockPay".text.xl4.white.bold.center.makeCentered().py16(),
          (context.percentHeight * 5).heightBox,
          VxBox(
                  child: VStack([
            "Balance".text.gray700.xl2.semiBold.makeCentered(),
            10.heightBox,
            data
                ? "\$1".text.bold.xl6.makeCentered()
                : CircularProgressIndicator().centered()
          ]))
              .p16
              .white
              .size(context.screenWidth, context.percentHeight * 18)
              .rounded
              .shadowXl
              .make()
              .p16(),
          30.heightBox,
          SliderWidget(
            max: 100,
            min: 0,
            finalval: (value) => {
              myAmount = (value * 100).round(),
            },
          ).centered(),
          HStack(
            [
              FlatButton.icon(
                      onPressed: () {},
                      color: Colors.blue,
                      shape: Vx.roundedSm,
                      icon: Icon(Icons.refresh),
                      label: "Refresh".text.white.bold.make())
                  .h(50),
              FlatButton.icon(
                      onPressed: () {},
                      color: Colors.green,
                      shape: Vx.roundedSm,
                      icon: Icon(Icons.call_made_outlined),
                      label: "Refresh".text.white.bold.make())
                  .h(50),
              FlatButton.icon(
                      onPressed: () {},
                      color: Colors.red,
                      shape: Vx.roundedSm,
                      icon: Icon(Icons.call_received_outlined),
                      label: "Withdraw".text.white.bold.make())
                  .h(50)
            ],
            alignment: MainAxisAlignment.spaceAround,
            axisSize: MainAxisSize.max,
          ).p16()
        ])
      ]),
    );
  }
}

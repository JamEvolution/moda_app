import 'package:flutter/material.dart';
import 'package:moda_app/constants.dart';

class DetaySayfasi extends StatefulWidget {
  final String imagePath;
  const DetaySayfasi({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  final String _dressImagePATH = 'assets/dress.jpg';
  Widget _buildBackGroundImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.imagePath), fit: BoxFit.cover)),
    );
  }

  Widget _buildStackOfCard(BuildContext context) {
    return Material(
      borderRadius: Sabitler.logoBoxBorderRadius,
      elevation: 4,
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width - 30,
        decoration: BoxDecoration(color: Colors.white, borderRadius: Sabitler.logoBoxBorderRadius),
        child: Column(children: [
          Row(
            children: [
              dressBox(),
              detailText(context),
            ],
          ),
          const Divider(color: Colors.black),
          actionButtonAndMoney(),
        ]),
      ),
    );
  }

  Widget _buildChooseSelection() {
    return Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: Sabitler.tagBoxBorderRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Center(
              child: Text(
            'LAMINATED',
            style: Sabitler.detailTagActionTextStyle,
          )),
          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18)
        ],
      ),
    );
  }

  Widget actionButtonAndMoney() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '\$6500',
            style: Sabitler.detailMoneyTextStyle,
          ),
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }

  Widget detailText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Limited', style: Sabitler.detailTitleTextStyle),
        Sabitler.customWidth5SizedBox,
        const Text('Louis vuitton', style: Sabitler.detailSubTitleTextStyle),
        Sabitler.customHeightSizedBox,
        SizedBox(
          height: 30,
          width: MediaQuery.of(context).size.width - 170,
          child: const Text('Bok gibi bir elbise random internetten buldum daha güzeli var',
              style: Sabitler.detailSubTitleTextStyle),
        ),
      ],
    );
  }

  Widget dressBox() {
    return Padding(
      padding: Sabitler.customPadding16,
      child: Container(
        height: 120,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: Sabitler.logoBoxBorderRadius,
            border: Border.all(color: Colors.grey),
            image: DecorationImage(image: AssetImage(_dressImagePATH), fit: BoxFit.cover)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
          tag: widget.imagePath,
          child: _buildBackGroundImage(context),
        ),
        Positioned(
            // top: 15,
            left: 15,
            right: 15,
            bottom: 15,
            child: _buildStackOfCard(context)),
        Positioned(
          top: MediaQuery.of(context).size.height / 2,
          left: 50,
          child: _buildChooseSelection(),
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:moda_app/constants.dart';
import 'package:moda_app/detay.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Special Fashion',
          style: Sabitler.appBarTextStyle,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: Sabitler.appBarActionIcon)],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 150,
            // color: Sabitler.mainColor,
            //double.infinity ' de kullanabiliriz.
            width: MediaQuery.of(context).size.width,
            child: profileFollowUp,
          ),
          Padding(
            padding: Sabitler.customPadding16,
            child: customCard,
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(controller: _tabController, indicatorColor: Colors.transparent, tabs: const [
          Tab(
            icon: Sabitler.tab1Icon,
          ),
          Tab(
            icon: Sabitler.tab2Icon,
          ),
          Tab(
            icon: Sabitler.tab3Icon,
          ),
          Tab(
            icon: Sabitler.tab4Icon,
          ),
        ]),
      ),
    );
  }

  Widget get customCard {
    Widget _topOfTop() {
      return ListTile(
        title: const Text(
          'Kötü Kadın Nazife',
          style: Sabitler.customTextSpanStyle,
        ),
        subtitle: RichText(
            text: const TextSpan(style: Sabitler.customTextSpanStyle, children: [
          TextSpan(
            text: '34',
          ),
          TextSpan(text: ' min ago ..', style: TextStyle(color: Colors.grey))
        ])),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: Sabitler.imageBoxBorderRadius,
              image: const DecorationImage(image: AssetImage('assets/model1.jpeg'), fit: BoxFit.cover)),
        ),
        trailing: const Icon(Icons.more_vert),
      );
    }

    Widget _buildPhotoGalery() {
      Widget _buildMainPhotoGalery(String imagePATH) {
        return Hero(
          tag: imagePATH,
          child: Container(
            width: (MediaQuery.of(context).size.width - 50) / 2,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: Sabitler.imageBoxBorderRadius,
                color: Colors.yellow,
                image: DecorationImage(image: AssetImage(imagePATH), fit: BoxFit.cover)),
          ),
        );
      }

      Widget _buildSubPhotoGalery(String imagePATH) {
        return Hero(
          tag: imagePATH,
          child: Container(
            width: (MediaQuery.of(context).size.width - 100) / 2,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: Sabitler.imageBoxBorderRadius,
                color: Colors.yellow,
                image: DecorationImage(image: AssetImage(imagePATH), fit: BoxFit.cover)),
          ),
        );
      }

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: _buildMainPhotoGalery(
              'assets/modelgrid1.jpeg',
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const DetaySayfasi(imagePath: 'assets/modelgrid1.jpeg')));
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: _buildSubPhotoGalery('assets/modelgrid2.jpeg'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const DetaySayfasi(imagePath: 'assets/modelgrid2.jpeg')));
                },
              ),
              Sabitler.customHeightSizedBox,
              InkWell(
                child: _buildSubPhotoGalery('assets/modelgrid3.jpeg'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const DetaySayfasi(imagePath: 'assets/modelgrid3.jpeg')));
                },
              ),
            ],
          )
        ],
      );
    }

    Widget _buildLikeAndCommentAndShare() {
      return Row(
        children: [
          Sabitler.shareIcon,
          Sabitler.customWidth5SizedBox,
          const Text('1.7k', style: Sabitler.shareAndCommentAndLikeTextStyle),
          Sabitler.customWidth30SizedBox,
          Sabitler.commentIcon,
          Sabitler.customWidth5SizedBox,
          const Text('325', style: Sabitler.shareAndCommentAndLikeTextStyle),
          Container(
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width - 235,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Sabitler.likeIcon,
                Sabitler.customWidth5SizedBox,
                Text('2.3k', style: Sabitler.shareAndCommentAndLikeTextStyle)
              ],
            ),
          )
        ],
      );
    }

    Widget _tagCiph(String tagTitle) {
      return Container(
        alignment: Alignment.center,
        width: 100,
        height: 25,
        decoration: BoxDecoration(borderRadius: Sabitler.tagBoxBorderRadius, color: Colors.brown.withOpacity(0.2)),
        child: Text(
          '#$tagTitle',
          style: Sabitler.tagTextStyle,
        ),
      );
    }

    return Material(
      borderRadius: Sabitler.imageBoxBorderRadius,
      elevation: 4,
      // color: Sabitler.mainColor,
      child: Container(
        padding: Sabitler.customPadding16,
        height: 520,
        width: double.infinity,
        child: Column(
          children: [
            _topOfTop(),
            Sabitler.customHeightSizedBox,
            const Text(
              'Ben bir gerizekalıyım, hiçbir zaman güvenmem sürekli kıskanırım, aptal gibi gittim evlendim birde üstüne ideallerimden vazgeçtim .. ',
              style: Sabitler.sharedTextStyle,
            ),
            Sabitler.customHeightSizedBox,
            _buildPhotoGalery(),
            Sabitler.customHeightSizedBox,
            Row(
              children: [
                _tagCiph('louis vuitton'),
                Sabitler.customWidth30SizedBox,
                _tagCiph('Chloe'),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            _buildLikeAndCommentAndShare()
          ],
        ),
      ),
    );
  }

  ListView get profileFollowUp {
    Widget _listOfElement(String imagePATH, String logoPATH) {
      Widget _buildImageBox(String imagePATH) {
        return Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: Sabitler.imageBoxBorderRadius,
              image: DecorationImage(image: AssetImage(imagePATH), fit: BoxFit.cover)),
        );
      }

      Widget _buildLogoBox(String logoPATH) {
        return Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: Sabitler.logoBoxBorderRadius,
                image: DecorationImage(image: AssetImage(logoPATH), fit: BoxFit.cover)));
      }

      Widget _buildFollowButton() {
        return Container(
          alignment: Alignment.center,
          width: 75,
          height: 30,
          decoration: BoxDecoration(color: Colors.brown, borderRadius: Sabitler.logoBoxBorderRadius),
          child: const Text('Follow', style: Sabitler.followTextStyle),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              _buildImageBox(imagePATH),
              Positioned(
                top: 50,
                left: 50,
                child: _buildLogoBox(logoPATH),
              )
            ],
          ),
          Sabitler.customHeightSizedBox,
          _buildFollowButton(),
        ],
      );
    }

    return ListView(
      padding: Sabitler.customPadding16,
      scrollDirection: Axis.horizontal,
      children: [
        _listOfElement('assets/model1.jpeg', 'assets/chanellogo.jpg'),
        Sabitler.customWidth30SizedBox,
        _listOfElement('assets/model2.jpeg', 'assets/chloelogo.png'),
        Sabitler.customWidth30SizedBox,
        _listOfElement('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
        Sabitler.customWidth30SizedBox,
        _listOfElement('assets/model1.jpeg', 'assets/chanellogo.jpg'),
        Sabitler.customWidth30SizedBox,
        _listOfElement('assets/model2.jpeg', 'assets/chloelogo.png'),
        Sabitler.customWidth30SizedBox,
        _listOfElement('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
      ],
    );
  }
}

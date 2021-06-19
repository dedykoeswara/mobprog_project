part of 'pages.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.skins,
  }) : super(key: key);

  final Skin skins;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.4,
              child: Image.asset(
                skins.picture,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: screenSize.height * 0.4),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    skins.skinName,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Rp ${skins.price.toString()}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: orangeColor,
                    ),
                  ),
                ),
                InformationDetail(
                  screenSize: screenSize,
                  infoTitle: 'Info',
                  infoContent:
                      'Ayo segera dapatkan skin pilihan anda dengan harga termurah, stok terbatas !',
                ),
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: OrangeButton(
                    screenSize: screenSize,
                    buttonText: 'Add to Cart',
                    buttonPress: () {
                      carts.add(
                        Cart(
                          skinName: skins.skinName,
                          price: skins.price,
                          picture: skins.picture,
                        ),
                      );
                      Modular.to.navigate('/home');
                    },
                  ),
                ),
              ],
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.4,
              color: Colors.black.withOpacity(0.1),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Modular.to.pop();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

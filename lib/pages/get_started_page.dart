part of 'pages.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF3F414E),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.15,
          vertical: screenSize.height * 0.1,
        ),
        child: Column(
          children: [
            Text(
              'Skin Termurah',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 55,
                color: Colors.white,
              ),
            ),
            SizedBox(height: screenSize.height * 0.05),
            GestureDetector(
              onTap: () {
                Modular.to.navigate('/home');
              },
              child: Container(
                alignment: Alignment.center,
                width: screenSize.width,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Ayo Pilih Skin Kesukaan Anda',
                  style: TextStyle(
                    color: orangeColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

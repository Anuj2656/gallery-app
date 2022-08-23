import 'package:flutter/material.dart';
import 'details_page.dart';
import 'package:gallery2/details_page.dart';
List<ImageDetails> _images=[
  ImageDetails(
    imagePath: 'images/1.jpg',
  ),
  ImageDetails(
    imagePath: 'images/2.jpg',
  ),
  ImageDetails(
    imagePath: 'images/3.jpg',
  ),
  ImageDetails(
    imagePath: 'images/4.jpg',
  ),
  ImageDetails(
    imagePath: 'images/5.jpg',
  ),
  ImageDetails(
    imagePath: 'images/6.jpg',
  ),
  ImageDetails(
    imagePath: 'images/7.jpg',
  ),
  ImageDetails(
    imagePath: 'images/8.jpg',
  ),
  ImageDetails(
    imagePath: 'images/9.jpg',
  ),
  ImageDetails(
    imagePath: 'images/10.jpg',
  ),
  ImageDetails(
    imagePath: 'images/1.jpg',
  ),
  ImageDetails(
    imagePath: 'images/2.jpg',
  ),
  ImageDetails(
    imagePath: 'images/3.jpg',
  ),
  ImageDetails(
    imagePath: 'images/4.jpg',
  ),
  ImageDetails(
    imagePath: 'images/5.jpg',
  ),
  ImageDetails(
    imagePath: 'images/6.jpg',
  ),
  ImageDetails(
    imagePath: 'images/7.jpg',
  ),
  ImageDetails(
    imagePath: 'images/8.jpg',
  ),
  ImageDetails(
    imagePath: 'images/9.jpg',
  ),
  ImageDetails(
    imagePath: 'images/10.jpg',
  ),

];
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 40,),
            Text('Gallery',style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
            textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30,),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight:Radius.circular(30),
              ),
            ),

            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ), itemBuilder: (context, index){
              return RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=> DetailsPage(
                            imagePath: _images[index].imagePath,
                          ),
                       ),
                    );
                  },
                  child:  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(_images[index].imagePath),
                        fit: BoxFit.cover,



                      ),

                    )
                  ),

                  );
            },
            itemCount: _images.length,
            ),
          ),
        )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;

  ImageDetails({
    required this.imagePath,

  });
}



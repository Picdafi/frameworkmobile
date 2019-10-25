import 'package:flutter/material.dart';
import 'package:market/listitem/produklistitem.dart';
//import 'package:market/main.dart';

class ProdukListPage extends StatelessWidget{
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    this.context=context;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text(
          'LIST PRODUCT',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _buildListProdukPage(),
    );
  }

}

_buildListProdukPage(){
  BuildContext context;
  Size screenSize = MediaQuery.of(context).size;
  return Container(
    color: Colors.blueGrey,
    child: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index){
        if(index == 0){
          return _buildFilterWidgets(screenSize);
        } else if(index == 4){
          return SizedBox(
            height: 12.0,
          );
        } else {
          return _dummyListProducts()[index];
        }
      },
    ),
  );
}

_buildFilterWidgets(Size screenSize){
  return Container(
    margin: const EdgeInsets.all(12.0),
    width: screenSize.width,
    child: Card(
      elevation: 4.0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildFilterButton("Sort"),
            Container(
              color: Colors.black,
              width: 2.0,
              height: 24.0,
            ),
            _buildFilterButton("Refine"),
          ],
        ),
      ),
    ),
  );
}



_buildFilterButton(String title){
  return InkWell(
    onTap: (){
      print(title);
    },
    child: Row(
      children: <Widget>[
        Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
        ),
        SizedBox(
          width: 2.0,
        ),
        Text(title),
      ],
    ),
  );
}


_dummyListProducts(){
  return[
    ProdukListitem(
      nama:"Ayam Goreng",
      harga: 2500,
      diskon: 25,
        imageUrl: 'https://img.taste.com.au/q5AO4VFI/w720-h480-cfill-q80/taste/2016/11/malaysian-fried-chicken-ayam-goreng-108899-1.jpeg',

    ),
    ProdukListitem(
      nama:"Ayam Goreng",
      harga: 2500,
      diskon: 25,
      imageUrl: 'https://img.taste.com.au/q5AO4VFI/w720-h480-cfill-q80/taste/2016/11/malaysian-fried-chicken-ayam-goreng-108899-1.jpeg',

    ),
    ProdukListitem(
      nama:"Ayam Goreng",
      harga: 2500,
      diskon: 25,
      imageUrl: 'https://img.taste.com.au/q5AO4VFI/w720-h480-cfill-q80/taste/2016/11/malaysian-fried-chicken-ayam-goreng-108899-1.jpeg',

    ),
    ProdukListitem(
      nama:"Ayam Goreng",
      harga: 2500,
      diskon: 25,
      imageUrl: 'https://img.taste.com.au/q5AO4VFI/w720-h480-cfill-q80/taste/2016/11/malaysian-fried-chicken-ayam-goreng-108899-1.jpeg',

    ),
    ProdukListitem(
      nama:"Ayam Goreng",
      harga: 2500,
      diskon: 25,
      imageUrl: 'https://img.taste.com.au/q5AO4VFI/w720-h480-cfill-q80/taste/2016/11/malaysian-fried-chicken-ayam-goreng-108899-1.jpeg',

    ),
    ProdukListitem(
      nama:"Ayam Goreng",
      harga: 2500,
      diskon: 25,
      imageUrl: 'https://img.taste.com.au/q5AO4VFI/w720-h480-cfill-q80/taste/2016/11/malaysian-fried-chicken-ayam-goreng-108899-1.jpeg',

    ),
  ];
}



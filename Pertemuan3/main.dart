import 'dart:html'; 
//mengambil library html pada dart yang menyediakan onclick untuk elemen DOM

void main() { 
   querySelector('#btnWish').onClick.listen(wishHandler);
}  
void wishHandler(MouseEvent event){ 
   String name = (querySelector('#txtName')  as InputElement).value; 
   querySelector('#display').text = 'Hello Mr.'+ name; 

}

  //queryselector() mengembalikan elemen dari dom .
//onclick.listen() mengambil metode wishHandler yang dipanggil
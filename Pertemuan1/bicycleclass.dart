class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  //int speed;
  int gear;
  
  //ini konstruktor
 // Bicycle(this.cadence, this.speed, this.gear);
  Bicycle(this.cadence, this.gear);
  //kalau ini diganti dengan {} array lihat contoh di examp 2.
  
  
  void applyBrake(int decrement) {
  _speed -= decrement;
}

void speedUp(int increment) {
  _speed += increment;
}
  
  @override
  String toString() => 'Bicycle: $speed mph';
  //String toString() => 'Bicycle: $speed mph, with gear=$gear and cadence=$cadence';
  
}

void main() {
 // var bike = new Bicycle(2, 0, 1);
  var bike = Bicycle(2, 1);
  //kalau di atas diganti menggunakan array{} maka deklrasinya memanggil array yg dipilih lihat contoh di examp 2. 
  bike.speedUp(2);
  print(bike);
}
class Hewan {
  String _nama="";
  int _umur=0;

  Hewan(nama, umur){
    this._nama = nama;
    this._umur = umur;
  }
}

class Kucing extends Hewan{
  String _warnabulu="";

  Kucing(nama, umur, warnabulu) : super(nama, umur){
    this._warnabulu = warnabulu;
  }

  Future<void> makan_kesukaan() async {
    await Future.delayed(Duration(seconds: 1));
    print("Meow meow meow!! :D");
  }
  
  Future<void> makan_gakesukaan() async {
    await Future.delayed(Duration(seconds: 1));
    print("Huee... meow.... :(");
  }
}

class Anjing extends Hewan{
  String _ras="";

  Anjing(nama, umur, ras) : super(nama, umur){
    this._ras = ras;
  }

  Future<void> makan_kesukaan() async {
    await Future.delayed(Duration(seconds: 3));
    print("Guk guk guk!! :D");
  }
  
  Future<void> makan_gakesukaan() async {
    await Future.delayed(Duration(seconds: 3));
    print("Huee... guk.... :(");
  }
}

bool makanananjing(String makanan) {
  if (makanan == "Daging" || makanan == "Dog Food") {
    return true;
  }
  else {
    return false;
  }
}

bool makanankucing(String makanan) {
  if (makanan == "Daging" || makanan == "Ikan" || makanan == "Whiskas") {
    return true;
  }
  else {
    return false;
  }
}

void main() {
  var kucing = Kucing("Fluffy", 2, "Putih");
  var anjing = Anjing("Buddy", 3, "Golden Retriever");

  String makanan1 = "Ikan";
  String makanan2 = "Daging";
  String makanan3 = "Whiskas";
  String makanan4 = "Dog Food";
  String makanan5 = "Bolu";
  String makanan6 = "Keju";

  print("===============================================");
  print("= WAKTUNYA MEMBERI MAKAN PELIHARAAN !         =");
  print("===============================================");
  print("= 1. Ikan                                     =");
  print("= 2. Daging                                   =");
  print("= 3. Whiskas                                  =");
  print("= 4. Dog Food                                 =");
  print("= 5. Bolu                                     =");
  print("= 6. Keju                                     =");
  print("===============================================\n");

  print("Mencoba memberi makan Anjing Buddy dengan makanan $makanan2 ..");
  if (makanananjing(makanan2) == true) {
    anjing.makan_kesukaan();
  }
  else{
    anjing.makan_gakesukaan();
  }

  print("Mencoba memberi makan Kucing Fluffy dengan makanan $makanan2 ..\n");
  if (makanankucing(makanan2) == true) {
    kucing.makan_kesukaan();
  }
  else{
    kucing.makan_gakesukaan();
  }
}
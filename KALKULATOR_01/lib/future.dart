main(List<String> args) async {
  int pilihan = 1;

  if (pilihan == 1) {
    _contohAsyncAwait();
  } else if (pilihan == 2) {
    _contohAsyncThen();
  } else {
    print('pilihan tidak sesuai.');
  }
}
void _contohAsyncAwait() async {
  print('Contoh memanggil future menggunakan await:');
  print('A: Aku berangkat...');


  print(await _panggilFuture());


  print('A: Aku juga baru datang!');
}


void _contohAsyncThen() {
  print('Contoh memanggil future menggunakan .then:');
  print('A: Kamu sampai mana?');

 
  _panggilFuture().then((String data) {
    print(data);
  });


  print('A: Lama banget dia...');
}


Future<String> _panggilFuture() async {
  await Future.delayed(Duration(seconds: 3));

  return 'B: Aku datang!';
}
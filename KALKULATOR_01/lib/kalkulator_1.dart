import 'dart:io';

void main() {
  while (true) {
    print("\n=== Kalkulator Sederhana ===");
    print("1. Penjumlahan (+)");
    print("2. Pengurangan (-)");
    print("3. Perkalian (*)");
    print("4. Pembagian (/)");
    print("5. Keluar");

    stdout.write("Pilih operasi (1-5): ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == '5') {
      print("Terima kasih! Program selesai.");
      break;
    }

    stdout.write("Masukkan angka pertama: ");
    double? angka1 = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write("Masukkan angka kedua: ");
    double? angka2 = double.tryParse(stdin.readLineSync() ?? '');

    if (angka1 == null || angka2 == null) {
      print("Input tidak valid. Silakan masukkan angka.");
      continue;
    }

    double hasil;
    switch (pilihan) {
      case '1':
        hasil = angka1 + angka2;
        print("Hasil: $angka1 + $angka2 = $hasil");
        break;
      case '2':
        hasil = angka1 - angka2;
        print("Hasil: $angka1 - $angka2 = $hasil");
        break;
      case '3':
        hasil = angka1 * angka2;
        print("Hasil: $angka1 * $angka2 = $hasil");
        break;
      case '4':
        if (angka2 == 0) {
          print("Kesalahan: Tidak bisa membagi dengan nol.");
        } else {
          hasil = angka1 / angka2;
          print("Hasil: $angka1 / $angka2 = $hasil");
        }
        break;
      default:
        print("Pilihan tidak valid. Silakan coba lagi.");
    }
  }
}

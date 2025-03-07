import 'dart:io';

class Kalkulator {
  Future<void> mulai() async {
    while (true) {
      print("\n=== Kalkulator Sederhana ===");
      print("1. Penjumlahan (+)");
      print("2. Pengurangan (-)");
      print("3. Perkalian (*)");
      print("4. Pembagian (/)");
      print("5. Keluar");

      stdout.write("Pilih operasi (1-5): ");
      String? pilihan = await _bacaInput();

      if (pilihan == '5') {
        print("Terima kasih! Program selesai.");
        break;
      }

      stdout.write("Masukkan angka pertama: ");
      double? angka1 = await _bacaAngka();

      stdout.write("Masukkan angka kedua: ");
      double? angka2 = await _bacaAngka();

      if (angka1 == null || angka2 == null) {
        print("Input tidak valid. Silakan masukkan angka.");
        continue;
      }

      _hitungHasil(pilihan, angka1, angka2);
    }
  }

  Future<String?> _bacaInput() async {
    return stdin.readLineSync();
  }

  Future<double?> _bacaAngka() async {
    String? input = stdin.readLineSync();
    return double.tryParse(input ?? '');
  }

  void _hitungHasil(String pilihan, double angka1, double angka2) {
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

void main() async {
  Kalkulator kalkulator = Kalkulator();
  await kalkulator.mulai();
}

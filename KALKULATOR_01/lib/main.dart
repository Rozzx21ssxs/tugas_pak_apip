import 'dart:io';

void main() {
  print("=== Kalkulator Sederhana ===");

  // Input angka pertama
  stdout.write("Masukkan angka pertama: ");
  double? angka1 = double.tryParse(stdin.readLineSync()!);

  // Cek jika input valid
  if (angka1 == null) {
    print("Input tidak valid! Harap masukkan angka.");
    return;
  }

  // Input operator
  stdout.write("Masukkan operator (+, -, *, /): ");
  String? operator = stdin.readLineSync();

  // Cek jika operator valid
  if (operator == null || !['+', '-', '*', '/'].contains(operator)) {
    print("Operator tidak valid! Harap masukkan operator yang sesuai.");
    return;
  }

  // Input angka kedua
  stdout.write("Masukkan angka kedua: ");
  double? angka2 = double.tryParse(stdin.readLineSync()!);

  if (angka2 == null) {
    print("Input tidak valid! Harap masukkan angka.");
    return;
  }

  // Proses perhitungan
  double hasil;
  switch (operator) {
    case '+':
      hasil = angka1 + angka2;
      break;
    case '-':
      hasil = angka1 - angka2;
      break;
    case '*':
      hasil = angka1 * angka2;
      break;
    case '/':
      if (angka2 == 0) {
        print("Error: Pembagian dengan nol tidak diperbolehkan.");
        return;
      }
      hasil = angka1 / angka2;
      break;
    default:
      print("Operator tidak dikenal.");
      return;
  }

  // Output hasil
  print("Hasil: $angka1 $operator $angka2 = $hasil");
}
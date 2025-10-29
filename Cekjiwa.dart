import 'dart:io';

void main() {
  print("=== CEK SEBERAPA PARAH JIWA PROGRAMMER LU ===");
  stdout.write("Masukkan nama lu dulu dong: ");
  String? nama = stdin.readLineSync();

  int skor = 0;

  print("\nOke $nama, jawab pake 'ya' atau 'tidak' ya.\n");

  skor += tanya("1. Pernah nyalahin komputer padahal salah titik koma?");
  skor += tanya("2. Pernah bangga banget cuma karena program akhirnya 'RUN SUCCESSFUL'?");
  skor += tanya("3. Pernah janji mau tidur jam 10 tapi malah ngoding sampe ayam ikut stand up?");

  print("\n=== HASIL CEK JIWA ===");
  print("Skor lu: $skor");

  if (skor <= 10) {
    print("lu masih fresh, belum terkontaminasi bug. Nikmatilah hidup luk selagi bisa ");
  } else if (skor == 20) {
    print("Udah mulai kena kutukan ngoding. Masih bisa diselamatkan asal uninstall VS Code sekarang 🫡");
  } else {
    print("Selamat $nama, lu resmi tidak bisa melihat dunia tanpa syntax error. Jiwa programmer level dewa 👾🔥");
  }
}

int tanya(String pertanyaan) {
  stdout.write("$pertanyaan ");
  String? jawaban = stdin.readLineSync()?.toLowerCase();
  if (jawaban == "ya") {
    return 10;
  } else {
    return 0;
  }
}
void main() {
  print("\n===== SOAL 6: STRING CANTIK HEI =====");

  // Test dengan beberapa contoh
  cekStringHEI("HEI");
  cekStringHEI("HEEIIH");
  cekStringHEI("HHH");
  cekStringHEI("HEIHEI");
  cekStringHEI("HHHEEEIIII");
}

void cekStringHEI(String teks) {
  print("\n--- Cek string: $teks ---");

  // Langkah 1: Pisahkan huruf jadi list
  var hurufList = [];
  for (var i = 0; i < teks.length; i++) {
    hurufList.add(teks[i]);
  }
  print("Huruf-huruf: $hurufList");

  // Langkah 2: Hitung ada berapa H, E, dan I
  var jumlahH = 0;
  var jumlahE = 0;
  var jumlahI = 0;

  for (var huruf in hurufList) {
    if (huruf == 'H') jumlahH = jumlahH + 1;
    if (huruf == 'E') jumlahE = jumlahE + 1;
    if (huruf == 'I') jumlahI = jumlahI + 1;
  }

  print("Jumlah H: $jumlahH");
  print("Jumlah E: $jumlahE");
  print("Jumlah I: $jumlahI");

  // Langkah 3: Cek apakah bisa buat minimal 1 pola HEI
  if (jumlahH == 0 || jumlahE == 0 || jumlahI == 0) {
    print("HASIL: -1 (tidak bisa buat HEI, ada huruf yang kurang)");
    return;
  }

  // Langkah 4: Cari berapa pola HEI yang bisa dibuat
  // Caranya: cari H, lalu cari E setelah H, lalu cari I setelah E

  var jumlahPola = 0;
  var posisiSekarang = 0;

  while (posisiSekarang < teks.length) {
    // Cari H
    var ketemu = false;
    var posH = -1;
    var posE = -1;
    var posI = -1;

    // Cari H mulai dari posisi sekarang
    for (var i = posisiSekarang; i < teks.length; i++) {
      if (teks[i] == 'H') {
        posH = i;
        break;
      }
    }

    // Kalau nemu H, cari E setelahnya
    if (posH != -1) {
      for (var i = posH + 1; i < teks.length; i++) {
        if (teks[i] == 'E') {
          posE = i;
          break;
        }
      }
    }

    // Kalau nemu E, cari I setelahnya
    if (posE != -1) {
      for (var i = posE + 1; i < teks.length; i++) {
        if (teks[i] == 'I') {
          posI = i;
          ketemu = true;
          break;
        }
      }
    }

    // Kalau nemu pola lengkap H-E-I
    if (ketemu) {
      jumlahPola = jumlahPola + 1;
      print(
        "Ketemu pola ke-$jumlahPola: H di posisi $posH, E di posisi $posE, I di posisi $posI",
      );
      posisiSekarang = posH + 1; // Lanjut cari dari setelah H yang baru dipakai
    } else {
      break; // Berhenti kalau ga nemu lagi
    }
  }

  // Langkah 5: Hitung panjang string cantik
  if (jumlahPola == 0) {
    print("HASIL: -1 (tidak bisa membentuk pola HEI)");
  } else {
    var panjang = jumlahPola * 3; // setiap pola HEI panjangnya 3
    print("HASIL: $panjang (ada $jumlahPola pola HEI)");
  }
}
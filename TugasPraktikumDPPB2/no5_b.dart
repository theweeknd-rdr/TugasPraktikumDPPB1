import 'dart:collection';

void main() {
  Queue<String> antrean = Queue<String>();
  antrean.addAll(["Budi", "Ani", "Citra"]);

  print("Daftar antrean awal:");
  print(antrean);

  antrean.add("Dewi");
  antrean.addFirst("Eko");

  print("\nAntrean setelah penambahan data:");
  print(antrean);
}

void main() {
  var prodi = {
    'Sistem informasi',
    'Teknologi rekayasa perangkat lunak',
    'Sistem informasi kota cerdas',
    'Sistem informasi',
  };

  Set<String> prodiset = prodi;
  print(prodiset);
  print("\n");

  // prodiset.add('AhmadAmmarSalas');
  // prodiset.add('707012400052');
  // prodiset.add('48-01');

  var tambahan = {'AhmadAmmarSalas', '707012400052', '48-01'};
  prodiset.addAll(tambahan);
  print(prodiset);
}

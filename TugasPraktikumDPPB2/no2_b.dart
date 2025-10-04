void main() {
  var prodi = {
    'Sistem informasi',
    'Teknologi rekayasa perangkat lunak',
    'Sistem informasi kota cerdas',
    'Sistem informasi',
  };

  Set<String> prodiset = prodi;
  print(prodiset);

  prodiset.add('AhmadAmmarSalas');
  prodiset.add('707012400052');
  prodiset.add('48-01');
  print(prodiset);
}

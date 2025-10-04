void main() {
  var identitas = {
    'Nama': 'Nama Saidara',
    'NIM': '12343123',
    'Kelas': 'A',
  };

  var kampus = {
    1:'Sistem Informasi Kota Cerdas',
    2:'FIT',
    3:'tel-U',
    'kampus': 4
  };
  print(identitas);
  print(kampus);
  print("\n");

  var mhs1 = Map<String, String>.from(
  identitas.map(( key, value) => MapEntry(key, value.toString())),
);

mhs1['Nama'] = 'Nama Teman Saudara';
mhs1['NIM'] = 'Nim Teman Saudara';
mhs1['Kelas'] = 'Bandung';

var mhs2 = Map<dynamic, String>.from(
  kampus.map(( key, value) => MapEntry(key.toString(), value.toString())),
);

mhs2[2] = 'Fakultas Ilmu Terapan';
mhs2[10] = 'Telkom University';
mhs2[18] = 'Kampus Utama';
mhs2['AsalKota'] = 'Jakarta';

print(mhs1);
print(mhs2);


}




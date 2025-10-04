void main () {

  var nilaiUjian = {'Matematika': 85, 'Bahasa': 90, 'IPA': 88};

  print("Nilai ujian: $nilaiUjian");
  print("Nilai Matematika: ${nilaiUjian['Matematika']}");

  var mhs1 = <String, String>{};

  mhs1['nama'] = 'Budi Santoso'; 
  mhs1['nim'] = '1234567890'; 

  print("Mahasiswa 1: $mhs1");


  var mhs2 = <int, String>{};


  mhs2[1] = 'Ani Wijaya';
  mhs2[2] = '0987654321';

  print("Mahasiswa 2: $mhs2");


  mhs1['asal_sekolah'] = 'SMAN 1 Jakarta'; 


  mhs2[3] = 'Jakarta'; 

  print("Mahasiswa 1 lengkap: $mhs1");
  print("Mahasiswa 2 lengkap: $mhs2");
}
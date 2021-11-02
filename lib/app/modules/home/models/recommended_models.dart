class RecomendedModel {
  String? lokasi;
  String? gambar;

  RecomendedModel(
    this.lokasi,
    this.gambar,
  );
}

List<RecomendedModel> recomended = recomendedData
    .map((e) => RecomendedModel(e['lokasi'], e['gambar']))
    .toList();

var recomendedData = [
  {
    'lokasi': 'Waduk Gunung Rowo',
    'gambar': 'assets/images/1.jpg',
  },
  {
    'lokasi': 'Wisata Agro Jolong',
    'gambar': 'assets/images/2.jpg',
  },
  {
    'lokasi': 'Vihara Gunung Wungkal',
    'gambar': 'assets/images/3.jpg',
  },
];

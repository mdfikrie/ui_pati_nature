class LocationModels {
  String? lokasi;
  String? gambar;

  LocationModels(this.lokasi, this.gambar);
}

List<LocationModels> lokasi =
    lokasiData.map((e) => LocationModels(e['lokasi'], e['gambar'])).toList();

var lokasiData = [
  {
    'lokasi': 'Wisata Agro Jolong',
    'gambar': 'assets/images/2.jpg',
  },
  {
    'lokasi': 'Pantai Kertomulyo',
    'gambar': 'assets/images/6.jpg',
  },
  {
    'lokasi': 'Lorotan Semar',
    'gambar': 'assets/images/5.jpg',
  },
  {
    'lokasi': 'Gua Pancur Jimbaran',
    'gambar': 'assets/images/4.jpg',
  },
  {
    'lokasi': 'Vihara Gunung Wungkal',
    'gambar': 'assets/images/3.jpg',
  },
  {
    'lokasi': 'Waduk Gunung Rowo',
    'gambar': 'assets/images/1.jpg',
  },
];

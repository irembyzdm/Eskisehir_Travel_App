class Ulasim {
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  

  const Ulasim({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });  


  static const List<Ulasim> ulasim = [
    Ulasim(
      id: '1',
      title: 'Şehirler Arası Ulaşım',
      description:
          'Eskişehir’e tren, otobüs,uçak ve özel aracınız ile gelebilirsiniz. Eskişehir’e birçok yerden gitmenin en kolay yolu tren kullanmak, çünkü çoğu trenin güzergahı Eskişehir’i de içine alıyor. Ankara-Eskişehir, Ankara-İstanbul hızlı trenleri ve İzmir Mavi treni ile Eskişehir’e gelmek mümkün. Benzer şekilde Eskişehir’e neredeyse her şehirden otobüs bulabilirsiniz.Buzlu, Pamukkale ve Kamil Koç gibi bir sürü şirketin Eskişehir’e otobüsü var. Eskişehir’de bir de havalimanı bulunmaktadır.',
      imageUrl:
      'https://www.sehireskisehir.net.tr/files/uploads/news/default/eskisehir-ulasim-ve-iletisim00955412c5a0eaef65d0.jpg'    ),
    Ulasim(
      id: '2',
      title: 'Şehiriçi Otobüs',
      description:
          'Eskişehir’de yerli halk ve ziyaretçiler için hemen hemen her ilçeye belediye otobüsleri ile ulaşım imkanı sunulmaktadır. Kırmızı, mavi, siyah ve numaralara göre çeşitli otobüsler mevcuttur. Ulaşım ücreti öğrenciler için 4, öğrenci olmayanlar için ise 7,50 TL’dir. Durak yakınlarında bulunan büfelerden kart temin edilebilmektedir.',
      imageUrl:
          'https://www.tasimacilar.com/d/other/allison-transmission_eskisehir-buyuksehir-belediyesi_isuzu-citibus_gorsel-5.jpg',
    ),
    Ulasim(
      id: '3',
      title: 'Tramvay',
      description:
          'Tramvay, Eskişehir’in en önemli ulaşım aracıdır. Estram olarak adlandırılır. Şehir içerisindeki birçok noktaya tramvay ile gidebilirsiniz. Toplamda 11 tane hattı ile her yere ulaşmanızı çok daha kolaylaştırmaktadır. Ulaşım ücreti öğrenciler için 4, öğrenci olmayanlar için ise 7,50 TL’dir. Durak yakınlarında bulunan büfelerden kart temin edilebilmektedir.',
      imageUrl:
          'https://www.tasimadunyasi.com/images/haberler/2021/09/eskisehir_de_tramvay_seferlerine_okul_duzenlemesi_h9822_4a87b.jpg',
    ),
    Ulasim(
      id: '4',
      title: 'Dolmuş',
      description:
          'Eskişehir’de tramvay ve otobüs kullanan kişi sayısı oldukça fazla olsa da, geleneksel bir ulaşım seçeneği olan minibüsler hala varlığını sürdürmektedir. Yakın ilçeler arası ulaşımda sıklıkla tercih edilen minibüsler, Odunpazarı ve Tepebaşı gibi merkezi bölgelere ve merkezin uzak noktalarına ulaşım olanağı sunmaktadır. Eskişehir’de minibüs hatları; 3,5, 7, 10, 11, 12, 16K, 16S, 18 gibi hatlardır. Eskişehir Belediyesi’nin resmi internet adresini ziyaret ederek, minibüs numaralarına göre sorgulama yapabilir ve güzergahlar hakkında bilgi sahibi olabilirsiniz. Minibüsler, genel olarak 06:30 ile 22:00 saatleri arasında hizmet vermektedir. Hafta sonları ve özel günlerde saatler değişiklik gösterebilmektedir. Merkezi bölgelerde hizmet veren minibüsler, ortalama 10-15 dakikada bir kalkmaktadır.',
      imageUrl:
          'https://www.eskisehir.net/images/haberler/minibus-guzergahlari-degisti_30888b14-3433-4c3c-a10c-77d0d6bc23a2.jpg',
    ),
    Ulasim(
      id: '5',
      title: 'Taksi',
      description:
          'Eskişehir’in tramvay ve otobüs imkanları ve neredeyse her yerin yürüme mesafesinde olmasından dolayı taksiyi tercih etmeye çok gerek duyulmamaktadır. Eskişehir’de taksi fiyatları birçok şehre oranla daha pahalıdır. Otogardan şehir merkezine gitmek isterseniz yaklaşık 50 ila 70 TL arası tutmaktadır.',
      imageUrl:
          'https://www.eskisehir.net/images/haberler/son-model-luks-otomobilini-taksi-yapti_5bed8052-58a2-4b67-bd06-3885e0fc0bb8.jpg',
    ),
  ];
}
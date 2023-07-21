class Hotels {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;
  

  const Hotels({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });  


  static const List<Hotels> hotels = [
    Hotels(
      id: '1',
      title: 'Tasigo Hotel',
      description:
          "Toprağın pozitif enerjisini yansıtan Tasigo Hotels Eskisehir Bademlik Termal; doğadan ilham alınarak tasarlanan konforlu atmosferiyle konuklarına eşsiz bir ortam sunuyor. Eskişehir'in panoramik manzarasına hakim olan Tasigo Hotels Eskisehir Bademlik Termal; doğanın kalbinde, yemyeşil bir çevre içinde dinlenmek ve yenilenmek isteyenler için tasarlanmıştır.",
      imageUrl:
          'https://www.tasigo.com/wp-content/uploads/2022/02/tasigo-slider-2.jpg',
      price: 2500.0,
      rating: 5,
    ),
    Hotels(
      id: '2',
      title: 'OMM Inn',
      description:
          'OMM INN, Odunpazarı Modern Müze’nin bir uzantısı olarak tasarlandı. Eskişehir’in Unesco Dünya Kültür Mirasları Geçici Listesi’nde yer alan tarihi Odunpazarı bölgesinde bulunan OMM INN, Osmanlı sivil mimarisini yansıtan geleneksel Odunpazarı evlerine getirdiği çağdaş yorumla yalın ve konforlu bir konaklama deneyimi sunuyor. Sanatçıları, sanatseverleri ve bu ayrıcalıklı atmosferi yaşamak isteyen tüm konuklarını ağırlayacak olan OMM INN’de incelikle düşünülen detaylar her anı özel kılıyor. Odunpazarı’nın kalbinde yer alan OMM INN’in avlusundaki restoran ve kafeler günün her saatinde tadını çıkarabileceğiniz birbirinden farklı alternatifler sunuyor. Ek bir bilgi, kahvaltıda hayvansal ürünler kullanılmamaktadır.',
      imageUrl:
          'https://images.odamax.com/img/1024x768/odamax/image/upload/ru4xyckkzzhueyvqsj6d.jpg',
      price: 2000.0,
      rating: 5,
    ),
    Hotels(
      id: '3',
      title: 'Park Dedeman',
      description:
          'Eskişehir şehir merkezinde konumlanan Park Dedeman Eskişehir, modern mimarisi, deneyimli personelleri, konforlu odaları ve zengin olanaklarıyla hizmet veriyor. Hem iş seyahatleri hem de turistik geziler için ideal bir konaklama alternatifi sunan tesiste, ofis şıklığı sunan donanımlı bir toplantı salonu mevcut. Tesiste restoran, kafe, lobi barı, sanat galerisi vardır ve düzenli olarak canlı müzik performansları sunulur. Araç kiralama ve bebek bakıcılığı hizmetleri mevcuttur. Ayrıca hayvan dostu bir oteldir.',
      imageUrl:
          'https://media-cdn.tripadvisor.com/media/photo-p/15/c9/fc/8a/parkdedemaneskisehir.jpg',
      price: 1500.0,
      rating: 5,
    ),
    Hotels(
      id: '4',
      title: 'The Merlot Hotel',
      description:
          'The Merlot Hotel Eskişehir şehir merkezinde bulunmakta, tren istasyonuna 1 km, havaalanına 7 km, 4 yıldız iş otelidir. Açık büfe kahvaltı servisi ve otopark ücretsizdir. Ferah ortamlı 2 restoranda zeminden tavana kadar uzanan pencereler bulunur.',
      imageUrl:
          'https://images.odamax.com/img/1024x768/odamax/image/upload/v7i3oqlcj62xgeakcagz.jpg',
      price: 1600.0,
      rating: 5,
    ),
    Hotels(
      id: '5',
      title: 'Ramada Plaza by Wyndham',
      description:
          "Ramada Plaza by Wyndham Eskişehir'de bulunan bu canlı şehrin büyüsünü keşfederken uluslararası otel zincirinin sağladığı tüm rahatlığın keyfini çıkarın. Şehir merkezine yürüme mesafesinde, toplu taşıma araçlarına birkaç dakika, Hasan Polatkan Havalimanı'na (AOE) yedi kilometre uzaklıkta ideal bir konuma sahip olan modern otel; ücretsiz WiFi ve otopark, restoran, bar ve 7/24 fitness merkeziyle sizi karşılar. İş amaçlı seyahat edenler şirket ofislerine kolayca ulaşırken tatil amaçlı gelenler tarihi Odunpazarı bölgesini gezebilir ve Kent Park'ı ziyaret edebilir.",
      imageUrl:
          'https://www.wyndhamhotels.com/content/dam/property-images/en-us/ra/tr/others/eskisehir/56227/56227_lobby_view_1.jpg?crop=3000:2000;*,*&downsize=1800:*',
      price: 1400.0,
      rating: 4,
    ),
    Hotels(
      id: '6',
      title: 'Capella Otel',
      description:
          "Eskişehir’de merkezi konumu ile ilgi gören Capella Otel, misafirlerine hem iş seyahatleri hem de turistik konaklamalar için konforlu bir konaklama deneyimi sunuyor. Tesisin odalarında; çay-kahve seti, su ikramı, su ısıtıcısı, klima, kablosuzu internet erişimi, TV ve uydu yayını gibi olanaklar yer alıyor. Tesis, Espark Alışveriş Merkezi'ne 200 m, Tren İstasyonu'na 600 m, Tarihi Odunpazarı Evlerine 1,5 km, Eskişehir Havaalanı’na 5,5 km, stadyuma 3 km, Anadolu Üniversitesi’ne 1,2 km, Porsuk Çayı’na 800 m ve Barlar Sokağı’na 500 metre mesafede konumlanıyor.",
      imageUrl:
          'https://images.odamax.com/img/1024x768/odamax/image/upload/irjw5egh2pl1x1zno4qt.jpg',
      price: 1300.0,
      rating: 4,
    ),
    Hotels(
      id: '7',
      title: 'Grande Arte Hotel',
      description:
          "Eskişehir'in merkezinde yer alan Grande Arte Hotel, Espark Avm, Adalar ,Porsuk Çayı, gibi bir çok yere yürüme mesafesindedir. Misafirler spada masaj ile kendilerini şımartabilir ve kahve dükkânı/kafe olanağından yararlanıp bir şeyler atıştırabilir. Kapalı yüzme havuzu ve bar/dinlenme salonu, bu Art Deco stili otel dâhilindeki diğer öne çıkan özellikler arasındadır.",
      imageUrl:
          'https://images.odamax.com/img/1024x768/odamax/image/upload/ZmlsZU5hbWU9Z3JhbmRlLWFydGUtZGlzzKc_20211105160413.jpg',
      price: 1200.0,
      rating: 4,
    ),
    Hotels(
      id: '8',
      title: 'Grande Stella Hotel',
      description:
          "Eskişehir’de konuklarına konforlu ve huzurlu bir konaklama vaat eden Grande Stella Hotel, zarif mimarisi ve geniş olanaklarıyla öne çıkıyor. Sabahları zset menü kahvaltı servis eden tesiste çocuklu aileler için bebek yatağı ve mama sandalyesi sağlanıyor. Tesis; oda servisi, meyve tabağı ve çay-kahve servisi, odalarımızda ve genel alanlarda kablosuz internet erişiminin yanı sıra vale servisi ile misafirlerine ayrıcalıklı bir konaklama deneyimi yaşatıyor. Misafirler tesis koridorlarındaki karekodları takip ederek Eskişehir’de sanal bir yolculuğa yapabiliyor. Tesiste ayrıca çamaşır yıkama ve ütü servisi de bulunuyor. Tesis Şehir Merkezindedir. Çarşıda merkezde bulunan Polis Karakolunun tam karşısındadır. Barlar sokağının hemen arkasında bulunmaktadır.",
      imageUrl:
          'https://images.odamax.com/img/1024x768/odamax/image/upload/ZmlsZU5hbWU9ZHNjXzY5NDEtZHNjXzY5NDU_20210505003742.jpg',
      price: 900,
      rating: 4,
    ),
    Hotels(
      id: '9',
      title: 'Nova Vista Deluxe & Suites',
      description:
          "Bu şık otel, hem Odunpazarı Modern Müze'ye hem de Sazova Bilim Kültür ve Sanat Parkı'na 4 km uzaklıktadır. Rahat odalarda mini mutfak, WiFi, TV ve kasa bulunur. Süitlerde ayrı oturma alanı da vardır. Oda servisi mevcuttur.Restoran, spor salonu ve toplantı salonu mevcuttur. Diğer imkanlar arasında kahvaltı ve otopark yer alır.",
      imageUrl:
          'https://images.odamax.com/img/1024x768/odamax/image/upload/ZmlsZU5hbWU9MQ_20221130150749.jpg',
      price: 1500.0,
      rating: 5,
    ),
  ];
}
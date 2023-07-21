class Activity {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double rating;
  

  const Activity({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.rating,
  });  


  static const List<Activity> activities = [
    Activity(
      id: '1',
      title: 'Tarihi Odunpazarı Evleri',
      description:
          'Kentin tarih kokan nostaljik merkezi Odunpazarı, Eskişehir gezilecek yerler listesinin ilk sırasında bulunuyor. Evleri, çarşısı, sokakları, türbeleri, müzeleri, insanları ve genel tarihi dokusu ile turistler için çok cazibeli bir nokta. Odunpazarı’na karakteristik bir özellik kazandıran ve Osmanlı mimarisini yüzyıllar öncesinden günümüze taşıyan tarihi evler çok iyi korunmuş. Cumbalı, rengarenk ve birbirlerine yapışık olan Odunpazarı Evleri dönemsel olarak restore de ediliyor.Yenilenen evlerin bir kısmında hala yaşayan insanlar var ama çoğu restoran, kafe, müze, dükkan olarak kullanılıyor. 2-3 katlı olan evler dar sokaklar boyunca yan yana dizilmiş.',
      imageUrl:
          'https://pbs.twimg.com/media/EO5rVczXsAATfR1.jpg',
      rating: 4.5,
    ),
    Activity(
      id: '2',
      title: 'Sazova Bilim Kültür ve      Sanat Parkı',
      description:
          'Eskişehir gezilecek yerler arasında kesinlikle önem verilmesi gereken yerlerden birisi de Sazova Parkıdır. 400.000 metrekarelik bir alana inşa edilen Sazova Parkı Türkiye’deki en güzel parklardan bir tanesi, resmen Disneyland’in Eskişehir şubesi! Başta çocuklar olmak üzere her yaştan bireye hitap eden park kültür, sanat, bilim ve eğlence alanlarının çokluğu ile dikkat çekiyor. Parkta gezebileceğiniz alanlar arasında Sabancı Uzay Evi, Bilim Deney Merkezi, Esminyatürk, Türk Dünyası Bilim, Kültür ve Sanat Merkezi, Eskişehir Hayvanat Bahçesi, Japon Bahçesi, Eti Sualtı Dünyası, yapay gölet, oyun alanları, Korsan Gemisi, Masal Şatosu gibi birçok yer bulunuyor.',
      imageUrl:
          'https://images.unsplash.com/photo-1603998919253-91b6eeb8b8e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2074&q=80',
      rating: 4,
    ),
    Activity(
      id: '3',
      title: 'Adalar ve Porsuk Çayı',
      description:
          'Eskişehir’de gezilecek yerler arasında kente Venedik’e benzer bir hava veren Porsuk Çayı da bulunuyor. Porsuk Çayı’nı ve Adalar Bölgesi’ni etrafında bulunan birçok kafeden birinde oturarak da görebilirsiniz, ama hele de yaz aylarında gittiyseniz gondol veya bot turları daha keyifli zaman geçirmeniz açısından iyi bir seçenek olabilir. Üstelik gondol turları da bot turları da oldukça uygun fiyatlılar çünkü belediye tarafından yapılıyorlar.',
      imageUrl:
          'https://tymbrishotel.com.tr/wp-content/uploads/2019/11/tymbris-hotel-eskisehir-adalar-porsuk-e1572709314600-1200x675.jpg',
      rating: 4,
    ),
    Activity(
      id: '4',
      title: 'Odunpazarı Modern Müze    (OMM)',
      description:
          '2019’da açılan Odunpazarı Modern Müze, Eskişehir Odunpazarı’nda, Türkiye’den ve dünyadan modern ve çağdaş sanat eserlerinin sergilendiği yepyeni bir müze. Müzenin tasarımı, dünyaca ünlü Japon mimarlık ofisi Kengo Kuma and Associates tarafından yapıldı. Müzede farklı sergi alanlarında etkileyici eserler sunuluyor. Japon bambu ustası Chikkunsai IV tarafından yapılan eser ise müzenin favori parçalarından biri. Resim ve heykeller başta olmak üzere müzede yeni medya akımına dair örnekleri de bulmanız mümkün. Ayrıca binada bir mağaza ve kafe de mevcut. Modern sanat temasına ilgi duyuyorsanız Eskişehir’deki bu müzeyi mutlaka ziyaret edin.',
      imageUrl:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/9d/df/08/omm-odunpazari-modern.jpg?w=1200&h=1200&s=1',
      rating: 5,
    ),
    Activity(
      id: '5',
      title: 'Yılmaz Büyükerşen Balmumu Müzesi',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://www.eskisehir.bel.tr/img_sayfalar/big_82-2015-01-07-1420641749.jpg',
      rating: 4,
    ),
    Activity(
      id: '6',
      title: 'EBB Çağdaş Cam Sanatları Müzesi',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://cdn2.enuygun.com/media/lib/825x620/uploads/image/eskisehir-cagdas-cam-sanatlari-muzesi-37000.webp',
      rating: 4,
    ),
    Activity(
      id: '7',
      title: 'EBB Hayvanat Bahçesi',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'http://www.eskisehirhayvanatbahcesi.com/img_icerik/2017/big_9-3-2017-04-19-1492587156.jpg',
      rating: 4,
    ),
    Activity(
      id: '8',
      title: 'Kanlıkavak Parkı',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://burkaycanatar.com.tr/wp-content/uploads/2020/10/IMG_0880-scaled.jpg',
      rating: 4,
    ),
    Activity(
      id: '9',
      title: 'Kurşunlu Cami ve Külliyesi',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.unsplash.com/photo-1668617284114-1b05e710579f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80',
      rating: 4,
    ),
  ];
}
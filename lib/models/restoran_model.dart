class Restoran {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String price;
  final double rating;
  

  const Restoran({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });  


  static const List<Restoran> restoran = [
    Restoran(
      id: '1',
      title: 'Doyuran Kahvaltı Salonu',
      description:
          "Eskişehirliler -bilhassa öğrenciler- için kahvaltı denildiğinde akla gelen ilk mekanlardan biri Doyuran Kahvaltı Salonu. Özellikle menemeni ve tam bir enerji deposu bal-kaymak servisi sıkça tercih edilenlerden. Samimi ve küçük bir işletme olan Doyuran, ismiyle müsemma hakikaten doyurucu bir menü içeriğine sahip. Kahvaltının mutlulukla bir ilgisi vardır diyorsanız denemenizi öneririz.",
      imageUrl:
          'https://www.bizevdeyokuz.com/wp-content/uploads/doyuran-kahvalti-evi-eskisehir.jpg',
      price: '',
      rating: 4.5,
    ),
    Restoran(
      id: '2',
      title: 'Kasr-ı Nur Kahvaltı Salonu',
      description:
          "Gezilecek yerler listeniz epey kabarık, gün boyu enerjiniz yerinde olmalı. Keyifli bir seyahat için lezzetli bir başlangıç yapmak isterseniz Eskişehir’in tarihi dokulu Odunpazarı’nda bir kahvaltı mekanına davet ediyoruz sizleri. Kasr-ı Nur Kahvaltı Evi, 205 senelik bir geçmişe sahip. Restore edilmiş bir Osmanlı konağı olan bu mekanda en çok tercih edilen serpme köy kahvaltısı.",
      imageUrl:
          'https://i.nefisyemektarifleri.com/2018/04/18/eskisehirde-yemek-yiyebileceginiz-10-meshur-mekan.jpg',
      price: '₺-₺₺₺',
      rating: 4,
    ),
    Restoran(
      id: '3',
      title: 'Papağan Çiğ Börek',
      description:
          "Eskişehir’e gidip de çiğ börek yemeden dönmeyin sakın :) 1975 yılından günümüze tecrübeli bir kadroyla müşterilerini ağırlayan Papağan Çiğ Börek Salonu, Eskişehir halkının, üniversite öğrencilerinin, yerli ve yabancı turistlerin uğrak noktası halini almış. Öyle ki çiğ börek için bir şiir bile var! 'Başın avursa ya da kelse bir ağır sancı dakkasında keser şırbörektir ilacı.'",
      imageUrl:
          'https://gastromanya.com/wp-content/uploads/2016/09/klcboovvf.png',
      price: '₺-₺₺₺',
      rating: 4,
    ),
    Restoran(
      id: '4',
      title: 'Ayten Usta Gurme Butik Restoran',
      description:
          'Eskişehir’de nerede ne yenir? Sorunuzu yepyeni durağımızda cevaplıyoruz: Ayten Usta Gurme! Yemek, kahvaltı, Türk mutfağı yöresel lezzetlerini anne eli değmiş tariflerden tadabileceğiniz bu mekan, özellikle hafta sonu kahvaltılarının da en gözde adresi! Çömlekte ispir kuru fasulye ile tanınan Ayten Usta, kahvaltıdan ana yemeğe Osmanlı ve Türk mutfağının sentezi pek çok yemeği sizlere sunuyor olacak, denemeye değer!',
      imageUrl:
          'https://www.kahvaltifiyatlari.com/wp-content/uploads/2021/12/3-23.png',
      price: '₺₺',
      rating: 5,
    ),
    Restoran(
      id: '5',
      title: 'Fahrettin Usta Kebap Salonu',
      description:
          '1965 yılında Fahrettin Usta’mızın amcasının yanında ızgaracı olarak başladığı lezzet serüveni günümüze kadar devam etmektedir. Et ve köfteleri daha iyi pişirebilmek için eşinin kömür ütüsünü kullanarak kendine özgü pişirme yöntemini bulan Fahrettin Usta’mız Ütülü Balaban Kebabı‘nın mucidi olmuştur',
      imageUrl:
          'https://media-cdn.tripadvisor.com/media/photo-p/0e/b2/38/06/kofte.jpg',
      price: '₺',
      rating: 4,
    ),
    Restoran(
      id: '6',
      title: 'Pino',
      description:
          '35 yıl önce genç bir girişimci tarafından 7 metrekarelik bir apartman boşluğunda açılan Pino, şu anda Eskişehir’in farklı konumlarında şubeleri bulunan bir restoran zinciri. Pino’da hamburger, pizza, çeşitli sandviçler, tava seçenekleri ve aperitifler hazırlanıyor. Eskişehir’in yerli fast food markası Pino, genç üniversitelilerin de sıkça tercih ettiği kaliteli bir mekan.',
      imageUrl:
          'https://i.nefisyemektarifleri.com/2018/04/18/eskisehirde-yemek-yiyebileceginiz-10-meshur-mekan-5.jpg',
      price: '₺',
      rating: 4,
    ),
    Restoran(
      id: '7',
      title: 'Trakya Restaurant',
      description:
          'İkinci Dünya Savaşı sırasında Yunanistan’dan Eskişehir’e göç eden bir aile tarafından 1946 yılında açılan bu restoran, tercihini şık bir akşam yemeğinden yana kullanmak isteyen gezginler için oldukça ideal ve nezih bir mekan. Et, tavuk, balık, makarna gibi farklı seçenekler sunan zengin menüsü ve kaliteli hizmetiyle Trakya Restoran, bir Eskişehir klasiği haline gelmeyi hedefliyor.',
      imageUrl:
          'https://i.nefisyemektarifleri.com/2018/04/18/eskisehirde-yemek-yiyebileceginiz-10-meshur-mekan-7.jpg',
      price: '₺',
      rating: 4,
    ),
    Restoran(
      id: '8',
      title: 'Mazlumlar Muhallebicisi',
      description:
          '1927 yılında hizmet vermeye başlayan Mazlumlar Muhallebicisi, kurulduğu yıldan bu güne aynı lezzet anlayışıyla geleneksel tatlılar hazırlıyor. Muhallebi kültürünü kourmayı amaçlayan Mazlumlar Muhallebi, tamamı doğal ürünlerle hazırladığı tatlıları Haller Gençlik Merkezi’ndeki dükkanında sunuyor. Tüm sütlü tatlı çeşitlerini bulabileceğiniz Mazlumlar’da, yılların tecrübeli lezzetleri sizleri bekliyor.',
      imageUrl:
          'https://i.nefisyemektarifleri.com/2018/04/18/eskisehirde-yemek-yiyebileceginiz-10-meshur-mekan-8.jpg',
      price: '₺',
      rating: 4,
    ),
    Restoran(
      id: '9',
      title: 'Tanınmış Helvacı',
      description:
          'Eskişehir’in meşhur met helvasını tatmak için en doğru mekan Tanınmış Helvacı. 1875 yılında kurulmuş küçük ve samimi bir aile işletmesi olan bu mekanda helvalar her daim taze ve yumuşacık. Lezzet sırrı babadan oğula geçen bu helvalar Eskişehir halkı tarafından sıklıkla tüketiliyor. Eskişehir’den sevdiklerinize yöresel lezzetli birer hediye de olabilir.',
      imageUrl:
          'https://i.nefisyemektarifleri.com/2018/04/18/eskisehirde-yemek-yiyebileceginiz-10-meshur-mekan-9.jpg',
      price: '₺',
      rating: 5,
    ),
  ];
}
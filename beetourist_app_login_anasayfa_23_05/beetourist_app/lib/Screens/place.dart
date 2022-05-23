import 'package:flutter/material.dart';

class Places with ChangeNotifier {
  String typeOfPlace = 'All';
  final List<Place> _items = [
    Place(
      id: '1',
      title: 'Likya',
      thumbnailUrl: 'https://st3.depositphotos.com/1006362/18302/i/450/depositphotos_183028560-stock-photo-beautiful-nature-landscapes-turkey-mountains.jpg',
      shortDescription:
      'Likya, Roma ve Bizans uygarlıklarından kalan tarihi yapıları olan Olimpos' + 'ta hem doğal hem gizemli bir tatil geçirebilirsiniz. Çıralı' + 'da 3 bin yıldır yanan ateşi görebilir, dünyanin en güzel kumsallarından birinde denize girebilirsiniz.',
      genre: 'Deniz',
    ),
    Place(
      id: '2',
      title: 'Alaçatı',
      thumbnailUrl: 'https://st4.depositphotos.com/2810819/29655/i/450/depositphotos_296552170-stock-photo-windsurfers-alacati-izmir-turkey.jpg',
      shortDescription:
      'Alaçatı, her milletten sörfçünün akın ettiği yerlerin başında geliyor. Hem rüzgarıyla yılın tüm zamanlarında sörf yapma imkanı tanıyor hem de doğal güzellikleri, mimarisi ve yetiştirilen doğal ürünleriyle sizi bekliyor.',
      genre: 'Deniz',
    ),
    Place(
      id: '3',
      title: 'Uzungöl',
      thumbnailUrl: 'https://st4.depositphotos.com/6005834/37919/i/450/depositphotos_379196696-stock-photo-uzungol-lake-view-long-lake.jpg',
      shortDescription:
      'Uzungöl, dağların arasına gizlenmiş bir düş bahçesi adeta. Yeşilin binbir tonu, rengarenk çiçekler, yayla serinliği... Yapılaşma çoğalmadan yolunuzu Uzungöl'+'e düşürün.',
      genre: 'Yeşil',
    ),
    Place(
      id: '4',
      title: 'Selimiye Camii',
      thumbnailUrl: 'https://image.shutterstock.com/image-photo/mimar-eseri-edirne-selimiye-camii-600w-1744678595.jpg',
      shortDescription:
      'Edirne Selimiye Camii, Mimar Sinan'+'ın başyapıtlarindan biri. Aynı zamanda Osmanlı-Türk mimarisinin de doruk noktası. İçeride bulunan çinilerin, hatların, mermerlerin ve işlemelerin hepsi ise ayrı bir sanat eseri.',
      genre: 'Tarihi',
    ),
    Place(
      id: '5',
      title: 'Uluabat Gölü',
      thumbnailUrl: 'https://st4.depositphotos.com/19554348/29200/i/1600/depositphotos_292007844-stock-photo-apolyont-ulubat-lake-glyazi-bursa.jpg',
      shortDescription: 'Bursa'+'ya 34 km uzaklıktaki Uluabat Gölü, yapısı itibariyle değişik türden yüzbinlerce su kuşuna beslenme ve barınma olanağı sağlıyor. Su içinde yaşayan canlılar için de zengin bir yapıya sahip gölde 21 çeşit balık bulunuyor.',
      genre: 'Göl',
    ),
    Place(
      id: '5',
      title: 'Konya',
      thumbnailUrl: 'https://st2.depositphotos.com/2115371/9350/i/450/depositphotos_93503748-stock-photo-the-mevlana-square.jpg',
      shortDescription: 'Konya, tarihi ve kültür mirası ile tam bir açık hava müzesi. Hz. Mevlana'+'nın iklimini hissetmek, onu yaşamak isteyenler yolunu muhakkak bu kente düşürmeli.',
      genre: 'Şehir',
    ),
  ];

  List<Place> currentList() {
    if (typeOfPlace == 'All') {
      return _items;
    }
    List<Place> newList =
    _items.where((place) => place.genre == typeOfPlace).toList();
    return newList;
  }

  void changeTypeOfPlaceInMain(String currentType) {
    typeOfPlace = currentType;
    notifyListeners();
  }

  void addingNewPlaceMethod(Place newPlace) {
    _items.add(newPlace);
  }
}

class Place {
  String id;
  String title;
  String thumbnailUrl;
  String shortDescription;
  String genre;

  Place(
      {required this.id,
        required this.title,
        required this.thumbnailUrl,
        required this.shortDescription,
        required this.genre});
}
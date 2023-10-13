import 'package:flutter/material.dart';

class CommonProvider extends ChangeNotifier {
  List<dynamic> products = [];
  List<dynamic> accProducts = [
    [[], [], [], []],
    [
      [
        {
          "_id": "651683fdafc69d045ca9b354",
          "photo": [
            "Sweetgovi1.jpg",
            "Sweetgovi2.jpg",
            "Sweetgovi3.jpg",
            "Sweetgovi4.jpg",
            "Sweetgovi5.jpg"
          ],
          "description": "add after",
          "Image": ["Sweetgovi6.jpg", "Sweetgovi7.jpg"],
          "Location": "Elsen Tasarkhai",
          "Phonenumber": "70116169",
          "name": "Sweet Gobi Geolodge",
          "productType": "Elsen Tasarkhai",
          "Facebook":
              "https://www.facebook.com/pages/Sweet%20Gobi%20Geolodge/204806266581498/photos/",
          "Email": "oonh@outofnowhere.asia",
          "__v": 0
        },
        {
          "_id": "6516845bafc69d045ca9b358",
          "photo": ["BaynGovi1.jpg", "BaynGovi2.jpg", "BaynGovi3.jpg"],
          "description": "add after",
          "Image": ["BaynGovi1.jpg", "BaynGovi2.jpg", "BaynGovi3.jpg"],
          "Location": "Elsen Tasarkhai",
          "Phonenumber": "88079199",
          "name": " Баянговь  жуулчны бааз",
          "productType": "Elsen Tasarkhai",
          "Facebook":
              "https://www.facebook.com/search/top/?q=%D0%91%D0%90%D0%AF%D0%9D%D0%93%D0%9E%D0%92%D0%AC%20%D0%91%D0%90%D0%90%D0%97",
          "Email": "BaynGoivi@outofnowhere.asia",
          "__v": 0
        }
      ],
      [],
      [
        {
          "_id": "6516755fafc69d045ca9b32a",
          "photo": [
            "ugii1.jpg",
            "ugii2.jpg",
            "ugii3.jpg",
            "ugii4.jpg",
            "ugii5.jpg",
            "ugii6.jpg"
          ],
          "description": "add after",
          "Image": [
            "ugii1.jpg",
            "ugii2.jpg",
            "ugii3.jpg",
            "ugii4.jpg",
            "ugii5.jpg",
            "ugii6.jpg"
          ],
          "Location": "Монгол Улс Архангай аймаг, Өгий нуур сум. Орхон баг",
          "Phonenumber": "9905 8699",
          "name": "Өгий Далай жуулчны бааз",
          "productType": "Ugii Lake",
          "Facebook": "https://www.facebook.com/Ugiinuur.mn",
          "Email": "suren_ts699@yahoo.com",
          "__v": 0
        },
        {
          "_id": "65167660afc69d045ca9b32c",
          "photo": [
            "KhatanUgii1.jpg",
            "KhatanUgii2.jpg",
            "KhatanUgii3.jpg",
            "KhatanUgii4.jpg",
            "KhatanUgii5.jpg"
          ],
          "description": "add after",
          "Image": [
            "KhatanUgii1.jpg",
            "KhatanUgii2.jpg",
            "KhatanUgii3.jpg",
            "KhatanUgii4.jpg",
            "KhatanUgii5.jpg"
          ],
          "Location":
              "Өгий нуур сум. Өгий нуурын урд эрэг дээр Зүүн хясаа хэмээх газар байрладаг. Хойд замаар Улаанбаатараас 340 км, Хархорины замаар Улаанбаатараас 430 км явна",
          "Phonenumber": "8017 4647",
          "name": "Khatan-Ugii tourist camp",
          "productType": "Ugii Lake",
          "Facebook": "https://www.facebook.com/profile.php?id=100057585304270",
          "Email": "khatanugiicamp@gmail.com",
          "__v": 0
        },
        {
          "_id": "651676aeafc69d045ca9b32e",
          "photo": [
            "UgiiHishig1.jpg",
            "UgiiHishig2.jpg",
            "UgiiHishig3.jpg",
            "UgiiHishig4.jpg",
            "UgiiHishig5.jpg",
            "UgiiHishig6.jpg",
            "UgiiHishig7.jpg",
            "UgiiHishig8.jpg",
            "UgiiHishig10.jpg",
            "UgiiHishig11.jpg",
            "UgiiHishig12.jpg"
          ],
          "description": "add after",
          "Image": [
            "UgiiHishig1.jpg",
            "UgiiHishig2.jpg",
            "UgiiHishig3.jpg",
            "UgiiHishig4.jpg",
            "UgiiHishig5.jpg",
            "UgiiHishig6.jpg",
            "UgiiHishig7.jpg",
            "UgiiHishig8.jpg",
            "UgiiHishig10.jpg",
            "UgiiHishig11.jpg",
            "UgiiHishig12.jpg"
          ],
          "Location":
              "Архангай аймаг, Өгий нуур сум, Өгий нуурын чанх хойд эрэг дээр байрладаг.",
          "Phonenumber": "+976 86256868",
          "name": "ӨГИЙ Хишиг БААЗ",
          "productType": "Ugii Lake",
          "Facebook": "https://www.facebook.com/profile.php?id=100057585304270",
          "__v": 0
        }
      ],
      []
    ],
  ];
  List<dynamic> categories = [];
  List<dynamic> eventCategories = [];
  List<dynamic> eventProducts = [];
  int categoryIndex = 0;
  int productIndex = 0;
  int accProductIndex = 0;
  int accSubCategoryIndex = 0;
  int accCategoryIndex = 0;

  void setProducts(List data) {
    products.add(data);
    print(products);
    notifyListeners();
  }

  void setCategories(List data) {
    categories = data;
    notifyListeners();
  }

  void setEventCategories(List data) {
    eventCategories = data;
    notifyListeners();
  }

  void setEventProducts(List data) {
    eventProducts.add(data);
    notifyListeners();
  }

  void setCategoryIndex(int index) {
    categoryIndex = index;
    print(categoryIndex);
    notifyListeners();
  }

  void setProductIndex(int index) {
    productIndex = index;
    print(productIndex);
    notifyListeners();
  }

  List getCategoryProducts(int index) {
    return products[index];
  }

  int getCategoryIndex() {
    return categoryIndex;
  }

  int getProductIndex() {
    return productIndex;
  }

  List<dynamic>? getProducts(String name) {
    if (name == 'desProduct') {
      return products;
    } else if (name == '') {
      return accProducts;
    } else if (name == 'eventProduct') {
      return eventProducts;
    }
  }
}

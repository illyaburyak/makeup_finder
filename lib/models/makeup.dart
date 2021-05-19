import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

class MakeUp with ChangeNotifier {
  final String id;
  final String brand;
  final String name;
  final double price;
  final String img;
  final String descr;
  final String prodType;
  bool isFavorite;
  bool isWant;
  bool isBought;
  bool isDislike;

  MakeUp({
    @required this.id,
    @required this.name,
    @required this.brand,
    @required this.price,
    @required this.img,
    @required this.descr,
    @required this.prodType,
    this.isFavorite,
    this.isBought,
    this.isDislike,
    this.isWant,
  });
}

class MakeUpsProvider with ChangeNotifier {
  List<MakeUp> _makeupItems = [
    MakeUp(
      id: '1',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 10.0,
      img:
          'https://static-assets.glossier.com/production/spree/images/attachments/000/001/631/portrait_normal/SC_Carousel_1_copy_2.jpg?1506948615',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Foundation',
    ),
    MakeUp(
      id: '1',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 10.0,
      img:
          'https://static-assets.glossier.com/production/spree/images/attachments/000/001/631/portrait_normal/SC_Carousel_1_copy_2.jpg?1506948615',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Foundation',
    ),
    MakeUp(
      id: '1',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 10.0,
      img:
          'https://static-assets.glossier.com/production/spree/images/attachments/000/001/631/portrait_normal/SC_Carousel_1_copy_2.jpg?1506948615',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Foundation',
    ),
    MakeUp(
      id: '1',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 10.0,
      img:
          'https://static-assets.glossier.com/production/spree/images/attachments/000/001/631/portrait_normal/SC_Carousel_1_copy_2.jpg?1506948615',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Foundation',
    ),
    MakeUp(
      id: '2',
      name: 'Mineral Blush',
      brand: 'marienatie',
      price: 20.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/06/Rejuva-Minerals-Multi-Purpose-Powder-Eye-Shadow-Face-1.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eyeshadow',
    ),
    MakeUp(
      id: '2',
      name: 'Mineral Blush',
      brand: 'marienatie',
      price: 20.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/06/Rejuva-Minerals-Multi-Purpose-Powder-Eye-Shadow-Face-1.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eyeshadow',
    ),
    MakeUp(
      id: '2',
      name: 'Mineral Blush',
      brand: 'marienatie',
      price: 20.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/06/Rejuva-Minerals-Multi-Purpose-Powder-Eye-Shadow-Face-1.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eyeshadow',
    ),
    MakeUp(
      id: '2',
      name: 'Mineral Blush',
      brand: 'marienatie',
      price: 20.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/06/Rejuva-Minerals-Multi-Purpose-Powder-Eye-Shadow-Face-1.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eyeshadow',
    ),
    MakeUp(
      id: '3',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 30.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/csm/Eyeliner-Group_300dpi_1024x1024_a2ac069c-f517-46bf-a215-8d31f5e948c91.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eyeliner',
    ),
    MakeUp(
      id: '3',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 30.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/csm/Eyeliner-Group_300dpi_1024x1024_a2ac069c-f517-46bf-a215-8d31f5e948c91.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eyeliner',
    ),
    MakeUp(
      id: '3',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 30.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/csm/Eyeliner-Group_300dpi_1024x1024_a2ac069c-f517-46bf-a215-8d31f5e948c91.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eyeliner',
    ),
    MakeUp(
      id: '3',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 30.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/csm/Eyeliner-Group_300dpi_1024x1024_a2ac069c-f517-46bf-a215-8d31f5e948c91.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eyeliner',
    ),
    MakeUp(
      id: '4',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 40.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/06/Maia%E2%80%99s-Mineral-Galaxy-Mineral-Eye-Brow-Liner-Charcoal-Brown.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eeybrow',
    ),
    MakeUp(
      id: '4',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 40.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/06/Maia%E2%80%99s-Mineral-Galaxy-Mineral-Eye-Brow-Liner-Charcoal-Brown.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eeybrow',
    ),
    MakeUp(
      id: '4',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 40.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/06/Maia%E2%80%99s-Mineral-Galaxy-Mineral-Eye-Brow-Liner-Charcoal-Brown.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eeybrow',
    ),
    MakeUp(
      id: '4',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 40.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/06/Maia%E2%80%99s-Mineral-Galaxy-Mineral-Eye-Brow-Liner-Charcoal-Brown.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Eeybrow',
    ),
    MakeUp(
      id: '5',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 50.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/4f8578c9a7588249e95d463078b84de1_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Bronzer',
    ),
    MakeUp(
      id: '5',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 50.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/4f8578c9a7588249e95d463078b84de1_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Bronzer',
    ),
    MakeUp(
      id: '5',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 50.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/4f8578c9a7588249e95d463078b84de1_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Bronzer',
    ),
    MakeUp(
      id: '5',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'ejuva minerals',
      price: 50.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/4f8578c9a7588249e95d463078b84de1_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          "Our Multi Purpose Pressed Powders may be used for blush or eye shadow. Blended with antioxidants from Certified Organic Fruits, Berries &amp; Botanicals*. Made without any gluten containing ingredients. Mica free Pink Parfait and Papaya will offer a natural, ultra sheer semi-matte finish. The petals from beautiful crushed red roses that are found in Pink Parfait, are valued for their natural color and delightful aroma that they provide! Acai Berry will offer a natural, ultra sheer satin finish (mica added). VEGAN. Image one is Pink Parfait. Image two is Papaya, and image three is Acai Berry. Model in image four is wearing Papaya. Model in image five is wearing Acai Berry. To see a demonstration of Papaya, click on the video and fast forward to 3:44. Enjoy! This product is EWG VERIFIED&#x2122; and rated 'CLEAN'in the Think Dirty app! BPA and Phthalate free packaging. Plastic parts of compacts are recyclable. *Tiny flecks of fruit and botanical particles may be visible in powder. Pink Parfait and Papaya are Titanium Dioxide and Mica free. Net Weight: 2.8 gm.",
      prodType: 'Bronzer',
    ),
    MakeUp(
      id: '6',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 60.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/04/cest-moi-luminary-lip-crayon.png',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Lip Liner',
    ),
    MakeUp(
      id: '6',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 60.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/04/cest-moi-luminary-lip-crayon.png',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Lip Liner',
    ),
    MakeUp(
      id: '6',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 60.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/04/cest-moi-luminary-lip-crayon.png',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Lip Liner',
    ),
    MakeUp(
      id: '6',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 60.0,
      img:
          'https://www.purpicks.com/wp-content/uploads/2018/04/cest-moi-luminary-lip-crayon.png',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Lip Liner',
    ),
    MakeUp(
      id: '7',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 70.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/8980a2195fbd6f4a47e5b57ac2148e9b_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Lipstick',
    ),
    MakeUp(
      id: '7',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 70.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/8980a2195fbd6f4a47e5b57ac2148e9b_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Lipstick',
    ),
    MakeUp(
      id: '7',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 70.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/8980a2195fbd6f4a47e5b57ac2148e9b_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Lipstick',
    ),
    MakeUp(
      id: '7',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 70.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/8980a2195fbd6f4a47e5b57ac2148e9b_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Lipstick',
    ),
    MakeUp(
      id: '8',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 80.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/dba2438dde72fe06c8f7a672b9618b0a_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Mascara',
    ),
    MakeUp(
      id: '8',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 80.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/dba2438dde72fe06c8f7a672b9618b0a_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Mascara',
    ),
    MakeUp(
      id: '8',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 80.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/dba2438dde72fe06c8f7a672b9618b0a_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Mascara',
    ),
    MakeUp(
      id: '8',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 80.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/dba2438dde72fe06c8f7a672b9618b0a_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Mascara',
    ),
    MakeUp(
      id: '9',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 90.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/f426b2e2e9ff8e01788a0947aad93512_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Nail Polish',
    ),
    MakeUp(
      id: '9',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 90.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/f426b2e2e9ff8e01788a0947aad93512_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Nail Polish',
    ),
    MakeUp(
      id: '9',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 90.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/f426b2e2e9ff8e01788a0947aad93512_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Nail Polish',
    ),
    MakeUp(
      id: '9',
      name: 'ulti Purpose Powder - Blush & Eyeme',
      brand: 'lotus cosmetics usa"',
      price: 90.0,
      img:
          'https://d3t32hsnjxo7q6.cloudfront.net/i/f426b2e2e9ff8e01788a0947aad93512_ra,w158,h184_pa,w158,h184.jpg',
      descr:
          " cream to powder blush made with all natural ingredients that applies like a soft cream but finishes like a silky powder. Antioxidant-rich botanicals help moisturize the skin, while natural pigments provide long-lasting buildable color for a healthy, radiant glow. Made with natural and organic ingredients.",
      prodType: 'Nail Polish',
    ),
  ];

  List<MakeUp> get makeupItems {
    return [..._makeupItems];
  }

  // Future<dynamic> getProducts() async {
  //   final url = Uri.parse(
  //       'http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl&product_type=lipstick');

  //   try {
  //     // just sending get
  //     final response = await http.get(url);
  //     // we get res in map, with key as a string and vlaue as a map, but dart does't understand a bested map, so we put dynamic
  //     final bodyData = json.decode(response.body) as Map<String, dynamic>;
  //     final List<MakeUp> loadedProd = [];
  //     // creating a brand new product, from a server.
  //     bodyData.forEach(
  //       (prodId, prodData) {
  //         loadedProd.add(
  //           MakeUp(
  //             id: prodId,
  //             brand: prodData['brand'],
  //             name: prodData['name'],
  //             price: prodData['price'],
  //             img: prodData['image_link'],
  //             descr: prodData['description'],
  //             prodType: prodData['product_type'],
  //           ),
  //         );
  //       },
  //     );
  //     _makeupItems = loadedProd;
  //     notifyListeners();
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  MakeUp findById(String id) {
    return _makeupItems.firstWhere((el) => el.id == id);
  }

  List<MakeUp> findByProdType(String prodType) {
    return _makeupItems.where((el) => el.prodType == prodType).toList();
  }

  List<MakeUp> findByUniqProdType(List prodType) {
    List<MakeUp> uniqType = [];
    for (var prod in prodType) {
      // print(prod);
      for (int i = 1; i <= _makeupItems.length; i++) {
        print(_makeupItems[i]);
      }
      // uniqType += _makeupItems.where((el) => el.prodType == prod).toList();
    }
    return uniqType;
  }
}

class StarbucksMenuModel {
  StarbucksMenuModel({
    required this.menus,
  });
  late final List<Menus> menus;

  StarbucksMenuModel.fromJson(Map<String, dynamic> json) {
    menus = List.from(json['menus']).map((e) => Menus.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['menus'] = menus.map((e) => e.toJson()).toList();
    return data;
  }
}

class Menus {
  Menus({
    required this.displayOrder,
    required this.name,
    required this.products,
    required this.children,
    required this.id,
    required this.uri,
  });
  late final int displayOrder;
  late final String name;
  late final List<dynamic> products;
  late final List<Children> children;
  late final String id;
  late final String uri;

  Menus.fromJson(Map<String, dynamic> json) {
    displayOrder = json['displayOrder'];
    name = json['name'];
    products = List.castFrom<dynamic, dynamic>(json['products']);
    children =
        List.from(json['children']).map((e) => Children.fromJson(e)).toList();
    id = json['id'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['displayOrder'] = displayOrder;
    data['name'] = name;
    data['products'] = products;
    data['children'] = children.map((e) => e.toJson()).toList();
    data['id'] = id;
    data['uri'] = uri;
    return data;
  }
}

class Children {
  Children({
    required this.displayOrder,
    required this.name,
    required this.products,
    required this.children,
    required this.id,
    required this.uri,
  });
  late final int displayOrder;
  late final String name;
  late final List<Products> products;
  late final List<Children> children;
  late final String id;
  late final String uri;

  Children.fromJson(Map<String, dynamic> json) {
    displayOrder = json['displayOrder'];
    name = json['name'];
    products =
        List.from(json['products']).map((e) => Products.fromJson(e)).toList();
    children =
        List.from(json['children']).map((e) => Children.fromJson(e)).toList();
    id = json['id'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['displayOrder'] = displayOrder;
    data['name'] = name;
    data['products'] = products.map((e) => e.toJson()).toList();
    data['children'] = children.map((e) => e.toJson()).toList();
    data['id'] = id;
    data['uri'] = uri;
    return data;
  }
}

class Products {
  Products({
    required this.name,
    required this.formCode,
    required this.displayOrder,
    required this.productNumber,
    required this.productType,
    required this.availability,
    required this.assets,
    required this.sizes,
    required this.uri,
  });
  late final String name;
  late final String formCode;
  late final int displayOrder;
  late final int productNumber;
  late final String productType;
  late final String availability;
  late final Assets assets;
  late final List<Sizes> sizes;
  late final String uri;

  Products.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    formCode = json['formCode'];
    displayOrder = json['displayOrder'];
    productNumber = json['productNumber'];
    productType = json['productType'];
    availability = json['availability'];
    assets = Assets.fromJson(json['assets']);
    sizes = List.from(json['sizes']).map((e) => Sizes.fromJson(e)).toList();
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['formCode'] = formCode;
    data['displayOrder'] = displayOrder;
    data['productNumber'] = productNumber;
    data['productType'] = productType;
    data['availability'] = availability;
    data['assets'] = assets.toJson();
    data['sizes'] = sizes.map((e) => e.toJson()).toList();
    data['uri'] = uri;
    return data;
  }
}

class Assets {
  Assets({
    required this.thumbnail,
    required this.fullSize,
  });
  late final Thumbnail thumbnail;
  late final FullSize fullSize;

  Assets.fromJson(Map<String, dynamic> json) {
    thumbnail = Thumbnail.fromJson(json['thumbnail']);
    fullSize = FullSize.fromJson(json['fullSize']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['thumbnail'] = thumbnail.toJson();
    data['fullSize'] = fullSize.toJson();
    return data;
  }
}

class Thumbnail {
  Thumbnail({
    required this.large,
  });
  late final Large large;

  Thumbnail.fromJson(Map<String, dynamic> json) {
    large = Large.fromJson(json['large']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['large'] = large.toJson();
    return data;
  }
}

class Large {
  Large({
    this.uri,
  });
  late final String? uri;

  Large.fromJson(Map<String, dynamic> json) {
    uri = null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uri'] = uri;
    return data;
  }
}

class FullSize {
  FullSize({
    this.uri,
  });
  late final String? uri;

  FullSize.fromJson(Map<String, dynamic> json) {
    uri = null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uri'] = uri;
    return data;
  }
}

class Sizes {
  Sizes({
    required this.sizeCode,
  });
  late final String sizeCode;

  Sizes.fromJson(Map<String, dynamic> json) {
    sizeCode = json['sizeCode'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sizeCode'] = sizeCode;
    return data;
  }
}

enum Enums { url1, url2, url3 }

const String namePath = 'assets/urls/';

extension EnumsName on Enums {
  void getNames(Enums name) {
    final result = '$namePath$Enums[name]';
    print(result);
  }
}


// id,first_name,email,image_url
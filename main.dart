import 'dart:io';

void main() {

  

  Map<int, String> menu = {
    1 : '상품 목록 보기',
    2 : '장바구니에 담기',
    3 : '장바구니에 담긴 상품의 총 가격 보기',
    4 : '프로그램 종료'
  };

  print("----------------------------------------------------------------------");
  print(menu);
  print("----------------------------------------------------------------------");

  int? number = int.parse(stdin.readLineSync()!);


  switch (number){
    case 1:
      print("1입니다");
    case 2:
      print("2입니다");
    case 3:
      print("3입니다");
    case 4:
      print("4입니다.");
    default:
    print("지원하지 않는 기능입니다. ! 다시 시도해 주세요 ..");
  }
  
 
  // ShoppingMall object = ShoppingMall();
  // object.showProducts();

  // Product product = Product();
  // print(product.products);
}


//쇼핑몰을 정의하기 위한 클래스
class ShoppingMall{
  int Fprice;
  List<Product> Plist;

  ShoppingMall(this.Fprice, this.Plist);

// addToCart()
// showTotal()
}

//상품을 정의하는 클래스
class Product{
  Map<String, int> products = {
    "셔츠" : 45000,
    "원피스" : 30000,
    "반팔티" : 35000,
    "반바지" : 38000,
    "양말" : 5000
    };

}
// ??????????
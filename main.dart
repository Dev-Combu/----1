import 'dart:io';

//쇼핑몰을 정의하기 위한 클래스
class ShoppingMall {
  ShoppingMall(Pname, Pprice);

// addToCart()
// showTotal()
}

//상품을 정의하는 클래스
class Product {
  //Pname : 상품 이름, Pprice : 상품 가격
  List<String> Pname = ["셔츠", "원피스", "반팔티", "반바지", "양말"];
  List<int> Pprice = [45000, 3000, 35000, 38000, 5000];

}

void main() {
  var isRun = true;
  Product product = Product();
  var Pname = product.Pname;
  var Pprice = product.Pprice;
  ShoppingMall shoppingMall = ShoppingMall(Pname, Pprice);

  Map<int, String> menu = {
    1: '상품 목록 보기',
    2: '장바구니에 담기',
    3: '장바구니에 담긴 상품의 총 가격 보기',
    4: '프로그램 종료'
  };



// 메뉴 전체 무한 루프
  while (isRun) {
    int i;

    print(
        "----------------------------------------------------------------------");
    print(menu);
    print(
        "----------------------------------------------------------------------");

    String? number = stdin.readLineSync()!;

    switch (number) {
      case '1':
        for (i = 0; i < Pname.length; i++) {
          print(Pname[i]+"/"+Pprice[i].toString()+"원");
        }
      case '2':
        print("2입니다");
      case '3':
        print("3입니다");
      case '4':
        print("4입니다.");
      default:
        print("지원하지 않는 기능입니다. ! 다시 시도해 주세요 ..");
    }
  }

}

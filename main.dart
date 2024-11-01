import 'dart:io';

//쇼핑몰을 정의하기 위한 클래스
class ShoppingMall{
  List<Product> products = [
    Product("셔츠", 45000),
    Product("원피스", 30000),
    Product("반팔티", 35000),
    Product("반바지", 38000),
    Product("양말", 5000),
  ];

  int totalPrice = 0;

  
  void showProducts(){ //상품 목록 출력 함수
    for (int i = 0; i < products.length; i++) {
          print(products[i].Pname +  "/" + products[i].Pprice.toString() + "원");
        }
  }

  void addToCart(){ // 상품을 장바구니에 담는 메서드
    // try{
    int i;
      String? inumber = stdin.readLineSync()!;
      if (products.any((products) => products.Pname==inumber)==false){
          print("입력값이 올바르지 않아요1");
        }else{
          print(products[2].Pname);
          int? sdnumber = int.parse(stdin.readLineSync()!);
          if(sdnumber <= 0){
            print("입력값이 올바르지 않아요2");
          }else{
           // totalPrice +=products???Pprice*sdnumber;
            print("장바구니에 상품이 담겼어요");
          }
        }
    // }catch(e){
    //   print("입력값이 올바르지 않아요3");
    // }
    

  }

  void showTotal(){ // 장바구니에 담은 상품의 총 가격을 출력하는 메서드
    print("장바구니에 $totalPrice원 어치를 담으셨네요.");
  }
}

//상품을 정의하는 클래스
class Product {
  //Pname : 상품 이름, Pprice : 상품 가격
  String Pname;
  int Pprice;

   Product(this.Pname, this.Pprice);
}

void main() {

  var isRun = true;
  // Product product = Product();
  // var Pname = product.Pname;
  // var Pprice = product.Pprice;
  ShoppingMall shoppingMall = ShoppingMall();

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
        shoppingMall.showProducts();

      case '2':
        shoppingMall.addToCart();
      case '3':
        shoppingMall.showTotal();
      case '4':
        print("이용해주셔서 감사합니다 ~ 안녕히 가세요 !.");
        isRun = false;
      default:
        print("지원하지 않는 기능입니다. ! 다시 시도해 주세요 ..");
    }
  }
}

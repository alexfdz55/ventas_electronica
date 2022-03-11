import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/data/models/category_model.dart';
import 'package:ventas_electronica/app/data/models/product_model.dart';
import 'package:ventas_electronica/app/data/providers/categories_provider.dart';
import 'package:ventas_electronica/app/data/providers/products_provider.dart';
import 'package:ventas_electronica/app/modules/home/components/right_menu.dart';

class HomeController extends GetxController {
  PageController pageController = new PageController(initialPage: 0);
  final ScrollController scrollController = ScrollController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final categoriesProvider = CategoriesProvider();
  final productsProvider = ProductsProvider();
  List<Category> categories = [];

  var _products = {}.obs;

  List<Product> products = [];
  int quantity = 0;

  List<ProductsGirdView> productsByCategory = [];

  bool isLoading = true;
  bool isInfoDrawer = true;
  RxBool isFavorite = true.obs;

  double scrollAnterior = 0;
  RxBool _mostrar = true.obs;

  bool get mostrar => _mostrar.value;

  set mostrar(bool valor) => this._mostrar.value = valor;

  @override
  void onInit() async {
    products = await productsProvider.getById('0');

    update();
    scrollController.addListener(() {
      // print('Scroll listener ${scrollController.offset}');
      if (scrollController.offset > scrollAnterior) {
        mostrar = false;
        // print('Ocultar Menu');
      } else {
        mostrar = true;
        // print('Mostrar Menu');
      }

      scrollAnterior = scrollController.offset;
    });

    pageController.addListener(() {
      currentPage = pageController.page;
      update();
    });

    categories = (await categoriesProvider.getAll());
    categories[0].isSelected = true;
    products = await productsProvider.getById('1');

    for (var i = 0; i < 7; i++) {
      final p = await productsProvider.getById((i + 1).toString());
      productsByCategory.add(ProductsGirdView(p));
    }
    isLoading = false;

    super.onInit();
  }

  @override
  void onClose() {
    scrollController.dispose();
  }

  // @override
  // void onInit() async {
  //   // _products[Product(
  //   //     id: '',
  //   //     name: '',
  //   //     category: '',
  //   //     description: '',
  //   //     imageUrl: '',
  //   //     price: 0,
  //   //     discount: 0,
  //   //     isActive: false,
  //   //     isFavorite: false,
  //   //     quantity: 0)] = 0;

  //   pageController.addListener(() {
  //     currentPage = pageController.page;
  //     update();
  //   });

  //   categories = (await categoriesProvider.getAll());
  //   categories[0].isSelected = true;
  //   products = await productsProvider.getById('1');

  //   for (var i = 0; i < 7; i++) {
  //     final p = await productsProvider.getById((i + 1).toString());
  //     productsByCategory.add(ProductsGirdView(p));
  //   }
  //   isLoading = false;
  //   update();
  //   super.onInit();
  // }

  // Add Products to Cart
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar(
      'Producto Agregado',
      'Haz agregado ${product.name} al carrito',
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
      backgroundColor: Colors.white.withOpacity(0.6),
    );
  }

  // Get Products for Cart
  get productos => _products;

  // Remove Product from Cart
  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  // Products SubTotal
  get subTotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total {
    print(productos);
    return _products.entries
        .map((product) => product.key.price * product.value)
        .toList()
        .reduce((value, element) => value + element)
        .toStringAsFixed(2);
  }

  // selectFavorite() {
  //   isFavorite.value = !isFavorite.value;
  // }

  double? currentPage = 0;

  // Controlar visibiidad del contador del producto
  // bool isVisible = false;

  // showCounter() {
  //   isVisible = !isVisible;
  //   update();
  // }

  // Abre el Drawer Informativo
  // openInfoDrawer() {
  //   isInfoDrawer = !isInfoDrawer;
  //   scaffoldKey.currentState!.openEndDrawer();
  //   update();
  // }

  // Abre el Drawer del carrito
  // openCartDrawer() {
  //   isInfoDrawer = isInfoDrawer;
  //   scaffoldKey.currentState!.openEndDrawer();
  //   update();
  // }

  _goToProductOfCategory(int page) => pageController.animateToPage(page,
      duration: Duration(milliseconds: 200), curve: Curves.ease);

  changeCategory(Category category) async {
    updateCategoryState(category);
    products = await productsProvider.getById(category.id);
    _goToProductOfCategory(int.parse(category.id) - 1);
  }

  updateCategoryState(Category category) {
    category.isSelected = true;
    _deselectCategories(category.id);
    update(['category']);
  }

  _deselectCategories(String id) {
    for (var category in categories) {
      if (category.id != id) {
        category.isSelected = false;
      }
    }
  }
}

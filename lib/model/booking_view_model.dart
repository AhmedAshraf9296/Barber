import 'dart:async';

import 'package:barber/model/api_branches_model.dart';
import 'package:barber/model/api_orderHeader_model.dart';
import 'package:barber/model/api_product_model.dart';
import 'package:barber/model/branches_model.dart';
import 'package:barber/view/branches_fetch_api.dart';
import 'package:barber/view/branches_view.dart';
import 'package:barber/view/card_view/card_view.dart';
import 'package:barber/view/date_view/date_time_booking_view.dart';
import 'package:barber/view/items_view/item_view.dart';
import 'package:barber/view/items_view/items_fetch_api.dart';
import 'package:barber/view/orders/orders.dart';
import 'package:barber/view/time_view/time_fetch_api.dart';
import 'package:barber/view/time_view/time_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:progress_timeline/progress_timeline.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:transparent_image/transparent_image.dart';

class BookingViewModel extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  // BranchesModel branchesModel;

  get getDate => _onSelectionChanged;

  // int _itemPrice = 0;
  //
  // get itemPrice => _itemPrice;

  String _selectedTime;

  get selectedTime => _selectedTime;

  String _selectedDate;

  get selectedDate => _selectedDate;

  String _dateCount = '';

  get dateCount => _dateCount;

  String _range = '';

  get range => _range;

  String _rangeCount = '';

  get rangeCount => _rangeCount;

  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;

  int _branchIndex = 0;

  get branchIndex => _branchIndex;

  String _branchLocationName = '';

  get branchLocationName => _branchLocationName;

  List<ApiBranchesModel> get branchesListModel => _branchesListModel;
  List<ApiBranchesModel> _branchesListModel = [];

  List<ProductModel> get productListModel => _productListModel;
  List<ProductModel> _productListModel = [];

  List<OrderHeaderModel> get orderHeaderListModel => _orderHeaderListModel;
  List<OrderHeaderModel> _orderHeaderListModel = [];

  //
  // Rxn<List<ApiTimeModel>>  timeListModel => Rxn<List<ApiTimeModel>>();
  // List<ApiTimeModel> get ttimeListModel => timeLiseModel.value;

  List<ApiTimeModel> get timeListModel => _timeListModel;
  List<ApiTimeModel> _timeListModel = [];

  List<String> get branchName => _branchName;
  List<String> _branchName = [];

  List<String> get imageString => _imageString;
  List<String> _imageString = [];

  List<String> get productImage => _productImage;
  List<String> _productImage = [];

  List<Widget> get branchImage => _branchImage;
  List<Widget> _branchImage = [];


  List<bool> get branchEnabled => _branchEnabled;
  List<bool> _branchEnabled = [];

  List<int> get branchId => _branchId;
  List<int> _branchId = [];

  List<int> get itemCode => _itemCode;
  List<int> _itemCode = [];


  List<String> get itemCodeFbase => _itemCodeFbase;
  List<String> _itemCodeFbase = [];


  List<String> get itemDescription => _itemDescription;
  List<String> _itemDescription = [];

  List<int> get itemPrice => _itemPrice;
  List<int> _itemPrice = [];

  int _priceCalc = 0;

  get priceCalc => _priceCalc;

  List<dynamic> get selectedItemcheckList => _selectedItemcheckList;
  List<dynamic> _selectedItemcheckList = [].obs;

  List<SelectedItems> get selectedItems => _selectedItems;
  List<SelectedItems> _selectedItems = [];

  Widget _currentScreen = Branches_view();

  get currentScreen => _currentScreen;

  ProgressTimeline progressTimeline;
  ProgressTimeline screenProgress;

  List<String> itemsList = <String>[];

  List<SingleState> allStages = [
    SingleState(stateTitle: "Branches"),
    SingleState(stateTitle: "Date & Time"),
    SingleState(stateTitle: "Service"),
    SingleState(stateTitle: "Submit Booking"),
    // SingleState(stateTitle: "Stage 5"),
    // SingleState(stateTitle: "Stage 6"),
    // SingleState(stateTitle: "Stage 7"),
    // SingleState(stateTitle: "Stage 8"),
  ];

  // List<SelectedItems> locationList = [
  //
  // ];

  @override
  void onInit() {
    screenProgress = new ProgressTimeline(
      connectorColor: Colors.grey,
      states: allStages,
      iconSize: 35,
    );
    getBranchesData();
    getWorkingHoursdata();
    getProductsData();
    // ProductsData().addProductFbase();
    selectedItems.clear();
    // ProductsData().getProductsFbase();
    // timerApi();
    update();
  }

  void timerApi() {
    Timer.periodic(Duration(milliseconds: 20000), (timer) {
      for (var i = 0; i < timeListModel.length; i++) {
        if (_timeListModel[i].disable.value = true) {
          _timeListModel[i].disable.value = true;
          update();
        }

        if (_timeListModel.length != timeListModel.length) {
          _timeListModel[i].disable.value = true;
          update();
        }
      }
    });
  }

  void getBranchesData() async {
    BranchData branchData = BranchData();
    ApiBranchesModel apiBranchesModel = ApiBranchesModel();
    _loading.value = true;

    var data = await branchData.getBranchData().then((value) {
      for (var i = 0; i < value.length; i++) {
        _branchesListModel.add(ApiBranchesModel(
            id: value[i]['id'],
            name: value[i]['name'],
            itemImg: value[i]['itemImg'],
            disable: value[i]['disable']));
        if (_branchesListModel[i].disable != true) {
          _branchId.add(_branchesListModel[i].id);
          _branchName.add(_branchesListModel[i].name);
          _imageString.add(_branchesListModel[i].itemImg);
          _branchEnabled.add(_branchesListModel[i].disable);
          _branchImage.add(ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: _branchesListModel[i].itemImg,
              fit: BoxFit.cover,
            ),
          ));
        }
        // _branchImage.add(_branchesListModel[i].itemImg);
      }
      update();
      _loading.value = false;
    });
  }

  void getWorkingHoursdata() {
    WorkingHoursData workingHoursData = WorkingHoursData();
    ApiTimeModel apiTimeModel = ApiTimeModel();
    _timeListModel.clear();
    _loading.value = true;
    var data = workingHoursData.getWorkingHours().then((value) {
      for (var i = 0; i < value.length; i++) {
        _timeListModel.add(ApiTimeModel(
            id: value[i]['id'],
            name: value[i]['name'],
            disable: RxBool(value[i]['disable'])));
      }
      update();
      // for (var i = 0; i < timeListModel.length; i++) {
      // print(timeListModel[i].id);
      // print(timeListModel[i].name);
      // print(timeListModel[i].disable);
      // }
      _loading.value = false;
    });
  }

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          _currentScreen = Branches_view();
          break;
        }
      case 1:
        {
          _currentScreen = DateTimeBookingView();
          break;
        }
      case 2:
        {
          _currentScreen = ItemView();
          break;
        }
      case 3:
        {
          _currentScreen = CardView();
          break;
        }
    }
    update();
  }

  void insertHeader() async {
    _loading.value = true;

      await Orders().insertOrderHeader(3, 3, _selectedDate, priceCalc);
      await Orders().getOrderHeader().then((value) => {
        for (var i = 0; i < value.length; i++)
          {
            _orderHeaderListModel.add(OrderHeaderModel(
                id: value[i]['id'],
                categoryId: value[i]['categoryId'],
                whId: value[i]['whId'],
                transactionDate: DateTime.parse(value[i]['transactionDate']),
                total: value[i]['total']))
          },
      }
      );
      // for (var i = 0; i < _selectedItems.length; i++) {
      //   await Orders().insertOrderDetail(
      //       orderHeaderListModel.last.id,
      //       productListModel[i].id,
      //       2,
      //       selectedItems[i].price,
      //       selectedItems[i].price);
      // }
      Get.snackbar('Order Inserted Successfully', '',
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
      // Get.offAll(ControlView());
      print('pressed');

    _loading.value = false;
  }

  void changeTimeSelected(value) {
    if (value != null) {
      _selectedTime = value;
    }
    update();
  }

  void changeBranchIndex(int indexValue, String branchName) {
    _branchIndex = indexValue;
    _branchLocationName = branchName;

    if (indexValue != null && branchName != null) {
      _branchIndex = indexValue;
      _branchLocationName = branchName;
    }
  }

  void calcItemsPrices(int itemValue, bool isSelected) {
    if (itemValue != null && isSelected == true) {
      selectedItems.add(SelectedItems(
        // itemCode[itemValue],  working for normal api
          itemCodeFbase.indexOf(productListModel[itemValue].id), // for normal api with relational database
          itemDescription[itemValue],
          itemPrice[itemValue],
          RxBool(isSelected)));
      update();
      print(selectedItems.length);
    }
    if (isSelected == false) {
      for (var i in selectedItems) {
        _priceCalc -= i.price;
        update();
        print(priceCalc);
      }
      // selectedItems.removeAt(selectedItems  // for normal api with relational database
      //     .indexWhere((element) => element.id == itemCode[itemValue])); // for normal api with relational database

      selectedItems.removeAt(selectedItems
          .indexWhere((element) => element.id == itemCodeFbase.indexOf(productListModel[itemValue].id)));
      update();
    }
    _priceCalc = 0;
    update();
    for (var i = 0; i < selectedItems.length; i++) {
      _priceCalc += selectedItems[i].price;
      update();
    }
    print(priceCalc);
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    if (args.value is PickerDateRange) {
      _range =
          DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
              ' - ' +
              DateFormat('dd/MM/yyyy')
                  .format(args.value.endDate ?? args.value.startDate)
                  .toString();
    } else if (args.value is DateTime) {
      _selectedDate = args.value.toString();
    } else if (args.value is List<DateTime>) {
      _dateCount = args.value.length.toString();
    } else {
      _rangeCount = args.value.length.toString();
    }
    update();
  }

  /*product Function with sql server */
  // void getProductsData() async {
  //   ProductsData productsData = ProductsData();
  //   _loading.value = true;
  //   var data = await productsData.getProductsData().then((value) {
  //     for (var i = 0; i < value.length; i++) {
  //       _productListModel.add(
  //         ProductModel(
  //           id: value[i]['id'],
  //           name: value[i]['name'],
  //           description: value[i]['description'],
  //           qtyStock: value[i]['qtyStock'],
  //           disable: value[i]['disable'],
  //           isService: value[i]['isService'],
  //           category: value[i]['category'],
  //           // categoryId: value[i]['categoryId'],
  //           itemImg: value[i]['itemImg'],
  //           price: value[i]['price'],
  //         ),
  //       );
  //       _itemCode.add(_productListModel[i].id); // id must be int but changed to test the firebase
  //       _itemDescription.add(_productListModel[i].description);
  //       _itemPrice.add(_productListModel[i].price);
  //     }
  //   });
  // }


  /*Firebase Function*/
  void getProductsData() async {
    ProductsData productsData = ProductsData();
    _loading.value = true;
    var data = await productsData.getProductsFbase();
    // print(productsData.list[0].description);
      for (var i = 0; i < productsData.list.length; i++) {
        _productListModel.add(
          ProductModel(
            id: productsData.list[i].id,
            name: productsData.list[i].name,
            description: productsData.list[i].description,
            qtyStock: productsData.list[i].qtyStock,
            disable: productsData.list[i].disable,
            isService: productsData.list[i].isService,
            category: productsData.list[i].category,
            categoryId: productsData.list[i].categoryId,
            itemImg: productsData.list[i].itemImg,
            price: productsData.list[i].price,
          ),
        );
        _itemCodeFbase.add(_productListModel[i].id);
        _itemDescription.add(_productListModel[i].description);
        _itemPrice.add(_productListModel[i].price);
        _productImage.add(productListModel[i].itemImg);
      }
  }

}

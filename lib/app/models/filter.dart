import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:wassiet/app/domain/entities/filter_by.dart';
import 'package:wassiet/app/domain/entities/order_by.dart';
part 'filter.g.dart';

class Filter = FilterBase with _$Filter;

abstract class FilterBase with Store {
  @observable
  List<FilterBy> filters = <FilterBy>[];
  @observable
  List<OrderBy> orders = <OrderBy>[];
  @action
  Future<void> getAllFilters() async {
    final response = await rootBundle.loadString('assets/fake_data/filter_by.json');
    final json = jsonDecode(response) as List;
    filters = json.map((object) => FilterBy.fromJson(object)).toList();
  }

  @action
  void handleFilterOnChange({required int currentItemIndex, required bool isSelected}) {
    filters[currentItemIndex].isSelected = isSelected;
  }

  @action
  Future<void> getAllOrderByFilters() async {
    final response = await rootBundle.loadString('assets/fake_data/order_by.json');
    final json = jsonDecode(response) as List;
    orders = json.map((object) => OrderBy.fromJson(object)).toList();
  }

  @action
  void handleOrderByOnChange({required bool isSelected, required String orderByName}) {
    for (OrderBy orderByElement in orders) {
      if (orderByElement.name == orderByName) {
        orderByElement.isSelected = isSelected;
      } else {
        orderByElement.isSelected = false;
      }
    }
  }
}

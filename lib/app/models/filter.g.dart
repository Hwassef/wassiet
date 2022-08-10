// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Filter on FilterBase, Store {
  late final _$filtersAtom = Atom(name: 'FilterBase.filters', context: context);

  @override
  List<FilterBy> get filters {
    _$filtersAtom.reportRead();
    return super.filters;
  }

  @override
  set filters(List<FilterBy> value) {
    _$filtersAtom.reportWrite(value, super.filters, () {
      super.filters = value;
    });
  }

  late final _$ordersAtom = Atom(name: 'FilterBase.orders', context: context);

  @override
  List<OrderBy> get orders {
    _$ordersAtom.reportRead();
    return super.orders;
  }

  @override
  set orders(List<OrderBy> value) {
    _$ordersAtom.reportWrite(value, super.orders, () {
      super.orders = value;
    });
  }

  late final _$getAllFiltersAsyncAction =
      AsyncAction('FilterBase.getAllFilters', context: context);

  @override
  Future<void> getAllFilters() {
    return _$getAllFiltersAsyncAction.run(() => super.getAllFilters());
  }

  late final _$getAllOrderByFiltersAsyncAction =
      AsyncAction('FilterBase.getAllOrderByFilters', context: context);

  @override
  Future<void> getAllOrderByFilters() {
    return _$getAllOrderByFiltersAsyncAction
        .run(() => super.getAllOrderByFilters());
  }

  late final _$FilterBaseActionController =
      ActionController(name: 'FilterBase', context: context);

  @override
  void handleFilterOnChange(
      {required int currentItemIndex, required bool isSelected}) {
    final _$actionInfo = _$FilterBaseActionController.startAction(
        name: 'FilterBase.handleFilterOnChange');
    try {
      return super.handleFilterOnChange(
          currentItemIndex: currentItemIndex, isSelected: isSelected);
    } finally {
      _$FilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void handleOrderByOnChange(
      {required bool isSelected, required String orderByName}) {
    final _$actionInfo = _$FilterBaseActionController.startAction(
        name: 'FilterBase.handleOrderByOnChange');
    try {
      return super.handleOrderByOnChange(
          isSelected: isSelected, orderByName: orderByName);
    } finally {
      _$FilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
filters: ${filters},
orders: ${orders}
    ''';
  }
}

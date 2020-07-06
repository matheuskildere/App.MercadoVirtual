// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productInfo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductInfoController on _ProductInfoBase, Store {
  final _$colorIconInfoAtom = Atom(name: '_ProductInfoBase.colorIconInfo');

  @override
  Color get colorIconInfo {
    _$colorIconInfoAtom.reportRead();
    return super.colorIconInfo;
  }

  @override
  set colorIconInfo(Color value) {
    _$colorIconInfoAtom.reportWrite(value, super.colorIconInfo, () {
      super.colorIconInfo = value;
    });
  }

  final _$colorIconDescAtom = Atom(name: '_ProductInfoBase.colorIconDesc');

  @override
  Color get colorIconDesc {
    _$colorIconDescAtom.reportRead();
    return super.colorIconDesc;
  }

  @override
  set colorIconDesc(Color value) {
    _$colorIconDescAtom.reportWrite(value, super.colorIconDesc, () {
      super.colorIconDesc = value;
    });
  }

  final _$colorIconQuestAtom = Atom(name: '_ProductInfoBase.colorIconQuest');

  @override
  Color get colorIconQuest {
    _$colorIconQuestAtom.reportRead();
    return super.colorIconQuest;
  }

  @override
  set colorIconQuest(Color value) {
    _$colorIconQuestAtom.reportWrite(value, super.colorIconQuest, () {
      super.colorIconQuest = value;
    });
  }

  final _$selectedIconAtom = Atom(name: '_ProductInfoBase.selectedIcon');

  @override
  int get selectedIcon {
    _$selectedIconAtom.reportRead();
    return super.selectedIcon;
  }

  @override
  set selectedIcon(int value) {
    _$selectedIconAtom.reportWrite(value, super.selectedIcon, () {
      super.selectedIcon = value;
    });
  }

  final _$_ProductInfoBaseActionController =
      ActionController(name: '_ProductInfoBase');

  @override
  dynamic onTapInfo() {
    final _$actionInfo = _$_ProductInfoBaseActionController.startAction(
        name: '_ProductInfoBase.onTapInfo');
    try {
      return super.onTapInfo();
    } finally {
      _$_ProductInfoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onTapDesc() {
    final _$actionInfo = _$_ProductInfoBaseActionController.startAction(
        name: '_ProductInfoBase.onTapDesc');
    try {
      return super.onTapDesc();
    } finally {
      _$_ProductInfoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onTapQuest() {
    final _$actionInfo = _$_ProductInfoBaseActionController.startAction(
        name: '_ProductInfoBase.onTapQuest');
    try {
      return super.onTapQuest();
    } finally {
      _$_ProductInfoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
colorIconInfo: ${colorIconInfo},
colorIconDesc: ${colorIconDesc},
colorIconQuest: ${colorIconQuest},
selectedIcon: ${selectedIcon}
    ''';
  }
}
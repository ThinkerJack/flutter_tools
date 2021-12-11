import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tools/demo/mvvm/mvvm_model.dart';

/// @author wu chao
/// @project zjtc
/// @date 2021/11/27
class MvvmViewModel extends ChangeNotifier {
  static final MvvmViewModel _instance = MvvmViewModel.internal();

  MvvmViewModel.internal();

  factory MvvmViewModel() => _instance;

  late Function listenFunc;

  MvvmModel mvvmModel = MvvmModel();

  init({vsync, required Function function}) {
    listenFunc = function;
    _instance.addListener(() {
      listenFunc();
    });
  }

  changeModel() {
    mvvmModel.tabText = mvvmModel.tabText + "-";
    notifyListeners();
  }

  destruction() {
    _instance.removeListener(() {
      listenFunc();
    });
  }
}

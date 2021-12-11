import 'package:flutter/material.dart';

import 'mvvm_vm.dart';

class MvvmView extends StatefulWidget {
  const MvvmView({Key? key}) : super(key: key);

  @override
  _MvvmViewState createState() => _MvvmViewState();
}

class _MvvmViewState extends State<MvvmView>
    with SingleTickerProviderStateMixin {
  MvvmViewModel mvvmViewModel = MvvmViewModel();

  @override
  void initState() {
    super.initState();
    mvvmViewModel.init(
        vsync: this,
        function: () {
          setState(() {});
        });
  }

  @override
  void dispose() {
    mvvmViewModel.destruction();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("mvvm_demo"),
        ),
        body: Center(
          child: GestureDetector(
              onTap: () {
                mvvmViewModel.changeModel();
              },
              child: Text(mvvmViewModel.mvvmModel.tabText)),
        ));
  }
}

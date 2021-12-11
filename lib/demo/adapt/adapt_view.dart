import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tools/utils/adpat/size_extension.dart';

/// @author wu chao
/// @project flutter_tools
/// @date 2021/12/10
class AdaptView extends StatefulWidget {
  const AdaptView({Key? key}) : super(key: key);

  @override
  _AdaptViewState createState() => _AdaptViewState();
}

class _AdaptViewState extends State<AdaptView> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      removeBottom: true,
      context: context,
      child: ListView(
        children: [
          Column(
            children: [
              UnconstrainedBox(
                  child: Container(
                width: 749.px,
                height: 334.py,
                color: Colors.black,
              )),
              UnconstrainedBox(
                  child: Container(
                width: 749.px,
                height: 1000.py,
                color: Colors.blue,
              )),
            ],
          ),
          Row(
            children: [
              UnconstrainedBox(
                  child: Container(
                width: 375.px,
                height: 350.py,
                color: Colors.amber,
              )),
              UnconstrainedBox(
                  child: Container(
                width: 375.px,
                height: 350.py,
                color: Colors.green,
              )),
            ],
          ),
        ],
      ),
    );
  }
}

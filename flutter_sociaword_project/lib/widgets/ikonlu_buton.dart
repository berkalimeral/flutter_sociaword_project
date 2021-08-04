import 'package:flutter/material.dart';

class IkonluButonum extends StatelessWidget {
  final IconData ikonum;
  final String yazi;
  final fonksiyonum;
  const IkonluButonum({
    @required this.ikonum,
    Key key,
    this.yazi,
    this.fonksiyonum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyonum,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              children: [
                Icon(
                  ikonum,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  yazi,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

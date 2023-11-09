import 'package:flutter/material.dart';
import 'package:scale_design/scale_design.dart';

class BasicWidgetExamples extends StatelessWidget {
  const BasicWidgetExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: T(
          'Basic Widgets Example',
          fontSize: 18,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            T(
              'T widget is a substitute for Text widget.',
              fontSize: 26,
            ),
            SizedBox(height: scaleHeight(9)),
            T.rich(
              TSpan(
                text: 'TSpan widget',
                color: Colors.blue,
                fontSize: 26,
                children: [
                  TSpan(text: ' is a substitute for ', color: Colors.red),
                  TSpan(text: 'TextSpan', color: Colors.amber),
                  TSpan(text: ' widget.', color: Colors.green, fontSize: 25),
                ],
              ),
            ),
            SizedBox(height: scaleHeight(9)),
            ElevatedBtn(
              'I am an ElevatedBtn button.',
              width: scaleHeight(260),
              height: scaleHeight(60),
              onPressed: () {},
            ),
            SizedBox(height: scaleHeight(9)),
            ElevatedBtn(
              'I am an ElevatedBtn button without a callback function.',
              width: scaleHeight(260),
              height: scaleHeight(60),
            ),
            SizedBox(height: scaleHeight(9)),
            ElevatedBtn(
              'I am an disabled ElevatedBtn button.',
              width: scaleHeight(260),
              height: scaleHeight(60),
              disabled: true,
              onPressed: () {},
            ),
            SizedBox(height: scaleHeight(9)),
            IconBtn(
              icon: Icons.access_alarm_outlined,
              size: scaleFont(46.0),
              splashRadius: scaleFont(46.0),
              focusColor: Colors.redAccent,
              hoverColor: Colors.red[700],
              highlightColor: Colors.red[300],
              splashColor: Colors.red[100],
              disabledColor: Colors.grey,
              onPressed: () {
                print('IconBtn pressed');
              },
              focusNode: FocusNode(),
              autofocus: false,
              isSelected: false,
              selectedIcon: const Icon(Icons.check),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              overlayColor: Colors.red[50],
              shadowColor: Colors.red[900],
              surfaceTintColor: Colors.red[50],
              elevation: 8.0,
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              disabled: false,
              btnPadding: const EdgeInsets.all(8.0),
              textStyle: const TextStyle(fontSize: 14.0),
              fontSize: 14.0,
            ),
            SizedBox(height: scaleHeight(9)),
            OutlinedBtn(
              'I am a OutlinedBtn.',
              onPressed: () {
                print('OutlinedBtn pressed');
              },
              width: 100.0,
              height: 50.0,
              disabled: false,
              fontSize: 16.0,
            ),
            SizedBox(height: scaleHeight(9)),
            OutlinedBtn(
              'I am a disabled OutlinedBtn.',
              width: 100.0,
              height: 50.0,
              disabled: true,
              fontSize: 16.0,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionBtn(
        tooltip: 'Add',
        onPressed: () {
          print('FloatingActionBtn pressed');
        },
        mouseCursor: SystemMouseCursors.click,
        isExtended: false,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        focusColor: Colors.blueAccent,
        hoverColor: Colors.blue[700],
        splashColor: Colors.blue[300],
        heroTag: 'addBtn',
        elevation: 8.0,
        focusElevation: 8.0,
        hoverElevation: 16.0,
        highlightElevation: 16.0,
        disabledElevation: 0.0,
        size: 56.0,
        disabled: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
        clipBehavior: Clip.antiAlias,
        focusNode: FocusNode(),
        autofocus: false,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        enableFeedback: true,
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:SOS_Brasil/components/snackbar.dart';

import 'package:SOS_Brasil/utils/sos_clipper.dart';

class HeaderWithFAB extends StatelessWidget {
  const HeaderWithFAB({
    Key key,
    @required this.context,
    this.child,
    this.flag: false,
    this.color: Colors.red,
    this.onFabDoubleClick,
    this.fabTag: "HeaderWithFAB",
    this.headerText: "Solicitação Enviada!",
  }) : super(key: key);

  final BuildContext context;
  final MaterialColor color;
  final Widget child;
  final Function onFabDoubleClick;
  final String fabTag;
  final bool flag;

  final String headerText;

  final double _buttonSize = 130;

  @override
  Widget build(BuildContext context) {
    double _buttonAligment =
        (MediaQuery.of(context).size.width - _buttonSize) / 2;

    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 260,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [color[200], color[200], color],
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: flag
                    ? Text(
                        headerText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    : SizedBox(),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: _buttonAligment,
          child: GestureDetector(
            onDoubleTap: onFabDoubleClick,
            child: Container(
              height: _buttonSize,
              width: _buttonSize,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  heroTag: fabTag,
                  onPressed: !flag ? () {} : null,
                  elevation: 0,
                  child: buildFABShadow(context),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding buildFABShadow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1),
      child: Container(
        margin: EdgeInsets.all(1),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 6,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: child,
      ),
    );
  }
}

class ConfirmText extends StatelessWidget {
  const ConfirmText({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  final double _buttonSize = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Mantenha a calma",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Tente não se mover\nA ajuda está chegando",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Container(
            height: _buttonSize,
            width: _buttonSize,
            child: FittedBox(
              child: FloatingActionButton(
                heroTag: "Call",
                onPressed: () {
                  CustomSnackbar.showBuildInProgress(context);
                },
                child: Icon(Icons.phone),
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

void openLoginSheet(BuildContext context) {
  showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        FocusNode _focusNode = FocusNode();
        return new ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                'LOGIN',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, bottom: 16, top: 8),
              child: Text(
                'Enter your 10 digit Phone number.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 32, bottom: 32, right: 32),
                child: TextField(
                  onChanged: (value) {
                    print(value);
                    if (value.length == 10)
                      FocusScope.of(context).requestFocus(new FocusNode());
                  },
                  maxLength: 10,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  cursorWidth: 1,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    // labelText: 'Phone Number',
                    prefix: Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Text(
                        '+91',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    prefixIcon: Icon(Icons.phone),
                    // hintText: '10 digit number',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 32, left: 32, bottom: 64, top: 8),
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        );
      });
}

import 'package:eco_commerce_app/ui/widgets/sectionHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class ContactUs extends StatefulWidget {
  ContactUs({Key key}) : super(key: key);

  @override
  _ContacUsState createState() => _ContacUsState();
}

class _ContacUsState extends State<ContactUs> {
  String _name;
  String _email;
  String _phoneNumber;
  String _yourMsg;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildName() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(31, 15.6, 31, 15.6),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        cursorColor: Color(0xFF000000),
        cursorRadius: Radius.circular(8),
        cursorWidth: 1.8,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFF000000), width: 2),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFF000000), width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFF044455), width: 2),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
            ),
            errorText: null,
            labelText: 'Name'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }

          return null;
        },
        onSaved: (String value) {
          _name = value;
        },
      ),
    );
  }

  Widget _buildEmail() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(31, 15.6, 31, 15.6),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        cursorColor: Color(0xFF000000),
        cursorRadius: Radius.circular(8),
        cursorWidth: 1.8,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFF000000), width: 2),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFF000000), width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFF044455), width: 2),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
            ),
            errorText: null,
            labelText: 'Email'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Email is Required';
          }

          if (!RegExp(
                  r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
              .hasMatch(value)) {
            return 'Please enter a valid email Address';
          }

          return null;
        },
        onSaved: (String value) {
          _email = value;
        },
      ),
    );
  }

  Widget _buildPhoneNumber() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(31, 15.6, 31, 15.6),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        cursorColor: Color(0xFF000000),
        cursorRadius: Radius.circular(8),
        cursorWidth: 1.8,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF000000), width: 2),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF000000), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF044455), width: 2),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
          ),
          errorText: null,
          labelText: "Phone number",
        ),
        keyboardType: TextInputType.phone,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Phone number is Required';
          }

          return null;
        },
        onSaved: (String value) {
          _phoneNumber = value;
        },
      ),
    );
  }

  Widget _buildyourMsg() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(31, 15.6, 31, 15.6),
      child: TextFormField(
        // expands: true,
        minLines: 1,
        maxLines: 12,
        textInputAction: TextInputAction.next,
        cursorColor: Color(0xFF000000),
        cursorRadius: Radius.circular(8),
        cursorWidth: 1.8,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF000000), width: 2),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF000000), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF044455), width: 2),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
          ),
          errorText: null,
          labelText: 'Your message...',
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Required';
          }

          return null;
        },
        onSaved: (String value) {
          _yourMsg = value;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(LineAwesomeIcons.arrow_left),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SectionHeader(text: 'Contact Us'),
          FlatButton(
            color: Color(0xFF004445),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              'We would love to hear from you...',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Poppins', fontSize: 18),
            ),
          ),
          Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                _buildEmail(),
                _buildPhoneNumber(),
                _buildyourMsg(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(31, 0, 31, 15.6),
                  child: RaisedButton(
                      color: Color(0xff004445),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                      onPressed: () {
                        if (!_formkey.currentState.validate()) {
                          return;
                        }
                        _formkey.currentState.save();
                        print(_name);
                        print(_email);
                        print(_phoneNumber);
                        print(_yourMsg);
                      }),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

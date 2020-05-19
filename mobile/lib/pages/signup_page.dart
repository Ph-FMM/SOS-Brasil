import 'package:flutter/material.dart';
import 'package:mobile/components/top_box.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TopBox(
                title: "Cadastro",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.person, size: 26),
                          ),
                          prefixIconConstraints: BoxConstraints(
                            minWidth: 32,
                            minHeight: 32,
                          ),
                          labelText: "Nome",
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(Icons.phone, size: 26),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 32,
                                  minHeight: 32,
                                ),
                                labelText: "Telefone",
                                labelStyle: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(Icons.assignment, size: 26),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 32,
                                  minHeight: 32,
                                ),
                                labelText: "CPF",
                                labelStyle: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.email, size: 26),
                          ),
                          prefixIconConstraints: BoxConstraints(
                            minWidth: 32,
                            minHeight: 32,
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.vpn_key, size: 26),
                          ),
                          prefixIconConstraints: BoxConstraints(
                            minWidth: 32,
                            minHeight: 32,
                          ),
                          labelText: "Senha",
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 60)
            ],
          ),
        ));
  }
}

import 'package:contact_app1/models/contact_model.dart';
import 'package:flutter/material.dart';

class ContactDetailsPage extends StatefulWidget {
  static const String routeName = '/details';

  @override
  State<ContactDetailsPage> createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final contact = ModalRoute.of(context)!.settings.arguments as ContactModel;
    return Scaffold();
  }
}

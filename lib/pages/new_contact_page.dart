import 'package:contact_app1/db/temp_db.dart';
import 'package:contact_app1/models/contact_model.dart';
import 'package:contact_app1/utils/constants.dart';
import 'package:flutter/material.dart';

class NewContactPage extends StatefulWidget {
  static String routeName = '/new_contact';

  @override
  State<NewContactPage> createState() => _NewContactPageState();
}

class _NewContactPageState extends State<NewContactPage> {
  final _nameController = TextEditingController();
  final _companyController = TextEditingController();
  final _designationController = TextEditingController();
  final _addressController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _webController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _companyController.dispose();
    _designationController.dispose();
    _addressController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _webController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
        actions: [
          IconButton(onPressed: _saveContact,
              icon: const Icon(Icons.save))
        ],
      ),
      body: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Contact Name',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return emptyFieldMsg;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _companyController,
                decoration: const InputDecoration(
                  labelText: 'Company Name',
                  prefixIcon: Icon(Icons.manage_accounts),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return emptyFieldMsg;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _designationController,
                decoration: const InputDecoration(
                  labelText: 'Designation Name',
                  prefixIcon: Icon(Icons.design_services),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return emptyFieldMsg;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(
                  labelText: 'Street Address',
                  prefixIcon: Icon(Icons.location_city),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return emptyFieldMsg;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return emptyFieldMsg;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _mobileController,
                decoration: const InputDecoration(
                  labelText: 'Mobile No',
                  prefixIcon: Icon(Icons.call),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return emptyFieldMsg;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _webController,
                decoration: const InputDecoration(
                  labelText: 'Website',
                  prefixIcon: Icon(Icons.web),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return emptyFieldMsg;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          )),
    );
  }

  void _saveContact() async {
    if (_formKey.currentState!.validate()) {
      final contact = ContactModel(
        name: _nameController.text,
        companyName: _companyController.text,
        designation: _designationController.text,
        address: _addressController.text,
        email: _emailController.text,
        mobile: _mobileController.text,
        website: _webController.text,
      );
      print(contact);
      contactList.add(contact);
      Navigator.pop(context, true);
    }
  }
}

import 'package:contact_app1/pages/contact_row_item.dart';
import 'package:flutter/material.dart';

import '../db/temp_db.dart';
import 'new_contact_page.dart';

class ContactListPage extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
      ),
      body:contactList.isEmpty ? const Center(
        child: Text('No Contact Found'),
      ) : ListView.builder(
        itemCount: contactList.length,
          itemBuilder: (context,index){
          final contact = contactList[index];
            return ContactRowItem(contact);
          },
      ),

    floatingActionButton: FloatingActionButton(
      onPressed:() async {
      final result=
          await Navigator.pushNamed(context, NewContactPage.routeName);
      //print('Something');
      if(result != null){
        if(result as bool){
          setState(() {});
        }
      }
      },
      child: const Icon(Icons.add),),
    );
  }
}

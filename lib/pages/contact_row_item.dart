import 'package:contact_app1/models/contact_model.dart';
import 'package:contact_app1/pages/contact_details_page.dart';
import 'package:flutter/material.dart';

class ContactRowItem extends StatefulWidget {
  final ContactModel contact;
  const ContactRowItem(this.contact);

  @override
  State<ContactRowItem> createState() => _ContactRowItemState();
}

class _ContactRowItemState extends State<ContactRowItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 8,
        child: ListTile(
          onTap: (){
            Navigator.pushNamed(context, ContactDetailsPage.routeName,arguments: widget.contact);
          },
          tileColor: Colors.grey,
          title: Text(widget.contact.name),
          subtitle: Text(widget.contact.designation),
          leading: CircleAvatar(),
          trailing: IconButton(onPressed: (){

          },
              icon: Icon(widget.contact.isFavorite ? Icons.favorite : Icons.favorite_border)),
        ),
      ),
    );;
  }
}

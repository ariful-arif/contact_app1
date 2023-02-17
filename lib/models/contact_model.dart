class ContactModel {
  int? id;
  String name;
  String companyName;
  String designation;
  String address;
  String email;
  String mobile;
  String website;
  bool isFavorite;

  ContactModel(
      {this.id,
  this.name = '',
  this.companyName = '',
  this.designation = '',
  this.address='',
  this.email = '',
  this.mobile = '',
  this.website = '',
  this.isFavorite = false});

  @override
  String toString() {
    return 'ContactModel{id: $id, name: $name, companyName: $companyName, designation: $designation, address: $address, email: $email, mobile: $mobile, website: $website, isFavorite: $isFavorite}';
  }
}
class Profile {
  final String name;
  final String email;
  final String photo;
  final String noHp;
  final String address;

  Profile({
    required this.name,
    required this.email,
    required this.photo,
    required this.noHp,
    required this.address,
  });
}

Profile profile = Profile(
  name: "GoodBoySquad",
  email: 'GBS@gmail.com',
  photo: "assets/images/profile.jpg",
  noHp: "0812346789",
  address: "Bukit Cimanggu City",
);

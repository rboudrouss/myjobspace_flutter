class User {
  final int id;
  final String name;
  final String imageUrl;
  final String contry;
  final String city;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.contry,
    this.city,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Youssef',
  imageUrl: 'assets/images/greg.jpg',
  contry: 'Morroco',
  city: 'Meknès',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
  contry: 'Morroco',
  city: 'Meknès',
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
  contry: 'Morroco',
  city: 'Meknès',
);
final User john = User(
  id: 3,
  name: 'John',
  imageUrl: 'assets/images/john.jpg',
  contry: 'Morroco',
  city: 'Meknès',
);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  imageUrl: 'assets/images/olivia.jpg',
  contry: 'Morroco',
  city: 'Meknès',
);
final User sam = User(
  id: 5,
  name: 'Sam',
  imageUrl: 'assets/images/sam.jpg',
  contry: 'Morroco',
  city: 'Meknès',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/sophia.jpg',
  contry: 'Morroco',
  city: 'Meknès',
);
final User steven = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'assets/images/steven.jpg',
  contry: 'Morroco',
  city: 'Meknès',
);

// LIST CONTACTS
List<User> contacts = [sam, steven, olivia, john, greg, james, sophia];

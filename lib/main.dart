void main() {
  const creator = CreatorUser(
      canShareVideo: false,
      fullname: "Creator",
      id: 123,
      profilePic: "https://...",
      username: "username");

  const business = BusinessUser(
      canSellItems: true,
      fullname: "Creator",
      id: 123,
      profilePic: "https://...",
      username: "username");

  functionThatProcessUser(creator);
  functionThatProcessUser(business);
}

void functionThatProcessUser(User user) {
  print(user.runtimeType);
}

abstract class User {
  const User({
    this.id,
    this.username,
    this.fullname,
    this.profilePic,
  });

  final int? id;
  final String? username;
  final String? fullname;
  final String? profilePic;
}

class CreatorUser extends User {
  const CreatorUser({
    int? id,
    String? username,
    String? fullname,
    String? profilePic,
    this.canShareVideo,
  }) : super(
          id: id,
          username: username,
          fullname: fullname,
          profilePic: profilePic,
        );

  final bool? canShareVideo;
}

class BusinessUser extends User {
  const BusinessUser({
    int? id,
    String? username,
    String? fullname,
    String? profilePic,
    this.canSellItems,
  }) : super(
          id: id,
          username: username,
          fullname: fullname,
          profilePic: profilePic,
        );

  final bool? canSellItems;
}

part of dash_chat;

/// ChatUser used to show distinguish between different people
/// in a chat conversation or a chat group
class ImageList {
  /// Unique id of the user if no unique is provided a [UUID v4]
  /// is automatically assigned to the chat user.
  List<String>? images;

  /// functionality to dashchat.

  ImageList({this.images});

  ImageList.fromJson(Map<dynamic, dynamic> json, int length) {
    print("LENGTH" + length.toString());
    for (int i = 0; i < length; i++) {
      images?.add(json['image' + i.toString()]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    try {
      data["image" + 0.toString()] = images;
    } catch (e) {
      print(e);
    }

    return data;
  }
}

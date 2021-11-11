part of dash_chat;

/// ChatUser used to show distinguish between different people
/// in a chat conversation or a chat group
class ImageList {
  /// Unique id of the user if no unique is provided a [UUID v4]
  /// is automatically assigned to the chat user.
  List<String>? images;

  /// functionality to dashchat.

  ImageList({
    List<String>? images,
  }) {}

  ImageList.fromJson(Map<dynamic, dynamic> json) {
    for (var i = 0; i < json['images'].length; i++) {
      images?.add(json['images'][i]);
    }
  }

  Map<String, dynamic> toJson(int index) {
    final Map<String, dynamic> data = Map<String, dynamic>();

    try {
      data["image" + index.toString()] = jsonEncode(images!.elementAt(index));
    } catch (e) {
      print(e);
    }

    return data;
  }
}

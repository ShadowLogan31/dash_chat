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
  }) {
    this.images = images;
  }

  ImageList.fromJson(Map<dynamic, dynamic> json) {
    print("LENGTH: " + json.length.toString());
    print("MADE IT");
    List<String> values = [];
    for (int i = 0; i < json.length; i++) {
      print("JSONIMAGES:" + json['image$i']);
      values.add(json['image$i']);
    }
    images = values;
    print("IMAGES: " + images.toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    try {
      for (int i = 0; i < images!.length; i++) {
        data['image' + i.toString()] = images!.elementAt(i);
      }
    } catch (e) {
      print(e);
    }

    return data;
  }
}

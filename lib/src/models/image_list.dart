part of dash_chat;

/// ChatUser used to show distinguish between different people
/// in a chat conversation or a chat group
class ImageList {
  /// Unique id of the user if no unique is provided a [UUID v4]
  /// is automatically assigned to the chat user.
  List<Object>? images;

  /// functionality to dashchat.

  ImageList({
    List<Object>? images,
  }) {}

  ImageList.fromJson(Map<dynamic, dynamic> json) {
    images = json['images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    try {
      data['images'] = jsonEncode(images);
    } catch (e) {
      print(e);
    }

    return data;
  }
}

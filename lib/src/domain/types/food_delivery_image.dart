class FoodDeliveryImage {
  final Map<String, String> image;

  getThumb() {
    if (image.isEmpty) {
      return 'https://play.google.com/store/apps/details?id=com.google.android.apps.photos&hl=en_US';
    }
    return image['thumb_url'];
  }

  getOrigin() {
    if (image.isEmpty) {
      return 'https://play.google.com/store/apps/details?id=com.google.android.apps.photos&hl=en_US';
    }
    return image['original_url'];
  }

  FoodDeliveryImage({required this.image});
}

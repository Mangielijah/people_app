enum ImageSizeType {
  back_drop,
  grid,
  download,
}

String getImageUrl(String? path, ImageSizeType type) {
  if (type == ImageSizeType.back_drop) {
    return 'https://image.tmdb.org/t/p/h632$path';
  } else if (type == ImageSizeType.grid) {
    return 'https://image.tmdb.org/t/p/w300$path';
  } else {
    return 'https://image.tmdb.org/t/p/original$path';
  }
}

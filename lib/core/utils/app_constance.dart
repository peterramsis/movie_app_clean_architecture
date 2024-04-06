class AppConstance{
  static String baseUrl = "https://api.themoviedb.org/3/movie/";
  static String apiKey = "a1f0418c15ee482672c44c4479148134";
  static String getPlayingMovie = '${baseUrl}now_playing?language=en-US&page=1&api_key=$apiKey';
  static String getPopularMovie = '${baseUrl}popular?language=en-US&page=1&api_key=$apiKey';
  static String getTopRatedMovie = '${baseUrl}top_rated?language=en-US&page=1&api_key=$apiKey';
  static String pathImage = "https://image.tmdb.org/t/p/w500/";
  static imageUrl(String img) => "$pathImage/$img";
}
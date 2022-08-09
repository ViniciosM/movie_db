class MoviesModel {
  MoviesModel({
    required this.id,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });
  late final int id;
  late final int page;
  late final List<Movies> results;
  late final int totalPages;
  late final int totalResults;

  MoviesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    page = json['page'];
    results =
        List.from(json['results']).map((e) => Movies.fromJson(e)).toList();
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['page'] = page;
    _data['results'] = results.map((e) => e.toJson()).toList();
    _data['total_pages'] = totalPages;
    _data['total_results'] = totalResults;
    return _data;
  }
}

class Movies {
  Movies({
    required this.description,
    required this.favoriteCount,
    required this.id,
    required this.itemCount,
    required this.iso_639_1,
    required this.listType,
    required this.name,
    this.posterPath,
  });
  late final String description;
  late final int favoriteCount;
  late final int id;
  late final int itemCount;
  late final String iso_639_1;
  late final String listType;
  late final String name;
  late final String? posterPath;

  Movies.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    favoriteCount = json['favorite_count'];
    id = json['id'];
    itemCount = json['item_count'];
    iso_639_1 = json['iso_639_1'];
    listType = json['list_type'];
    name = json['name'];
    posterPath = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['description'] = description;
    _data['favorite_count'] = favoriteCount;
    _data['id'] = id;
    _data['item_count'] = itemCount;
    _data['iso_639_1'] = iso_639_1;
    _data['list_type'] = listType;
    _data['name'] = name;
    _data['poster_path'] = posterPath;
    return _data;
  }
}

class League {
  final String id;
  final String name;
  final String country;
  final List<Season> seasons;

  League({
    required this.id,
    required this.name,
    required this.country,
    required this.seasons,
  });

  factory League.fromJson(Map<String, dynamic> json) {
    List<Season> seasonsList = [];
    for (var seasonJson in json['seasons']) {
      seasonsList.add(Season.fromJson(seasonJson));
    }

    return League(
      id: json['league']['id'].toString(),
      name: json['league']['name'],
      country: json['league']['country'],
      seasons: seasonsList,
    );
  }
}

class Season {
  final String year;
  final Coverage coverage;

  Season({
    required this.year,
    required this.coverage,
  });

  factory Season.fromJson(Map<String, dynamic> json) {
    return Season(
      year: json['year'].toString(),
      coverage: Coverage.fromJson(json['coverage']),
    );
  }
}

class Coverage {
  final bool standings;

  Coverage({
    required this.standings,
  });

  factory Coverage.fromJson(Map<String, dynamic> json) {
    return Coverage(
      standings: json['standings'] == 'true',
    );
  }
}

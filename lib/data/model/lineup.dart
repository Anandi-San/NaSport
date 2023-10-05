class Lineup {
  int fixtureId;
  Team home;
  Team away;
  String formation;
  List<Player> startXI;
  List<Player> substitutes;
  String coach;

  Lineup(this.fixtureId, this.home, this.away, this.formation, this.startXI, this.substitutes, this.coach);

  factory Lineup.fromJson(Map<String, dynamic> json) {
    final fixtureJson = json['fixture'];
    return Lineup(
      fixtureJson != null ? fixtureJson['id'] : 0, // Mengambil ID fixture dari fixtureJson atau berikan nilai default jika null
      Team.fromJson(json['home']),
      Team.fromJson(json['away']),
      json['formation'],
      (json['startXI'] as List<dynamic>).map((player) => Player.fromJson(player)).toList(),
      (json['substitutes'] as List<dynamic>).map((player) => Player.fromJson(player)).toList(),
      json['coach'],
    );
  }
}


class Player {
  int id;
  String name;

  Player(this.id, this.name);

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      json['id'],
      json['name'],
    );
  }
}

class Team {
  int id;
  String name;

  Team(this.id, this.name);

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      json['id'],
      json['name'],
    );
  }
}

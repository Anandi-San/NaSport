class StatisticTeam {
  int fixtureId; // Tambahkan properti fixtureId
  Team team;
  Statistics statistics;

  StatisticTeam(this.fixtureId, this.team, this.statistics);

  factory StatisticTeam.fromJson(Map<String, dynamic> json ) {
    final teamJson = json['team'];
    final fixtureId = json['fixture']['id']; // Ambil fixtureId dari data JSON

    return StatisticTeam(
      fixtureId, // Gunakan fixtureId yang diambil
      Team.fromJson(teamJson),
      Statistics.fromJson(json['statistics']),
    );
  }
}


class Team {
  int? id;
  String name;
  String logo;
  Team(this.id, this.name, this.logo);

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['id'], json['name'], json['logo']);
  }
}

class Statistics {
  String type;
  int? value;
  Statistics(this.type, this.value);

  factory Statistics.fromJson(Map<String, dynamic> json) {
    return Statistics(json['type'], json['value']);
  }
}

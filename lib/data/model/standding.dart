class Standing {
  int? rank;
  Team team;
  int? points;
  int? goalsDiff;
  String group;
  String form;
  String status;
  String description;
  All all;
  All home;
  All away;
  DateTime update;

  Standing({
    required this.rank,
    required this.team,
    required this.points,
    required this.goalsDiff,
    required this.group,
    required this.form,
    required this.status,
    required this.description,
    required this.all,
    required this.home,
    required this.away,
    required this.update,
  });

  factory Standing.fromJson(Map<String, dynamic> json) {
    return Standing(
      rank: json['rank'] as int?, // Jika rank bisa null, gunakan 'as int?'.
      team: Team.fromJson(json['team'] ?? {}),
      points:
          json['points'] as int?, // Jika points bisa null, gunakan 'as int?'.
      goalsDiff: json['goalsDiff']
          as int?, // Jika goalsDiff bisa null, gunakan 'as int?'.
      group: json['group'] ?? "",
      form: json['form'] ?? "",
      status: json['status'] ?? "",
      description: json['description'] ?? "",
      all: All.fromJson(json['all'] ?? {}),
      home: All.fromJson(json['home'] ?? {}),
      away: All.fromJson(json['away'] ?? {}),
      update: DateTime.parse(json['update'] ??
          ""), // Jika update bisa null, gunakan '' atau nilai default yang sesuai.
    );
  }
}

class Team {
  int? id;
  String name;
  String logo;

  Team({
    required this.id,
    required this.name,
    required this.logo,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      logo: json['logo'],
    );
  }
}

class All {
  int? played;
  int? win;
  int? draw;
  int? lose;
  Goals goals;

  All({
    required this.played,
    required this.win,
    required this.draw,
    required this.lose,
    required this.goals,
  });

  factory All.fromJson(Map<String, dynamic> json) {
    return All(
      played: json['played'],
      win: json['win'],
      draw: json['draw'],
      lose: json['lose'],
      goals: Goals.fromJson(json['goals']),
    );
  }
}

class Goals {
  int? goalsFor;
  int? against;

  Goals({
    required this.goalsFor,
    required this.against,
  });

  factory Goals.fromJson(Map<String, dynamic> json) {
    return Goals(
      goalsFor: json['for'],
      against: json['against'],
    );
  }
}

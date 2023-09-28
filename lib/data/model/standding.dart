class Standing {
  int? rank;
  Team team;
  int? points;
  int? goalsDiff;
  All all;

  Standing({
    required this.rank,
    required this.team,
    required this.points,
    required this.goalsDiff,
    required this.all,
  });

  factory Standing.fromJson(Map<String, dynamic> json) {
    return Standing(
      rank: json['rank'],
      team: Team.fromJson(json['team']),
      points: json['points'],
      goalsDiff: json['goalsDiff'],
      all: All.fromJson(json['all']),
    );
  }
}

class Team {
  int? id;
  String? name;
  String? logo;

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

class StandingElement {
  int? rank;
  Team team;
  int? points;
  int? goalsDiff;
  All all;
  // All home;
  // All away;
  // DateTime update;

  StandingElement(
    this.rank,
    this.team,
    this.points,
    this.goalsDiff,
    // this.form,
    this.all,
    // this.home,
    // this.away,
    // this.update,
  );

  factory StandingElement.fromJson(Map<String, dynamic> json) {
    return StandingElement(
      json['rank'],
      Team.fromJson(json['teams']),
      json['points'],
      json['goalsdiff'],
      All.fromJson(json['played']['win']['draw']['lose']['goals'])
    );
  }
}

class All {
  int? played;
  int? win;
  int? draw;
  int? lose;
  Goals goals;

  All(
    this.played,
    this.win,
    this.draw,
    this.lose,
    this.goals,
  );

  factory All.fromJson(Map<String, dynamic> json) {
    return All(json['played'], json['win'], json['draw'], json['lose'],
        Goals.fromJson(json['goals']));
  }
}

class Team {
  int? id;
  String name;
  String logo;

  Team(
    this.id,
    this.name,
    this.logo,
  );

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['id'], json['name'], json['logo']);
  }
}

class Goals {
  int? goalsFor;
  int? against;

  Goals(
    this.goalsFor,
    this.against,
  );

  factory Goals.fromJson(Map<String, dynamic> json) {
    return Goals(json['goalsFor'], json['against']);
  }
}

class SoccerMatch {
  Fixture? fixture;
  Team? home;
  Team? away;
  Goal? goal;
  Leagues? leagues;
  SoccerMatch(this.fixture, this.home, this.away, this.goal, this.leagues);

  factory SoccerMatch.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      throw Exception("Received null data when expecting a Map");
    }
    return SoccerMatch(
      Fixture.fromJson(json['fixture']),
      Team.fromJson(json['teams']['home']),
      Team.fromJson(json['teams']['away']),
      Goal.fromJson(json['goals']),
      Leagues.fromJson(json['league']),
    );
  }
}

class Fixture {
  int? id;
  String? date;
  // Status? status;
  Fixture(this.id, this.date);

  factory Fixture.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      throw Exception("Received null data when expecting a Map");
    }
    final id = json['id'] as int?;
    final date = json['date'] as String?;
    // final statusJson = json['status'];
    // final status = statusJson != null ? Status.fromJson(statusJson) : null;
    return Fixture(id, date,);
  }
}



class Status {
  int? elapsedTime;
  String? long;
  Status(this.elapsedTime, this.long);

  factory Status.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      throw Exception("Received null data when expecting a Map");
    }
    return Status(json['elapsed'], json['long']);
  }
}

class Team {
  int? id;
  String? name;
  String? logoUrl;
  // bool winner;
  Team(this.id, this.name, this.logoUrl);

  factory Team.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      throw Exception("Received null data when expecting a Map");
    }
    return Team(json['id'], json['name'], json['logo']);
  }
}

class Goal {
  int? home;
  int? away;
  Goal(this.home, this.away);

  factory Goal.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      throw Exception("Received null data when expecting a Map");
    }
    return Goal(json['home'], json['away']);
  }
}

class Leagues {
  int? id;
  String? name;
  int? season;
  String? round;
  Leagues(this.id, this.name, this.season, this.round);

  factory Leagues.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      throw Exception("Received null data when expecting a Map");
    }
    return Leagues(json['id'], json['name'], json['season'], json['round']);
  }
}

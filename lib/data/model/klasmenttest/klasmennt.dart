// import 'dart:math';

// class Standingssss {
//   final int? rank;
//   final int? teamId;
//   final String? teamName;
//   final String? logo;
//   All? all;
//   final int? goalsDiff;
//   final int? points;

//   Standingssss({
//     this.rank,
//     this.teamId,
//     this.teamName,
//     this.logo,
//     this.all,
//     this.goalsDiff,
//     this.points,
//   });

//   Map<String, dynamic> json() {
//     return {
//       'rank': rank,
//       'teamid': teamId,
//       'teamName': teamName,
//       'logo': logo,
//       'all': all,
//       'goalsDiff': goalsDiff,
//       'points': points,
//     };
//   }
// }

// class All {
//   final int? matchsPlayed;
//   final int? win;
//   final int? draw;
//   final int? lose;
//   Goals? goals;

//   All({
//     this.matchsPlayed,
//     this.win,
//     this.draw,
//     this.lose,
//     this.goals
//   });

//   Map<String, dynamic> json() {
//     return {
//       'matchsPlayed': matchsPlayed,
//       'win': win,
//       'draw': draw,
//       'lose': lose,
//       'goals': goals,
//     };
//   }
// }

// class Goals {
//   final int? forGoals;
//   final int? againstGoals;

//   Goals({
//     this.forGoals,
//     this.againstGoals,
//   });

//   Map<String, dynamic> json() {
//     return {
//       'forGoals': forGoals,
//       'againstGoals': againstGoals,
//     };
//   }
// }


class Standingssss {
  int? rank;
  Team? team;
  int? points;
  int? goalsDiff;
  String? group;
  String? form;
  String? status;
  String? description;
  Stat? all;
  Stat? home;
  Stat? away;
  String? update;

  Standingssss({
    this.rank,
    this.team,
    this.points,
    this.goalsDiff,
    this.group,
    this.form,
    this.status,
    this.description,
    this.all,
    this.home,
    this.away,
    this.update,
  });

  factory Standingssss.fromJson(Map<String, dynamic> json) {
    return Standingssss(
      rank: json['rank'] as int?,
      team: Team.fromJson(json['team'] ?? {}),
      points: json['points'] as int?,
      goalsDiff: json['goalsDiff'] as int?,
      group: json['group'] as String?,
      form: json['form'] as String?,
      status: json['status'] as String?,
      description: json['description'] as String?,
      all: Stat.fromJson(json['all'] ?? {}),
      home: Stat.fromJson(json['home'] ?? {}),
      away: Stat.fromJson(json['away']?? {}),
      update: json['update'] as String?,
    );
  }
}

class Team {
  int? id;
  String? name;
  String? logo;

  Team({
    this.id,
    this.name,
    this.logo,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'] as int?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
    );
  }
}

class Stat {
  int? played;
  int? win;
  int? draw;
  int? lose;
  Goals? goals;

  Stat({
    this.played,
    this.win,
    this.draw,
    this.lose,
    this.goals,
  });

  factory Stat.fromJson(Map<String, dynamic> json) {
    return Stat(
      played: json['played'] as int?,
      win: json['win'] as int?,
      draw: json['draw'] as int?,
      lose: json['lose'] as int?,
      goals: Goals.fromJson(json['goals'] ?? {}),
    );
  }
}

class Goals {
  int? forGoals;
  int? againstGoals;

  Goals({
    this.forGoals,
    this.againstGoals,
  });

  factory Goals.fromJson(Map<String, dynamic> json) {
    return Goals(
      forGoals: json['for'] as int?,
      againstGoals: json['against'] as int?,
    );
  }
}


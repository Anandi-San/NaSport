// class Leaguee {
//   final int id;
//   final String name;
//   final String country;
//   final String logo;
//   final String flag;
//   final int season;
//   final List<Standing> standings;

//   Leaguee({
//     required this.id,
//     required this.name,
//     required this.country,
//     required this.logo,
//     required this.flag,
//     required this.season,
//     required this.standings,
//   });

//   factory Leaguee.fromJson(Map<String, dynamic> json) {
//     final standingsList = json['standings'] as List<dynamic>;
//     final standings = standingsList
//         .map((standingJson) => Standing.fromJson(standingJson))
//         .toList();

//     return Leaguee(
//       id: json['id'],
//       name: json['name'],
//       country: json['country'],
//       logo: json['logo'],
//       flag: json['flag'],
//       season: json['season'],
//       standings: standings,
//     );
//   }
// }

// class Standing {
//   final int rank;
//   final Team team;
//   final int points;
//   final int goalsDiff;
//   final String group;
//   final String form;
//   final String status;
//   final String description;
//   final Stat all;
//   final Stat home;
//   final Stat away;
//   final String update;

//   Standing({
//     required this.rank,
//     required this.team,
//     required this.points,
//     required this.goalsDiff,
//     required this.group,
//     required this.form,
//     required this.status,
//     required this.description,
//     required this.all,
//     required this.home,
//     required this.away,
//     required this.update,
//   });

//   factorySoccerStanding Standing.fromJson(Map<String, dynamic> json) {
//     return Standing(
//       rank: json['rank'],
//       team: Team.fromJson(json['team']),
//       points: json['points'],
//       goalsDiff: json['goalsDiff'],
//       group: json['group'],
//       form: json['form'],
//       status: json['status'],
//       description: json['description'],
//       all: Stat.fromJson(json['all']),
//       home: Stat.fromJson(json['home']),
//       away: Stat.fromJson(json['away']),
//       update: json['update'],
//     );
//   }
// }

// class Team {
//   final int id;
//   final String name;
//   final String logo;

//   Team({
//     required this.id,
//     required this.name,
//     required this.logo,
//   });

//   factory Team.fromJson(Map<String, dynamic> json) {
//     return Team(
//       id: json['id'],
//       name: json['name'],
//       logo: json['logo'],
//     );
//   }
// }

// class Stat {
//   final int played;
//   final int win;
//   final int draw;
//   final int lose;
//   final Goals goals;

//   Stat({
//     required this.played,
//     required this.win,
//     required this.draw,
//     required this.lose,
//     required this.goals,
//   });

//   factory Stat.fromJson(Map<String, dynamic> json) {
//     return Stat(
//       played: json['played'],
//       win: json['win'],
//       draw: json['draw'],
//       lose: json['lose'],
//       goals: Goals.fromJson(json['goals']),
//     );
//   }
// }

// class Goals {
//   final int forGoals;
//   final int againstGoals;

//   Goals({
//     required this.forGoals,
//     required this.againstGoals,
//   });

//   factory Goals.fromJson(Map<String, dynamic> json) {
//     return Goals(
//       forGoals: json['for'],
//       againstGoals: json['against'],
//     );
//   }
// }

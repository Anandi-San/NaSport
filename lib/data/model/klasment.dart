// class Klasments {
//   int? rank;
//   Team? team;
//   int? points;
//   int? goalsDiff;
//   String? group;
//   String? form;
//   String? status;
//   String? description;
//   Statistic? all;
//   Statistic? home;
//   Statistic? away;
//   DateTime? update;

//   Klasments({
//     this.rank,
//     this.team,
//     this.points,
//     this.goalsDiff,
//     this.group,
//     this.form,
//     this.status,
//     this.description,
//     this.all,
//     this.home,
//     this.away,
//     this.update,
//   });

//   factory Klasments.fromJson(Map<String, dynamic> json) {
//     return Klasments(
//       rank: json['rank'] as int?,
//       team: json['team'] != null ? Team.fromJson(json['team']) : null,
//       points: json['points'] as int?,
//       goalsDiff: json['goalsDiff'] as int?,
//       group: json['group'] as String?,
//       form: json['form'] as String?,
//       status: json['status'] as String?,
//       description: json['description'] as String?,
//       all: json['all'] != null ? Statistic.fromJson(json['all']) : null,
//       home: json['home'] != null ? Statistic.fromJson(json['home']) : null,
//       away: json['away'] != null ? Statistic.fromJson(json['away']) : null,
//       update: json['update'] != null ? DateTime.parse(json['update']) : null,
//     );
//   }
// }

// class Team {
//   int? id;
//   String? name;
//   String? logo;

//   Team({
//     this.id,
//     this.name,
//     this.logo,
//   });

//   factory Team.fromJson(Map<String, dynamic> json) {
//     return Team(
//       id: json['id'] as int?,
//       name: json['name'] as String?,
//       logo: json['logo'] as String?,
//     );
//   }
// }

// class Statistic {
//   int? played;
//   int? win;
//   int? draw;
//   int? lose;
//   Goals? goals;

//   Statistic({
//     this.played,
//     this.win,
//     this.draw,
//     this.lose,
//     this.goals,
//   });

//   factory Statistic.fromJson(Map<String, dynamic> json) {
//     return Statistic(
//       played: json['played'] as int?,
//       win: json['win'] as int?,
//       draw: json['draw'] as int?,
//       lose: json['lose'] as int?,
//       goals: json['goals'] != null ? Goals.fromJson(json['goals']) : null,
//     );
//   }
// }

// class Goals {
//   int? forGoals;
//   int? againstGoals;

//   Goals({
//     this.forGoals,
//     this.againstGoals,
//   });

//   factory Goals.fromJson(Map<String, dynamic> json) {
//     return Goals(
//       forGoals: json['for'] as int?,
//       againstGoals: json['against'] as int?,
//     );
//   }
// }

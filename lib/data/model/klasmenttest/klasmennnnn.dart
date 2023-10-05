class Leagueeee {
    int? id;
    String country;
    String logo;
    String flag;
    int? season;
    List<List<Standing>> standings;

    Leagueeee({
        required this.id,
        required this.country,
        required this.logo,
        required this.flag,
        required this.season,
        required this.standings,
    });

}

class Standing {
    int? rank;
    Team team;
    int? points;
    int? goalsDiff;
    String form;
    String? description;
    All all;
    All home;
    All away;
    DateTime update;

    Standing({
        required this.rank,
        required this.team,
        required this.points,
        required this.goalsDiff,
        required this.form,
        required this.description,
        required this.all,
        required this.home,
        required this.away,
        required this.update,
    });

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

}


class Goals {
    int? goalsFor;
    int? against;

    Goals({
        required this.goalsFor,
        required this.against,
    });

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

}
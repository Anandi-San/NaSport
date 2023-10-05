import 'package:freezed_annotation/freezed_annotation.dart';

part 'standingmodel.freezed.dart';
// part 'standingmodel.g.dart';


@freezed
class MatchResult with _$MatchResult {
    const factory MatchResult({
        @JsonKey(name: "get")
        required String matchResultGet,
        @JsonKey(name: "parameters")
        required Parameters parameters,
        @JsonKey(name: "errors")
        required List<dynamic> errors,
        @JsonKey(name: "results")
        required int results,
        @JsonKey(name: "paging")
        required Paging paging,
        @JsonKey(name: "response")
        required List<Response> response,
    }) = _MatchResult;
}

@freezed
class Paging with _$Paging {
    const factory Paging({
        @JsonKey(name: "current")
        required int current,
        @JsonKey(name: "total")
        required int total,
    }) = _Paging;
}

@freezed
class Parameters with _$Parameters {
    const factory Parameters({
        @JsonKey(name: "season")
        required String season,
        @JsonKey(name: "league")
        required String league,
    }) = _Parameters;
}

@freezed
class Response with _$Response {
    const factory Response({
        @JsonKey(name: "league")
        required League league,
    }) = _Response;
}

@freezed
class League with _$League {
    const factory League({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "name")
        required Name name,
        @JsonKey(name: "country")
        required String country,
        @JsonKey(name: "logo")
        required String logo,
        @JsonKey(name: "flag")
        required String flag,
        @JsonKey(name: "season")
        required int season,
        @JsonKey(name: "standings")
        required List<List<Standing>> standings,
    }) = _League;
}

enum Name {
    @JsonValue("Premier League")
    PREMIER_LEAGUE
}

@freezed
class Standing with _$Standing {
    const factory Standing({
        @JsonKey(name: "rank")
        required int rank,
        @JsonKey(name: "team")
        required Team team,
        @JsonKey(name: "points")
        required int points,
        @JsonKey(name: "goalsDiff")
        required int goalsDiff,
        @JsonKey(name: "group")
        required Name group,
        @JsonKey(name: "form")
        required String form,
        @JsonKey(name: "status")
        required Status status,
        @JsonKey(name: "description")
        required String? description,
        @JsonKey(name: "all")
        required All all,
        @JsonKey(name: "home")
        required All home,
        @JsonKey(name: "away")
        required All away,
        @JsonKey(name: "update")
        required DateTime update,
    }) = _Standing;
}

@freezed
class All with _$All {
    const factory All({
        @JsonKey(name: "played")
        required int played,
        @JsonKey(name: "win")
        required int win,
        @JsonKey(name: "draw")
        required int draw,
        @JsonKey(name: "lose")
        required int lose,
        @JsonKey(name: "goals")
        required Goals goals,
    }) = _All;
}

@freezed
class Goals with _$Goals {
    const factory Goals({
        @JsonKey(name: "for")
        required int goalsFor,
        @JsonKey(name: "against")
        required int against,
    }) = _Goals;
}

enum Status {
    @JsonValue("same")
    SAME
}

@freezed
class Team with _$Team {
    const factory Team({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "name")
        required String name,
        @JsonKey(name: "logo")
        required String logo,
    }) = _Team;
}
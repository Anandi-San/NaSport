import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixtures.freezed.dart';
part 'fixtures.g.dart';

@freezed
class Fixtures with _$Fixtures {
  const factory Fixtures({
    @JsonKey(name: "get") String? fixturesGet,
    @JsonKey(name: "parameters") Parameters? parameters,
    @JsonKey(name: "errors") List<dynamic>? errors,
    @JsonKey(name: "results") int? results,
    @JsonKey(name: "paging") Paging? paging,
    @JsonKey(name: "response") List<Response>? response,
  }) = _Fixtures;

  factory Fixtures.fromJson(Map<String, dynamic> json) =>
      _$FixturesFromJson(json);
}

@freezed
class Paging with _$Paging {
  const factory Paging({
    @JsonKey(name: "current") int? current,
    @JsonKey(name: "total") int? total,
  }) = _Paging;

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}

@freezed
class Parameters with _$Parameters {
  const factory Parameters({
    @JsonKey(name: "season") String? season,
    @JsonKey(name: "league") String? league,
  }) = _Parameters;

  factory Parameters.fromJson(Map<String, dynamic> json) =>
      _$ParametersFromJson(json);
}

@freezed
class Response with _$Response {
  const factory Response({
    @JsonKey(name: "league") League? league,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

@freezed
class League with _$League {
  const factory League({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "logo") String? logo,
    @JsonKey(name: "flag") String? flag,
    @JsonKey(name: "season") int? season,
    @JsonKey(name: "standings") List<List<Standing>>? standings,
  }) = _League;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}

@freezed
class Standing with _$Standing {
  const factory Standing({
    @JsonKey(name: "rank") int? rank,
    @JsonKey(name: "team") Team? team,
    @JsonKey(name: "points") int? points,
    @JsonKey(name: "goalsDiff") int? goalsDiff,
    @JsonKey(name: "group") String? group,
    @JsonKey(name: "form") String? form,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "all") All? all,
    @JsonKey(name: "home") All? home,
    @JsonKey(name: "away") All? away,
    @JsonKey(name: "update") DateTime? update,
  }) = _Standing;

  factory Standing.fromJson(Map<String, dynamic> json) =>
      _$StandingFromJson(json);
}

@freezed
class All with _$All {
  const factory All({
    @JsonKey(name: "played") int? played,
    @JsonKey(name: "win") int? win,
    @JsonKey(name: "draw") int? draw,
    @JsonKey(name: "lose") int? lose,
    @JsonKey(name: "goals") Goals? goals,
  }) = _All;

  factory All.fromJson(Map<String, dynamic> json) => _$AllFromJson(json);
}

@freezed
class Goals with _$Goals {
  const factory Goals({
    @JsonKey(name: "for") int? goalsFor,
    @JsonKey(name: "against") int? against,
  }) = _Goals;

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}

@freezed
class Team with _$Team {
  const factory Team({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "logo") String? logo,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

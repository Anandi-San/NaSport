import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixtures1.freezed.dart';
part 'fixtures1.g.dart';


@freezed
class Fixtures with _$Fixtures {
  const factory Fixtures({
    @JsonKey(name: "response") List<Response>? response,
  }) = _Fixtures;

  factory Fixtures.fromJson(Map<String, dynamic> json) =>
      _$FixturesFromJson(json);
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
    @JsonKey(name: "standings") List<List<Standing>>? standings,
  }) = _League;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}

@freezed
class Standing with _$Standing {
  const factory Standing({
    @JsonKey(name: "team") Team? team,
    @JsonKey(name: "all") All? all,
    @JsonKey(name: "goals") Goals? goals,
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
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "logo") String? logo,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}


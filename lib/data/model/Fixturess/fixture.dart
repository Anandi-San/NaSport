import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixture.freezed.dart';
part 'fixture.g.dart';

@freezed
class SoccerMatchh with _$SoccerMatchh {
  const factory SoccerMatchh(
      {@JsonKey(name: 'fixture') Fixture? fixture,
      @JsonKey(name: 'home')  Team? home,
      @JsonKey(name: 'away') Team? away,
      @JsonKey(name: 'goals') Goal? goal,
      @JsonKey(name: 'league') Leagues? leagues}) = _SoccerMatchh;

  factory SoccerMatchh.fromJson(Map<String, dynamic> json) =>
      _$SoccerMatchhFromJson(json);
}

@freezed
class Fixture with _$Fixture {
  const factory Fixture(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'status') Status? status}) = _Fixture;

  factory Fixture.fromJson(Map<String, dynamic> json) => _$FixtureFromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status(
      {@JsonKey(name: 'elapsed') int? elapsedTime,
      @JsonKey(name: 'long') String? long}) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
class Team with _$Team {
  const factory Team(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'logo') String? logoUrl}) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class Goal with _$Goal {
  const factory Goal(
      {@JsonKey(name: 'home') int? home,
      @JsonKey(name: 'away') int? away}) = _Goal;

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
}

@freezed
class Leagues with _$Leagues {
  const factory Leagues(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'season') int? season,
      @JsonKey(name: 'round') String? round}) = _Leagues;

  factory Leagues.fromJson(Map<String, dynamic> json) => _$LeaguesFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'Standingmodel.freezed.dart';
part 'Standingmodel.g.dart';

@freezed
class StandingModel with _$StandingModel {
  const factory StandingModel({
    required int? rank,
    required Team team,
    required int? points,
    required int? goalsDiff,
    required All all,
  }) = _Standing;

  factory StandingModel.fromJson(Map<String, dynamic> json) =>
      _$StandingModelFromJson(json);
}

@freezed
class Team with _$Team {
  const factory Team({
    required int? id,
    required String? name,
    required String? logo,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class All with _$All {
  const factory All({
    required int? played,
    required int? win,
    required int? draw,
    required int? lose,
    required Goals goals,
  }) = _All;

  factory All.fromJson(Map<String, dynamic> json) => _$AllFromJson(json);
}

@freezed
class Goals with _$Goals {
  const factory Goals({
    required int? goalsFor,
    required int? against,
  }) = _Goals;

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}

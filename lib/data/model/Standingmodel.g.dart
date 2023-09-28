// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Standingmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StandingImpl _$$StandingImplFromJson(Map<String, dynamic> json) =>
    _$StandingImpl(
      rank: json['rank'] as int?,
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      points: json['points'] as int?,
      goalsDiff: json['goalsDiff'] as int?,
      all: All.fromJson(json['all'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StandingImplToJson(_$StandingImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'team': instance.team,
      'points': instance.points,
      'goalsDiff': instance.goalsDiff,
      'all': instance.all,
    };

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
    };

_$AllImpl _$$AllImplFromJson(Map<String, dynamic> json) => _$AllImpl(
      played: json['played'] as int?,
      win: json['win'] as int?,
      draw: json['draw'] as int?,
      lose: json['lose'] as int?,
      goals: Goals.fromJson(json['goals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AllImplToJson(_$AllImpl instance) => <String, dynamic>{
      'played': instance.played,
      'win': instance.win,
      'draw': instance.draw,
      'lose': instance.lose,
      'goals': instance.goals,
    };

_$GoalsImpl _$$GoalsImplFromJson(Map<String, dynamic> json) => _$GoalsImpl(
      goalsFor: json['goalsFor'] as int?,
      against: json['against'] as int?,
    );

Map<String, dynamic> _$$GoalsImplToJson(_$GoalsImpl instance) =>
    <String, dynamic>{
      'goalsFor': instance.goalsFor,
      'against': instance.against,
    };

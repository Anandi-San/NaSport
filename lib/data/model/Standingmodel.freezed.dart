// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Standingmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StandingModel _$StandingModelFromJson(Map<String, dynamic> json) {
  return _Standing.fromJson(json);
}

/// @nodoc
mixin _$StandingModel {
  int? get rank => throw _privateConstructorUsedError;
  Team get team => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  int? get goalsDiff => throw _privateConstructorUsedError;
  All get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandingModelCopyWith<StandingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingModelCopyWith<$Res> {
  factory $StandingModelCopyWith(
          StandingModel value, $Res Function(StandingModel) then) =
      _$StandingModelCopyWithImpl<$Res, StandingModel>;
  @useResult
  $Res call({int? rank, Team team, int? points, int? goalsDiff, All all});

  $TeamCopyWith<$Res> get team;
  $AllCopyWith<$Res> get all;
}

/// @nodoc
class _$StandingModelCopyWithImpl<$Res, $Val extends StandingModel>
    implements $StandingModelCopyWith<$Res> {
  _$StandingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = freezed,
    Object? team = null,
    Object? points = freezed,
    Object? goalsDiff = freezed,
    Object? all = null,
  }) {
    return _then(_value.copyWith(
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      goalsDiff: freezed == goalsDiff
          ? _value.goalsDiff
          : goalsDiff // ignore: cast_nullable_to_non_nullable
              as int?,
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as All,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team {
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AllCopyWith<$Res> get all {
    return $AllCopyWith<$Res>(_value.all, (value) {
      return _then(_value.copyWith(all: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StandingImplCopyWith<$Res>
    implements $StandingModelCopyWith<$Res> {
  factory _$$StandingImplCopyWith(
          _$StandingImpl value, $Res Function(_$StandingImpl) then) =
      __$$StandingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? rank, Team team, int? points, int? goalsDiff, All all});

  @override
  $TeamCopyWith<$Res> get team;
  @override
  $AllCopyWith<$Res> get all;
}

/// @nodoc
class __$$StandingImplCopyWithImpl<$Res>
    extends _$StandingModelCopyWithImpl<$Res, _$StandingImpl>
    implements _$$StandingImplCopyWith<$Res> {
  __$$StandingImplCopyWithImpl(
      _$StandingImpl _value, $Res Function(_$StandingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = freezed,
    Object? team = null,
    Object? points = freezed,
    Object? goalsDiff = freezed,
    Object? all = null,
  }) {
    return _then(_$StandingImpl(
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      goalsDiff: freezed == goalsDiff
          ? _value.goalsDiff
          : goalsDiff // ignore: cast_nullable_to_non_nullable
              as int?,
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as All,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StandingImpl implements _Standing {
  const _$StandingImpl(
      {required this.rank,
      required this.team,
      required this.points,
      required this.goalsDiff,
      required this.all});

  factory _$StandingImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandingImplFromJson(json);

  @override
  final int? rank;
  @override
  final Team team;
  @override
  final int? points;
  @override
  final int? goalsDiff;
  @override
  final All all;

  @override
  String toString() {
    return 'StandingModel(rank: $rank, team: $team, points: $points, goalsDiff: $goalsDiff, all: $all)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandingImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.goalsDiff, goalsDiff) ||
                other.goalsDiff == goalsDiff) &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rank, team, points, goalsDiff, all);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandingImplCopyWith<_$StandingImpl> get copyWith =>
      __$$StandingImplCopyWithImpl<_$StandingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandingImplToJson(
      this,
    );
  }
}

abstract class _Standing implements StandingModel {
  const factory _Standing(
      {required final int? rank,
      required final Team team,
      required final int? points,
      required final int? goalsDiff,
      required final All all}) = _$StandingImpl;

  factory _Standing.fromJson(Map<String, dynamic> json) =
      _$StandingImpl.fromJson;

  @override
  int? get rank;
  @override
  Team get team;
  @override
  int? get points;
  @override
  int? get goalsDiff;
  @override
  All get all;
  @override
  @JsonKey(ignore: true)
  _$$StandingImplCopyWith<_$StandingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call({int? id, String? name, String? logo});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamImplCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$TeamImplCopyWith(
          _$TeamImpl value, $Res Function(_$TeamImpl) then) =
      __$$TeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? logo});
}

/// @nodoc
class __$$TeamImplCopyWithImpl<$Res>
    extends _$TeamCopyWithImpl<$Res, _$TeamImpl>
    implements _$$TeamImplCopyWith<$Res> {
  __$$TeamImplCopyWithImpl(_$TeamImpl _value, $Res Function(_$TeamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$TeamImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamImpl implements _Team {
  const _$TeamImpl({required this.id, required this.name, required this.logo});

  factory _$TeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? logo;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      __$$TeamImplCopyWithImpl<_$TeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamImplToJson(
      this,
    );
  }
}

abstract class _Team implements Team {
  const factory _Team(
      {required final int? id,
      required final String? name,
      required final String? logo}) = _$TeamImpl;

  factory _Team.fromJson(Map<String, dynamic> json) = _$TeamImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

All _$AllFromJson(Map<String, dynamic> json) {
  return _All.fromJson(json);
}

/// @nodoc
mixin _$All {
  int? get played => throw _privateConstructorUsedError;
  int? get win => throw _privateConstructorUsedError;
  int? get draw => throw _privateConstructorUsedError;
  int? get lose => throw _privateConstructorUsedError;
  Goals get goals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllCopyWith<All> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCopyWith<$Res> {
  factory $AllCopyWith(All value, $Res Function(All) then) =
      _$AllCopyWithImpl<$Res, All>;
  @useResult
  $Res call({int? played, int? win, int? draw, int? lose, Goals goals});

  $GoalsCopyWith<$Res> get goals;
}

/// @nodoc
class _$AllCopyWithImpl<$Res, $Val extends All> implements $AllCopyWith<$Res> {
  _$AllCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? played = freezed,
    Object? win = freezed,
    Object? draw = freezed,
    Object? lose = freezed,
    Object? goals = null,
  }) {
    return _then(_value.copyWith(
      played: freezed == played
          ? _value.played
          : played // ignore: cast_nullable_to_non_nullable
              as int?,
      win: freezed == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int?,
      draw: freezed == draw
          ? _value.draw
          : draw // ignore: cast_nullable_to_non_nullable
              as int?,
      lose: freezed == lose
          ? _value.lose
          : lose // ignore: cast_nullable_to_non_nullable
              as int?,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res> get goals {
    return $GoalsCopyWith<$Res>(_value.goals, (value) {
      return _then(_value.copyWith(goals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllImplCopyWith<$Res> implements $AllCopyWith<$Res> {
  factory _$$AllImplCopyWith(_$AllImpl value, $Res Function(_$AllImpl) then) =
      __$$AllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? played, int? win, int? draw, int? lose, Goals goals});

  @override
  $GoalsCopyWith<$Res> get goals;
}

/// @nodoc
class __$$AllImplCopyWithImpl<$Res> extends _$AllCopyWithImpl<$Res, _$AllImpl>
    implements _$$AllImplCopyWith<$Res> {
  __$$AllImplCopyWithImpl(_$AllImpl _value, $Res Function(_$AllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? played = freezed,
    Object? win = freezed,
    Object? draw = freezed,
    Object? lose = freezed,
    Object? goals = null,
  }) {
    return _then(_$AllImpl(
      played: freezed == played
          ? _value.played
          : played // ignore: cast_nullable_to_non_nullable
              as int?,
      win: freezed == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int?,
      draw: freezed == draw
          ? _value.draw
          : draw // ignore: cast_nullable_to_non_nullable
              as int?,
      lose: freezed == lose
          ? _value.lose
          : lose // ignore: cast_nullable_to_non_nullable
              as int?,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllImpl implements _All {
  const _$AllImpl(
      {required this.played,
      required this.win,
      required this.draw,
      required this.lose,
      required this.goals});

  factory _$AllImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllImplFromJson(json);

  @override
  final int? played;
  @override
  final int? win;
  @override
  final int? draw;
  @override
  final int? lose;
  @override
  final Goals goals;

  @override
  String toString() {
    return 'All(played: $played, win: $win, draw: $draw, lose: $lose, goals: $goals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllImpl &&
            (identical(other.played, played) || other.played == played) &&
            (identical(other.win, win) || other.win == win) &&
            (identical(other.draw, draw) || other.draw == draw) &&
            (identical(other.lose, lose) || other.lose == lose) &&
            (identical(other.goals, goals) || other.goals == goals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, played, win, draw, lose, goals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllImplCopyWith<_$AllImpl> get copyWith =>
      __$$AllImplCopyWithImpl<_$AllImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllImplToJson(
      this,
    );
  }
}

abstract class _All implements All {
  const factory _All(
      {required final int? played,
      required final int? win,
      required final int? draw,
      required final int? lose,
      required final Goals goals}) = _$AllImpl;

  factory _All.fromJson(Map<String, dynamic> json) = _$AllImpl.fromJson;

  @override
  int? get played;
  @override
  int? get win;
  @override
  int? get draw;
  @override
  int? get lose;
  @override
  Goals get goals;
  @override
  @JsonKey(ignore: true)
  _$$AllImplCopyWith<_$AllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Goals _$GoalsFromJson(Map<String, dynamic> json) {
  return _Goals.fromJson(json);
}

/// @nodoc
mixin _$Goals {
  int? get goalsFor => throw _privateConstructorUsedError;
  int? get against => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalsCopyWith<Goals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsCopyWith<$Res> {
  factory $GoalsCopyWith(Goals value, $Res Function(Goals) then) =
      _$GoalsCopyWithImpl<$Res, Goals>;
  @useResult
  $Res call({int? goalsFor, int? against});
}

/// @nodoc
class _$GoalsCopyWithImpl<$Res, $Val extends Goals>
    implements $GoalsCopyWith<$Res> {
  _$GoalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalsFor = freezed,
    Object? against = freezed,
  }) {
    return _then(_value.copyWith(
      goalsFor: freezed == goalsFor
          ? _value.goalsFor
          : goalsFor // ignore: cast_nullable_to_non_nullable
              as int?,
      against: freezed == against
          ? _value.against
          : against // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalsImplCopyWith<$Res> implements $GoalsCopyWith<$Res> {
  factory _$$GoalsImplCopyWith(
          _$GoalsImpl value, $Res Function(_$GoalsImpl) then) =
      __$$GoalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? goalsFor, int? against});
}

/// @nodoc
class __$$GoalsImplCopyWithImpl<$Res>
    extends _$GoalsCopyWithImpl<$Res, _$GoalsImpl>
    implements _$$GoalsImplCopyWith<$Res> {
  __$$GoalsImplCopyWithImpl(
      _$GoalsImpl _value, $Res Function(_$GoalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalsFor = freezed,
    Object? against = freezed,
  }) {
    return _then(_$GoalsImpl(
      goalsFor: freezed == goalsFor
          ? _value.goalsFor
          : goalsFor // ignore: cast_nullable_to_non_nullable
              as int?,
      against: freezed == against
          ? _value.against
          : against // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalsImpl implements _Goals {
  const _$GoalsImpl({required this.goalsFor, required this.against});

  factory _$GoalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalsImplFromJson(json);

  @override
  final int? goalsFor;
  @override
  final int? against;

  @override
  String toString() {
    return 'Goals(goalsFor: $goalsFor, against: $against)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalsImpl &&
            (identical(other.goalsFor, goalsFor) ||
                other.goalsFor == goalsFor) &&
            (identical(other.against, against) || other.against == against));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, goalsFor, against);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalsImplCopyWith<_$GoalsImpl> get copyWith =>
      __$$GoalsImplCopyWithImpl<_$GoalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalsImplToJson(
      this,
    );
  }
}

abstract class _Goals implements Goals {
  const factory _Goals(
      {required final int? goalsFor,
      required final int? against}) = _$GoalsImpl;

  factory _Goals.fromJson(Map<String, dynamic> json) = _$GoalsImpl.fromJson;

  @override
  int? get goalsFor;
  @override
  int? get against;
  @override
  @JsonKey(ignore: true)
  _$$GoalsImplCopyWith<_$GoalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

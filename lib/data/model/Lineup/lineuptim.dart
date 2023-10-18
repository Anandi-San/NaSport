import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'lineuptim.freezed.dart';
part 'lineuptim.g.dart';

@freezed
class Lineuptim with _$Lineuptim {
    const factory Lineuptim({
        @JsonKey(name: "get")
        String? lineuptimGet,
        @JsonKey(name: "parameters")
        Parameters? parameters,
        @JsonKey(name: "errors")
        List<dynamic>? errors,
        @JsonKey(name: "results")
        int? results,
        @JsonKey(name: "paging")
        Paging? paging,
        @JsonKey(name: "response")
        List<Response>? response,
    }) = _Lineuptim;

    factory Lineuptim.fromJson(Map<String, dynamic> json) => _$LineuptimFromJson(json);
}

@freezed
class Paging with _$Paging {
    const factory Paging({
        @JsonKey(name: "current")
        int? current,
        @JsonKey(name: "total")
        int? total,
    }) = _Paging;

    factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}

@freezed
class Parameters with _$Parameters {
    const factory Parameters({
        @JsonKey(name: "fixture")
        String? fixture,
    }) = _Parameters;

    factory Parameters.fromJson(Map<String, dynamic> json) => _$ParametersFromJson(json);
}

@freezed
class Response with _$Response {
    const factory Response({
        @JsonKey(name: "team")
        Team? team,
        @JsonKey(name: "formation")
        String? formation,
        @JsonKey(name: "startXI")
        List<StartXi>? startXi,
        @JsonKey(name: "substitutes")
        List<StartXi>? substitutes,
        @JsonKey(name: "coach")
        Coach? coach,
    }) = _Response;

    factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}

@freezed
class Coach with _$Coach {
    const factory Coach({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "photo")
        String? photo,
    }) = _Coach;

    factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);
}

@freezed
class StartXi with _$StartXi {
    const factory StartXi({
        @JsonKey(name: "player")
        Player? player,
    }) = _StartXi;

    factory StartXi.fromJson(Map<String, dynamic> json) => _$StartXiFromJson(json);
}

@freezed
class Player with _$Player {
    const factory Player({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "number")
        int? number,
        @JsonKey(name: "pos")
        String? pos,
        @JsonKey(name: "grid")
        String? grid,
    }) = _Player;

    factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@freezed
class Team with _$Team {
    const factory Team({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "logo")
        String? logo,
        @JsonKey(name: "colors")
        Colors? colors,
    }) = _Team;

    factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class Colors with _$Colors {
    const factory Colors({
        @JsonKey(name: "player")
        Goalkeeper? player,
        @JsonKey(name: "goalkeeper")
        Goalkeeper? goalkeeper,
    }) = _Colors;

    factory Colors.fromJson(Map<String, dynamic> json) => _$ColorsFromJson(json);
}

@freezed
class Goalkeeper with _$Goalkeeper {
    const factory Goalkeeper({
        @JsonKey(name: "primary")
        String? primary,
        @JsonKey(name: "number")
        String? number,
        @JsonKey(name: "border")
        String? border,
    }) = _Goalkeeper;

    factory Goalkeeper.fromJson(Map<String, dynamic> json) => _$GoalkeeperFromJson(json);
}

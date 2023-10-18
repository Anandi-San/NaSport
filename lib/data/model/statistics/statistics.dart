import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'statistics.freezed.dart';
part 'statistics.g.dart';

@freezed
class Statictics with _$Statictics {
    const factory Statictics({
        @JsonKey(name: "get")
        String? staticticsGet,
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
    }) = _Statictics;

    factory Statictics.fromJson(Map<String, dynamic> json) => _$StaticticsFromJson(json);
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
        @JsonKey(name: "team")
        String? team,
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
        @JsonKey(name: "statistics")
        List<Statistic>? statistics,
    }) = _Response;

    factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}

@freezed
class Statistic with _$Statistic {
    const factory Statistic({
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "value")
        dynamic value,
    }) = _Statistic;

    factory Statistic.fromJson(Map<String, dynamic> json) => _$StatisticFromJson(json);
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
    }) = _Team;

    factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

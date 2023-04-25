// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(ActDet.serializer)
      ..add(ActMov.serializer)
      ..add(ActTv.serializer)
      ..add(AppState.serializer)
      ..add(Cast.serializer)
      ..add(Genre.serializer)
      ..add(IndMovDets.serializer)
      ..add(MovieDets.serializer)
      ..add(TvDets.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Genre)]),
          () => new ListBuilder<Genre>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MovieDets)]),
          () => new ListBuilder<MovieDets>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MovieDets)]),
          () => new ListBuilder<MovieDets>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MovieDets)]),
          () => new ListBuilder<MovieDets>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Cast)]),
          () => new ListBuilder<Cast>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ActTv)]),
          () => new ListBuilder<ActTv>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ActMov)]),
          () => new ListBuilder<ActMov>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

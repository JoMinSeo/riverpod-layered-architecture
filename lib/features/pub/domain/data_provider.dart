import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_layered_architecture/features/dio_provider.dart';
import 'package:riverpod_layered_architecture/features/pub/domain/pub_repository.dart';
import 'package:riverpod_layered_architecture/features/pub/domain/service/pub_api_service.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/repository/pub_repository_impl.dart';

final _pubServiceProvider = Provider<PubService>((ref) => PubService(ref.read(dioProvider)));

final pubRepositoryProvider = Provider<PubRepository>((ref) => PubRepositoryImpl(ref.watch(_pubServiceProvider)));

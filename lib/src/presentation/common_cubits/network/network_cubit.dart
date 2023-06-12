import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'network_cubit.freezed.dart';
part 'network_state.dart';

@singleton
class NetworkCubit extends Cubit<NetworkState> {
  NetworkCubit() : super(const _Initial());
}

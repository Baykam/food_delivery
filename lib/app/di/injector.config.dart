// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:food_delivery/app/di/common_injectable_module.dart' as _i17;
import 'package:food_delivery/src/data/repositories/category_repository_impl.dart'
    as _i12;
import 'package:food_delivery/src/data/repositories/menu_repository.dart'
    as _i14;
import 'package:food_delivery/src/data/repositories/user_repository_impl.dart'
    as _i6;
import 'package:food_delivery/src/data/sources/api.dart' as _i3;
import 'package:food_delivery/src/data/sources/network_info.dart' as _i8;
import 'package:food_delivery/src/domain/repositories/i_category_repository.dart'
    as _i11;
import 'package:food_delivery/src/domain/repositories/i_menu_repository.dart'
    as _i13;
import 'package:food_delivery/src/domain/repositories/i_user_repository.dart'
    as _i5;
import 'package:food_delivery/src/presentation/common_cubits/categories/categories_cubit.dart'
    as _i16;
import 'package:food_delivery/src/presentation/common_cubits/menu/menu_cubit.dart'
    as _i15;
import 'package:food_delivery/src/presentation/common_cubits/network/network_cubit.dart'
    as _i7;
import 'package:food_delivery/src/presentation/common_cubits/user/user_cubit.dart'
    as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final commonInjectableModule = _$CommonInjectableModule();
    gh.singleton<_i3.Api>(_i3.Api());
    gh.singleton<_i3.CategoryGetApi>(_i3.CategoryGetApi());
    gh.singleton<_i3.CategoryPostApi>(_i3.CategoryPostApi());
    gh.factory<_i4.Connectivity>(() => commonInjectableModule.connectivity);
    gh.factory<_i5.IUserRepository>(
        () => _i6.UserRepositoryImpl(gh<_i3.Api>()));
    gh.singleton<_i3.MenuGetApi>(_i3.MenuGetApi());
    gh.singleton<_i7.NetworkCubit>(_i7.NetworkCubit());
    gh.lazySingleton<_i8.NetworkInfo>(
        () => _i8.NetworkInfoImpl(networkConnectivity: gh<_i4.Connectivity>()));
    await gh.factoryAsync<_i9.SharedPreferences>(
      () => commonInjectableModule.sharedPreferences,
      preResolve: true,
    );
    gh.singleton<_i10.UserCubit>(_i10.UserCubit(gh<_i5.IUserRepository>()));
    gh.factory<_i11.ICategoryRepository>(() => _i12.CategoryRepositoryImpl(
          api: gh<_i3.CategoryGetApi>(),
          networkInfo: gh<_i8.NetworkInfo>(),
        ));
    gh.factory<_i13.IMenuRepository>(
        () => _i14.MenuRepositoryImpl(getaApi: gh<_i3.MenuGetApi>()));
    gh.singleton<_i15.MenuCubit>(_i15.MenuCubit(gh<_i13.IMenuRepository>()));
    gh.singleton<_i16.CategoriesCubit>(
        _i16.CategoriesCubit(gh<_i11.ICategoryRepository>()));
    return this;
  }
}

class _$CommonInjectableModule extends _i17.CommonInjectableModule {}

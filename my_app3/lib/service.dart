import 'package:chopper/chopper.dart';

part 'vegetable_service.chopper.dart';

@ChopperApi(baseUrl: '/v1')
abstract class VegetableService extends ChopperService {
  static VegetableService create([ChopperClient client]) =>
      _$VegetableService(client);

  @Get(path: "/vegetables")
  Future<Response> fetchVegetables({
    @Query('page[number]') int pageNumber = 1,
  });

  @Get(path: "/vegetables/{vegetable_id}")
  Future<Response> fetchVegetables({
    @Path('vegetable_id') int vegetableId,
  });

  @Post(path: '/vegetables')
  Future<Response> postVegetable(@Body() VegetableForm vegetableForm);
}
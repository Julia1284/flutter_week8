import 'package:week_8_2/data/fetchhelper.dart';

class GifService {
  Future<List<dynamic>> getGifsByParameters(value) async {
    FetchHelper fetchData = FetchHelper(parameters: value);
    var decodedData = await fetchData.getGif();
    return decodedData;
  }
}

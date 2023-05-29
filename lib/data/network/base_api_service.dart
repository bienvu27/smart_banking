abstract class BaseApiService {
  // GET
  Future<dynamic> getResponse(
      String url, Map? headers, String? bearToken, String? endPoints);

  // POST
  Future<dynamic> postResponse(String url, Map<String, String>? headers, Map jsonBody,
      String? bearToken, String? endPoints);

  // DELETE
  Future<dynamic> deleteResponse(
      String url, Map<String, String>? headers, int id, String bearToken);

  // PUT
  Future<dynamic> putResponse(String url, Map<String, String> headers, String? bearToken);
}

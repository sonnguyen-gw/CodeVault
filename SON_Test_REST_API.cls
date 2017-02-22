@RestResource(urlMapping='/restapitest/*')
global class SON_Test_REST_API {

	@HttpGet
	global static void doGet() {

       ID userID;
       userID = UserInfo.getUserId();

        JSONGenerator gen = JSON.createGenerator(true);
        gen.writeStartObject();
        gen.writeStringField('status', 'success');
        gen.writeStringField('msg', 'yeahhh!!!');
        gen.writeEndObject();

        RestContext.response.statusCode=200;
        RestContext.response.addHeader('Content-Type', 'application/json');
        RestContext.response.responseBody = Blob.valueOf(gen.getAsString());

    }
}
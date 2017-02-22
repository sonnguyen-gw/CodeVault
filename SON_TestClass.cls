public class SON_TestClass {
 
   public static void basicHttpGet(){
     HttpRequest req = new HttpRequest();
     req.setEndpoint('http://www.google.com/search?q=rakuten');
     req.setMethod('GET');
     
     // Specify the required user name and password to access the endpoint
     // As well as the header and header information
 
     //String username = 'myname';
     //String password = 'mypwd';
  
     //Blob headerValue = Blob.valueOf(username + ':' + password);
     //String authorizationHeader = 'BASIC ' +
     //EncodingUtil.base64Encode(headerValue);
     //req.setHeader('Authorization', authorizationHeader);
   
     // Create a new http object to send the request object
     // A response object is generated as a result of the request  
  
     Http http = new Http();
     HTTPResponse res = http.send(req);
     System.debug('>>>Finishing...');
     System.debug('>>>GET result body:' + res.getBody());
     System.debug('>>>GET status code:' + res.getStatusCode());
   }

   public static void basicHttpPost(){
   	//String payLoad = 'sn=C02G8416DRJM&cn=&locale=&caller=&num=12345';
   	String payLoad = '';
	Http h = new Http();
	HttpRequest req = new HttpRequest();
	req.setEndpoint('http://httpbin.org/post');
	req.setMethod('POST');
	req.setBody(payLoad);
	HttpResponse res = h.send(req);
	System.debug('>>>POST result body:' + res.getBody());
  System.debug('>>>POST status code:' + res.getStatusCode());
}

}

package vue;

@:native("Vue.$http")
extern class VueResource {
	public static function get(url:String, options:RequestOptions):js.Promise;
	public static function head(url:String, options:RequestOptions):js.Promise;
	public static function delete(url:String, options:RequestOptions):js.Promise;
	public static function json(url:String, options:RequestOptions):js.Promise;
	
	public static function post(url:String, body:Dynamic ,options:RequestOptions):js.Promise;
	public static function put(url:String, body:Dynamic ,options:RequestOptions):js.Promise;
	public static function patch(url:String, body:Dynamic ,options:RequestOptions):js.Promise;
}

typedef RequestOptions =
{
	var url:String;
	var body:Dynamic;
	var headers:Dynamic;
	var params:Dynamic;
	var method:String;
	var timeout:Int;
	var before:Request->Void;
	var progress:Request->Void;
	var credentials:Bool;
	var emulateHTTP:Bool;
	var emulateJSON:Bool;
}
typedef Response =
{
	var url:String;
	var body:Dynamic;
	var headers:Header;
	var ok:Bool;
	var status:Int;
	var statusText:String;
	var text:Void->js.Promise;
	var json:Void->js.Promise;
	var blob:Void->js.Promise;
}

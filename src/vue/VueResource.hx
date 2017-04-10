package vue;

/**
 * vue-resource
 * The plugin for Vue.js provides services for making web requests
 * and handle responses using a XMLHttpRequest or JSONP.
 *
 * @source https://github.com/pagekit/vue-resource
 */
@:native("Vue.http")
extern class VueResource {
	public static function get(url:String, ?options:RequestOptions):js.Promise<Dynamic>;
	public static function head(url:String, ?options:RequestOptions):js.Promise<Dynamic>;
	public static function delete(url:String, ?options:RequestOptions):js.Promise<Dynamic>;
	public static function jsonp(url:String, ?options:RequestOptions):js.Promise<Dynamic>;

	public static function post(url:String, ?body:Dynamic, ?options:RequestOptions):js.Promise<Dynamic>;
	public static function put(url:String, ?body:Dynamic, ?options:RequestOptions):js.Promise<Dynamic>;
	public static function patch(url:String, ?body:Dynamic, ?options:RequestOptions):js.Promise<Dynamic>;
}

typedef RequestOptions =
{
	@:optional var url:String;
	@:optional var body:Dynamic;
	@:optional var headers:Dynamic;
	@:optional var params:Dynamic;
	@:optional var method:String;
	@:optional var responseType:String;
	@:optional var timeout:Int;
	@:optional var before:RequestOptions->Void;
	@:optional var progress:js.html.Event->Void;
	@:optional var credentials:Bool;
	@:optional var emulateHTTP:Bool;
	@:optional var emulateJSON:Bool;
}
typedef Response =
{
	@:optional var url:String;
	@:optional var body:Dynamic;
	@:optional var headers:Dynamic;
	@:optional var ok:Bool;
	@:optional var status:Int;
	@:optional var statusText:String;
	@:optional var text:Void->js.Promise<Dynamic>;
	@:optional var json:Void->js.Promise<Dynamic>;
	@:optional var blob:Void->js.Promise<Dynamic>;
}

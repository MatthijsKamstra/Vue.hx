package vue;

import haxe.extern.EitherType;
import haxe.Constraints.Function;
import js.html.HtmlElement;
import vue.Vue;

@:enum abstract RouterMode(String) {
	var HISTORY = 'history';
	var HASH = 'hash';
	var ABSTRACT = 'abstract';
}

/**
 * vue-router@2.x only works with Vue 2.x.
 */
@:native("VueRouter")
extern class VueRouter {
	public function new (routeOptions:RouterOption);
}

// https://router.vuejs.org/en/api/route-object.html
typedef Route = {
	var path:String;
	@:optional var params:Dynamic;
	@:optional var query:Dynamic;
	@:optional var hash:String;
	@:optional var fullPath:String;
	@:optional var matched:Array<RouteRecord>;
	@:optional var name:String;
	// @:optional var test:String;
}

// https://router.vuejs.org/en/api/options.html
typedef RouteConfig = {
	var path:String;
	@:optional var component:EitherType<VueComponentOptions,String>;
	@:optional var name:String;
  	// @:optional var components?: { [name: string]: Component }; // for named views
  	@:optional var redirect: EitherType<String, EitherType<Dynamic,Function>>;
	// @:optional var props?: boolean | string | Function;
	@:optional var alias: EitherType<String, Array<String>>;
	@:optional var children:Array<RouteConfig>; // for nested routes
  	// beforeEnter?: (to: Route, from: Route, next: Function) => void;
  	@:optional var meta:Dynamic;

	// 2.6.0+
	@:optional var caseSensitive: Bool; // use case sensitive match? (default: false)
  	@:optional var pathToRegexpOptions: Dynamic; // path-to-regexp options for compiling regex
}

// https://router.vuejs.org/en/api/options.html
typedef RouterOption = {
	var routes:Array<RouteConfig>;
	@:optional var mode:EitherType<String,RouterMode>; // 'history','hash','abstract' // default: "hash" (in browser) | "abstract" (in Node.js)
	@:optional var base:String;
	@:optional var linkActiveClass:String;
	@:optional var linkExactActiveClass:String;
	@:optional var scrollBehavior:haxe.Constraints.Function;
	@:optional var parseQuery:haxe.Constraints.Function;
	@:optional var stringifyQuery:haxe.Constraints.Function;
	@:optional var fallback:Bool;
}


typedef RouteRecord = {
	// no idea what it does
}

// @:native('this')
// extern class RouterCtx {
// 	// @:native("$route") public var route:RouteConfig;
// }
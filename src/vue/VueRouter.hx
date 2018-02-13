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
 *
 * @see https://router.vuejs.org/en/api/router-instance.html
 *
 * @author Ventroy Rolle (https://github.com/kidveno)
 * @author DenkiYagi Inc (https://github.com/DenkiYagi)
 * @author Matthijs Kamstra (https://github.com/MatthijsKamstra)
 */
@:native("VueRouter")
extern class VueRouter {
	public function new (routeOptions:RouterOption);

	var app(default, never): Vue;

    var mode(default, never): String;

    var currentRoute(default, never): Route;

    // function beforeEach(guard: NavigationGuard): Function;

    // function beforeResolve(guard: NavigationGuard): Function;

    // function afterEach(guard: NavigationGuard): Function;

    // function push(location: RawLocation, ?onComplete: Void -> Void, ?onAbort: Void -> Void): Void;

    // function replace(location: RawLocation, ?onComplete: Void -> Void, ?onAbort: Void -> Void): Void;

    function go(n: Int): Void;

    function back(): Void;

    function forward(): Void;

    // @:overload(function(to: RawLocation): Array<Vue<Dynamic>> {})
    // @:overload(function(to: Route): Array<Vue<Dynamic>> {})
    // function getMatchedComponents(): Array<Vue<Dynamic>>;

    // function resolve(to: RawLocation, ?current: Route, ?append: Bool): { location: Location, route: Route, href: String };

    function addRoutes(routes: Array<RouteConfig>): Void;

    function onReady(callback: Void -> Void, ?errorCallback: Dynamic -> Void): Void;

    function onError(callback: Dynamic -> Void): Void;

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


// https://router.vuejs.org/en/api/options.html
typedef RouteConfig = {
	var path:String;
	@:optional var component:EitherType<VueComponentOptions,String>;
	@:optional var name:String;
	// @:optional var params:Dynamic; // ???????
  	@:optional var components: Dynamic<EitherType<VueComponentOptions,String>>; // for named views
  	@:optional var redirect: EitherType<String, EitherType<Dynamic,Function>>;
	@:optional var props: EitherType<Bool, EitherType<String, Function>>; // boolean | string | Function;
	@:optional var alias: EitherType<String, Array<String>>;
	@:optional var children:Array<RouteConfig>; // for nested routes
  	// beforeEnter?: (to: Route, from: Route, next: Function) => void;
  	@:optional var meta:Dynamic;

	// 2.6.0+
	@:optional var caseSensitive: Bool; // use case sensitive match? (default: false)
  	@:optional var pathToRegexpOptions: Dynamic; // path-to-regexp options for compiling regex
}



typedef Location = {
    @:optional var name: String;
    @:optional var path: String;
    @:optional var hash: String;
    @:optional var query: Dynamic<String>;
    @:optional var params: Dynamic<String>;
    @:optional var append: Bool;
    @:optional var replace: Bool;
}

typedef RawLocation = EitherType<String, Location>;

// typedef NavigationGuard = Route -> Route -> (?Mixed4<Bool, RawLocation, Vue<Dynamic> -> Void, js.Error> -> Void) -> Void;
typedef NavigationGuard = Route -> Route -> Dynamic -> Void -> Void;

typedef RedirectOption = EitherType<RawLocation, Location -> RawLocation>;


/**
 * @see https://router.vuejs.org/en/essentials/dynamic-matching.html#advanced-matching-patterns
 */
typedef PathToRegexpOptions = {
    @:optional var sensitive: Bool;
    @:optional var strict: Bool;
    @:optional var end: Bool;
    @:optional var delimiter: String;
    // @:optional var endsWith: ValueOrArray<String>;
}

// https://router.vuejs.org/en/api/route-object.html
// typedef Route = {
// 	var path:String;
// 	@:optional var params:Dynamic;
// 	@:optional var query:Dynamic;
// 	@:optional var hash:String;
// 	@:optional var fullPath:String;
// 	@:optional var matched:Array<RouteRecord>;
// 	@:optional var name:String;
// 	// @:optional var test:String;
// }

/**
 * @see https://router.vuejs.org/en/api/route-object.html
 */
typedef Route = {
    var path(default, never): String;
    var params(default, never): Dynamic<String>;
    var query(default, never): Dynamic<String>;
    var hash(default, never): String;
    var fullPath(default, never): String;
    var matched(default, never): Array<RouteRecord>;
    @:optional var name(default, never): String;
    var meta(default, never): Dynamic;
    @:optional var redirectedFrom(default, never): String;
}


typedef RouteRecord = {
    var path(default, never): String;
    var regex: js.RegExp;

    var components: Dynamic<Dynamic>;// var components: Dynamic<Component>;
    // var instances: Dynamic<Vue<Dynamic>>;
    @:optional var name: String;
    @:optional var parent: RouteRecord;
    // @:optional var redirect: RedirectOption;
    @:optional var matchAs: String;
    var meta: Dynamic;
    // @:optional var beforeEnter: NavigationGuard;
    // var props: Mixed3<Bool, {}, Route -> {}>;
}

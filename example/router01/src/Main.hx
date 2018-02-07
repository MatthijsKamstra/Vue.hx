package ;

import vue.Vue;
import vue.VueRouter;

import js.Browser;

class Main
{
	function new()
	{
		trace("Haxe Vue.js example");

		// 0. If using a module system (e.g. via vue-cli), import Vue and VueRouter
		// and then call `Vue.use(VueRouter)`.

		// 1. Define route components.
		// These can be imported from other files
		var _Foo = { template: '<div>foo</div>' };
		var _Bar = { template: '<div>bar</div>' };

		// 2. Define some routes
		// Each route should map to a component. The "component" can
		// either be an actual component constructor created via
		// `Vue.extend()`, or just a component options object.
		// We'll talk about nested routes later.
		var routes  : Array<RouteConfig> = [
		  { path: '/foo', component: _Foo },
		  { path: '/bar', component: _Bar }
		];

		// 3. Create the router instance and pass the `routes` option
		// You can pass in additional options here, but let's
		// keep it simple for now.
		var router = new VueRouter({
		  routes:routes
		});
		// `routes` doensn't work in Haxe: short for `routes: routes`

		// 4. Create and mount the root instance.
		// Make sure to inject the router with the router option to make the
		// whole app router-aware.
		var app = new Vue({
		  router : router,
		  el: '#app'
		});

		// Now the app has started!

	}

	static public function main(){
		var main = new Main();
	}
}
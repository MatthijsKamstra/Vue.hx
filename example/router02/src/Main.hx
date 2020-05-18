package;

import vue.Vue;
import vue.VueRouter;
import js.Browser;

class Main {
	function new() {
		trace("Haxe Vue.js example");

		var _User = {
			template: '<div>User {{ $$route.params.id }}</div>'
		}

		var router = new VueRouter({
			routes: [ // dynamic segments start with a colon
				{path: '/user/:id', component: _User}]
		});
	}

	static public function main() {
		var main = new Main();
	}
}

// Generated by Haxe 4.0.5
(function ($global) { "use strict";
var Main = function() {
	console.log("src/Main.hx:9:","Haxe Vue.js example");
	var _User = { template : "<div>User {{ $" + "route.params.id }}</div>"};
	var router = new VueRouter({ routes : [{ path : "/user/:id", component : _User}]});
};
Main.main = function() {
	var main = new Main();
};
Main.main();
})({});

//# sourceMappingURL=example.js.map
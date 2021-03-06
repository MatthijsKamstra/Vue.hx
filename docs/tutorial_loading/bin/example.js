// Generated by Haxe 4.0.5
(function ($global) { "use strict";
var Main = function() {
	console.log("src/Main.hx:9:","Haxe Vue.js example");
	var vm = new Vue({ el : "#app", data : function() {
		return { loading : false, message : "test", ip : "loading ip"};
	}, mounted : function() {
		var scope = this;
		scope.loading = true;
		Vue.http.get("http://ip.jsontest.com/").then(function(response) {
			scope.ip = response.body.ip;
			scope.loading = false;
		},function(error) {
			console.log("src/Main.hx:28:",error);
		});
	}});
};
Main.main = function() {
	var main = new Main();
};
Main.main();
})({});

//# sourceMappingURL=example.js.map
// Generated by Haxe 3.4.2
(function ($hx_exports) { "use strict";
var Main = $hx_exports["Main"] = function() {
	console.log("Haxe Vue.js example");
	Main.app3 = new Vue({ el : "#app-3", data : { seen : true}});
	Main.app4 = new Vue({ el : "#app-4", data : { todos : [{ text : "Learn JavaScript"},{ text : "Learn Vue"},{ text : "Build something awesome"}]}});
};
Main.main = function() {
	var main = new Main();
};
Main.main();
})(typeof exports != "undefined" ? exports : typeof window != "undefined" ? window : typeof self != "undefined" ? self : this);

//# sourceMappingURL=example.js.map
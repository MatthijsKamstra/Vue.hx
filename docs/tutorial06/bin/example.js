// Generated by Haxe 4.0.5
(function ($global) { "use strict";
var Main = function() {
	console.log("src/Main.hx:8:","Haxe Vue.js example");
	var demo = new Vue({ el : "#main", data : { show_tooltip : false, text_content : "Edit me."}, methods : { hideTooltip : function() {
		this.show_tooltip = false;
	}, toggleTooltip : function() {
		this.show_tooltip = this.show_tooltip;
	}}});
};
Main.main = function() {
	var main = new Main();
};
Main.main();
})({});

//# sourceMappingURL=example.js.map
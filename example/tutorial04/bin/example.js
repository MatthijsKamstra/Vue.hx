// Generated by Haxe 3.4.2
(function () { "use strict";
var Main = function() {
	console.log("Haxe Vue.js example");
	Vue.component("todo-item",{ props : ["todo"], template : "<li>{{ todo.text }}</li>"});
	var app7 = new Vue({ el : "#app-7", data : { groceryList : [{ text : "Vegetables"},{ text : "Cheese"},{ text : "Whatever else humans are supposed to eat"}]}});
};
Main.main = function() {
	var main = new Main();
};
Main.main();
})();

//# sourceMappingURL=example.js.map
// Generated by Haxe 3.4.2
(function () { "use strict";
var Main = function() {
	console.log("Haxe Vue.js example");
	var Home = { template : "<p>Welcome to the <b>home page</b>!</p>"};
	var People = { template : "<p>Look at all the people who work here!</p>"};
	var peopleid = { template : "<p>Person ID is {{$" + "route.params.personId}}</p>"};
	var router = new VueRouter({ mode : "hash", base : window.location.href, routes : [{ path : "/", component : Home},{ path : "/people", component : People},{ path : "/people/:personId", name : "people.show", component : peopleid}]});
	new Vue({ router : router}).$mount("#app");
};
Main.main = function() {
	var main = new Main();
};
Main.main();
})();

//# sourceMappingURL=example.js.map
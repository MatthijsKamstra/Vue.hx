// Generated by Haxe 3.4.4
(function () { "use strict";
var Main = function() {
	console.log("Haxe Vue.js example");
	var router = new VueRouter({ routes : [{ path : "/"},{ path : "/params/:foo/:bar"},{ path : "/optional-params/:foo?"},{ path : "/params-with-regex/:id(\\d+)"},{ path : "/asterisk/*"},{ path : "/optional-group/(foo/)?bar"}]});
	new Vue({ router : router, template : "\n\t\t\t\t<div id=\"app\">\n\t\t\t\t\t<h1>Route Matching</h1>\n\t\t\t\t\t<ul>\n\t\t\t\t\t\t<li><router-link to=\"/\">/</router-link></li>\n\t\t\t\t\t\t<li><router-link to=\"/params/foo/bar\">/params/foo/bar</router-link></li>\n\t\t\t\t\t\t<li><router-link to=\"/optional-params\">/optional-params</router-link></li>\n\t\t\t\t\t\t<li><router-link to=\"/optional-params/foo\">/optional-params/foo</router-link></li>\n\t\t\t\t\t\t<li><router-link to=\"/params-with-regex/123\">/params-with-regex/123</router-link></li>\n\t\t\t\t\t\t<li><router-link to=\"/params-with-regex/abc\">/params-with-regex/abc</router-link></li>\n\t\t\t\t\t\t<li><router-link to=\"/asterisk/foo\">/asterisk/foo</router-link></li>\n\t\t\t\t\t\t<li><router-link to=\"/asterisk/foo/bar\">/asterisk/foo/bar</router-link></li>\n\t\t\t\t\t\t<li><router-link to=\"/optional-group/bar\">/optional-group/bar</router-link></li>\n\t\t\t\t\t\t<li><router-link to=\"/optional-group/foo/bar\">/optional-group/foo/bar</router-link></li>\n\t\t\t\t\t\t</ul>\n\t\t\t\t\t<p>Route context</p>\n\t\t\t\t\t<pre>{{ JSON.stringify($" + "route, null, 2) }}</pre>\n\t\t\t\t</div>\n\t\t\t  "}).$mount("#app");
};
Main.main = function() {
	var main = new Main();
};
Main.main();
})();

//# sourceMappingURL=example.js.map
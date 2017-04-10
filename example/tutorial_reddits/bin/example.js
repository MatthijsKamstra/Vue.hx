// Generated by Haxe 3.4.2
(function () { "use strict";
var Main = function() {
	console.log("Haxe Vue.js example");
	var subreddit = Vue.component("subreddit",{ template : "#subreddit", props : ["name"], data : function() {
		return { posts : []};
	}, created : function() {
		var scope = this;
		Vue.http.get("https://www.reddit.com/r/" + scope.name + "/top.json?limit=5").then(function(resp) {
			scope.posts = resp.body.data.children;
		});
	}});
	var post = Vue.component("post",{ template : "#post", props : ["item"], methods : { getImageBackgroundCSS : function(img) {
		if(img != null && img != "self" && img != "nsfw") {
			return "background-image: url(" + img + ")";
		} else {
			return "background-image: url(placeholder.png)";
		}
	}}});
	Vue.filter("uppercase",function(value) {
		return value.toUpperCase();
	});
	Vue.filter("truncate",function(value1) {
		var length = 60;
		if(value1.length <= length) {
			return value1;
		} else {
			return value1.substring(0,length) + "...";
		}
	});
	new Vue({ el : "#main"});
};
Main.main = function() {
	new Main();
};
Main.main();
})();

//# sourceMappingURL=example.js.map
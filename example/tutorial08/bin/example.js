// Generated by Haxe 3.4.0
(function () { "use strict";
var HxOverrides = function() { };
HxOverrides.cca = function(s,index) {
	var x = s.charCodeAt(index);
	if(x != x) {
		return undefined;
	}
	return x;
};
HxOverrides.substr = function(s,pos,len) {
	if(len == null) {
		len = s.length;
	} else if(len < 0) {
		if(pos == 0) {
			len = s.length + len;
		} else {
			return "";
		}
	}
	return s.substr(pos,len);
};
var Main = function() {
	console.log("Haxe Vue.js example");
	var demo = new Vue({ el : "#main", data : { searchString : "", articles : [{ "title" : "What You Need To Know About CSS Variables", "url" : "http://tutorialzine.com/2016/03/what-you-need-to-know-about-css-variables/", "image" : "http://cdn.tutorialzine.com/wp-content/uploads/2016/03/css-variables-100x100.jpg"},{ "title" : "Freebie: 4 Great Looking Pricing Tables", "url" : "http://tutorialzine.com/2016/02/freebie-4-great-looking-pricing-tables/", "image" : "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/great-looking-pricing-tables-100x100.jpg"},{ "title" : "20 Interesting JavaScript and CSS Libraries for February 2016", "url" : "http://tutorialzine.com/2016/02/20-interesting-javascript-and-css-libraries-for-february-2016/", "image" : "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/interesting-resources-february-100x100.jpg"},{ "title" : "Quick Tip: The Easiest Way To Make Responsive Headers", "url" : "http://tutorialzine.com/2016/02/quick-tip-easiest-way-to-make-responsive-headers/", "image" : "http://cdn.tutorialzine.com/wp-content/uploads/2016/02/quick-tip-responsive-headers-100x100.png"},{ "title" : "Learn SQL In 20 Minutes", "url" : "http://tutorialzine.com/2016/01/learn-sql-in-20-minutes/", "image" : "http://cdn.tutorialzine.com/wp-content/uploads/2016/01/learn-sql-20-minutes-100x100.png"},{ "title" : "Creating Your First Desktop App With HTML, JS and Electron", "url" : "http://tutorialzine.com/2015/12/creating-your-first-desktop-app-with-html-js-and-electron/", "image" : "http://cdn.tutorialzine.com/wp-content/uploads/2015/12/creating-your-first-desktop-app-with-electron-100x100.png"}]}, computed : { filteredArticles : function() {
		var articles_array = this.articles;
		var searchString = this.searchString;
		console.log(articles_array.length);
		if(searchString == "") {
			return articles_array;
		}
		searchString = StringTools.trim(searchString == null ? "null" : "" + searchString).toLowerCase();
		var item = articles_array[0];
		var filteredArray = [];
		articles_array.filter(function(item1) {
			if(item1.title.toLowerCase().indexOf(searchString) != -1) {
				filteredArray.push(item1);
				return true;
			} else {
				return false;
			}
		});
		return filteredArray;
	}}});
};
Main.main = function() {
	new Main();
};
var StringTools = function() { };
StringTools.isSpace = function(s,pos) {
	var c = HxOverrides.cca(s,pos);
	if(!(c > 8 && c < 14)) {
		return c == 32;
	} else {
		return true;
	}
};
StringTools.ltrim = function(s) {
	var l = s.length;
	var r = 0;
	while(r < l && StringTools.isSpace(s,r)) ++r;
	if(r > 0) {
		return HxOverrides.substr(s,r,l - r);
	} else {
		return s;
	}
};
StringTools.rtrim = function(s) {
	var l = s.length;
	var r = 0;
	while(r < l && StringTools.isSpace(s,l - r - 1)) ++r;
	if(r > 0) {
		return HxOverrides.substr(s,0,l - r);
	} else {
		return s;
	}
};
StringTools.trim = function(s) {
	return StringTools.ltrim(StringTools.rtrim(s));
};
Main.main();
})();

//# sourceMappingURL=example.js.map
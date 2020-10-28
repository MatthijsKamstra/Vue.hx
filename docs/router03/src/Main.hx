package;

import vue.Vue;
import vue.VueRouter;
import js.Browser;

class Main {
	function new() {
		trace("Haxe Vue.js example");

		// The matching uses path-to-regexp, which is the matching engine used
		// by express as well, so the same matching rules apply.
		// For detailed rules, see https://github.com/pillarjs/path-to-regexp
		var router = new VueRouter({
			// mode: 'history',
			// base: Browser.window.location.pathname,
			routes: [
				{path: '/'},
				// params are denoted with a colon ":"
				{path: '/params/:foo/:bar'},
				// a param can be made optional by adding "?"
				{path: '/optional-params/:foo?'},
				// a param can be followed by a regex pattern in parens
				// this route will only be matched if :id is all numbers
				{path: '/params-with-regex/:id(\\d+)'},
				// asterisk can match anything
				{path: '/asterisk/*'},
				// make part of the path optional by wrapping with parens and add "?"
				{path: '/optional-group/(foo/)?bar'}
			]
		});

		new Vue({
			router: router,
			template: '
				<div id="app">
					<h1>Route Matching</h1>
					<ul>
						<li><router-link to="/">/</router-link></li>
						<li><router-link to="/params/foo/bar">/params/foo/bar</router-link></li>
						<li><router-link to="/optional-params">/optional-params</router-link></li>
						<li><router-link to="/optional-params/foo">/optional-params/foo</router-link></li>
						<li><router-link to="/params-with-regex/123">/params-with-regex/123</router-link></li>
						<li><router-link to="/params-with-regex/abc">/params-with-regex/abc</router-link></li>
						<li><router-link to="/asterisk/foo">/asterisk/foo</router-link></li>
						<li><router-link to="/asterisk/foo/bar">/asterisk/foo/bar</router-link></li>
						<li><router-link to="/optional-group/bar">/optional-group/bar</router-link></li>
						<li><router-link to="/optional-group/foo/bar">/optional-group/foo/bar</router-link></li>
						</ul>
					<p>Route context</p>
					<pre>{{ JSON.stringify($$route, null, 2) }}</pre>
				</div>
			  '
		}).$mount('#app');
	}

	static public function main() {
		var main = new Main();
	}
}
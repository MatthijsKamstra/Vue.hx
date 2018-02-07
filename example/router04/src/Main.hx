package ;

import vue.Vue;
import vue.VueRouter;

import js.Browser;

class Main
{
	function new()
	{
		trace("Haxe Vue.js example");

		var _User = {
			template: '
				<div class="user">
				<h2>User {{ $$route.params.id }}</h2>
				<router-view></router-view>
				</div>
			'
		};

		var _UserHome = { template: '<div>Home</div>' };
		var _UserProfile = { template: '<div>Profile</div>' };
		var _UserPosts = { template: '<div>Posts</div>' };

		var router = new VueRouter({
			routes: [
				{ path: '/user/:id', component: _User, children: [
					// UserHome will be rendered inside User's <router-view>
					// when /user/:id is matched
					{ path: '', component: _UserHome },

					// UserProfile will be rendered inside User's <router-view>
					// when /user/:id/profile is matched
					{ path: 'profile', component: _UserProfile },

					// UserPosts will be rendered inside User's <router-view>
					// when /user/:id/posts is matched
					{ path: 'posts', component: _UserPosts }
					]
				}
			]
		});

		var _app = new Vue({ router:router }).$mount('#app');

	}

	static public function main(){
		var main = new Main();
	}
}
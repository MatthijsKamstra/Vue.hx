package ;

import vue.Vue;
import vue.VueResource;

import js.Lib;

class Main
{

	function new()
	{
		trace("Haxe Vue.js example");

		/*-----------------
			Components
		-----------------*/

		// Parent | Subreddit component containing a list of 'post' components.
		var subreddit = Vue.component('subreddit',{
			template: '#subreddit',
			props: ['name'],

			data: function () {
				return { posts: [] }
			},

			created: function(){
				var scope = Lib.nativeThis;
				VueResource.get("https://www.reddit.com/r/"+ scope.name +"/top.json?limit=5")
				.then(function(resp:Response){
					scope.posts = resp.body.data.children;
				});
			}
		});


		// Child | Componenet represiting a single post.
		var post = Vue.component('post', {
			template: "#post",
			props: ['item'],
			methods: {
				getImageBackgroundCSS: function(img) {
					if(img != null && img != 'self' && img != 'nsfw') {
						return 'background-image: url(' + img + ')';
					}
					else {
						return 'background-image: url(placeholder.png)';
					}
				}
			}
		});

		/*-----------------
		   Custom filters
		-----------------*/

		// Filter that transform text to uppercase.
		Vue.filter('uppercase', function(value) {
			return value.toUpperCase();
		});


		// Filter for cutting off strings that are too long.
		Vue.filter('truncate', function(value) {
			var length = 60;
			if(value.length <= length) {
				return value;
			} else {
				return value.substring(0, length) + '...';
			}
		});

		/*-----------------
		   Initialize app
		-----------------*/

		new Vue({
			el: '#main'
		});

	}


	static public function main(){
		new Main();
	}
}
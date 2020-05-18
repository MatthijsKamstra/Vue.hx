package;

import vue.Vue;
import vue.VueResource;
import js.Lib;

class Main {
	function new() {
		trace("Haxe Vue.js example");

		var vm = new Vue({
			el: '#app',
			data: function() {
				return {
					loading: false,
					message: 'test',
					ip: 'loading ip'
				};
			},
			mounted: function() {
				var scope = Lib.nativeThis;
				scope.loading = true;
				// GET request
				VueResource.get('http://ip.jsontest.com/').then(function(response:Response) {
					scope.ip = response.body.ip;
					scope.loading = false;
				}, function(error) {
					trace(error);
				});
			}
		});
	}

	static public function main() {
		var main = new Main();
	}
}

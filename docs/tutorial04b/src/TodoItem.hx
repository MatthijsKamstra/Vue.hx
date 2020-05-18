package;

@template("<li>{{ todo.text }}</li>") // The component class will use the first @template for the template
class TodoItem extends vue.VueComponent {
	inline public function new() {
		super('todo-item', {props: ['todo']});
	}
}

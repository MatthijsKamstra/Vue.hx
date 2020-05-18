# Vue.hx

_Vue + Haxe a match made in heaven!_

Haxe externs for [Vue.JS](https://vuejs.org/ "Vue.js Homepage") 2.0. intended to mirror the API located at [Vue.js API](https://vuejs.org/api/)

## Installation

```cmd
C:\> haxelib install vue
```

## Haxelib

How to get this working?

You might want to update and/or correct the externs: install this repo locally

```cmd
haxelib dev vue path/to/folder/src
```

For the cutting-edge/dev-version:

```cmd
haxelib git vue https://github.com/MatthijsKamstra/Vue.hx.git
```

don't forget to add it to your build file

```cmd
-lib vue
```

## Features

- Externs for the core Vue 2.0 API contained in the `Vue` class
- Typedefs for `VueConfig` , `VueComponentOptions`, `VueOptions`, and `RenderFunction`
- Externs for [`VueRouter`](src/vue/VueRouter.hx) and [`VueResource`](src/vue/VueResource.hx)
- [Examples](docs) to get you started
- An optional Component class (`VueComponent`) which, when extended, allows the use of an _@template_ metatag to add code for templates right in your haxe class.

```haxe
    @template("<p>My Template</p>") //The component class will use the first @template for the template
    class MyComponent extends vue.VueComponent{
        public function new()
        {
            super('my-component', {});
        }
    }
```

Other that that its Haxe/vue business as usual

## Examples

Check out the [example](docs) folder for more tips and tricks.

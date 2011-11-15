jsonSelect
============

Created by Andriy Bazyuta.

Way to find a particular key's value in a JSON


Usage
-----

## HTML
    data =
	  a: "One"
	  b:
	    d: "Two"
	    a: [
	      a: "Tree"
	    ,
	      c: "Four"
	     ]

## Call

    $.jsonSelect(data, "a");

## Return

    ["One", "Tree", [Object { a="Tree"}, Object { c="Four"}]]


## Dependencies

[CoffeeScript](http://jashkenas.github.com/coffee-script/) for compilation to .js
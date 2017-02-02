# Custom Programming Language

This repository contains my experimentation of building a Bison/Flex based compiler.

### Setup

+ To build the analyzer file you'll need to install:
	
⋅⋅* bison

⋅⋅* flex

⋅⋅* g++

* Simply call ./build.sh and run the a.out file.

### Implemented Features

	* Syntax analysis

	* Declaration management

	* Tokens: function and variable declaration, post-fix operations, basic operations, conditional operations, "for" loop

### Sample code

```javascript

for(i=1;i<3;i++){
	a=3;
	a++;
	var x;
	x=3;
}

function naugthy(a,b){
	a++;
}

```

### Upcoming Features

	* Assembly code generation


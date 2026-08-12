# 1. Getting Started

## 1.3 Hello, Cargo!
- rust compilation requires gcc ¯\_(ツ)_/¯
- `cargo build` = cargo builds an application
- `cargo run` = cargo builds & runs application
	- cargo will only recompile if main.rs is changed.
- `cargo check` = checks if cargo can compile

# 2. Programming a Guessing Game
- variables are not mutable by default
	`let apples = 5; // immutable`
	`let mut apples = 5; // mutable`
- `use` module is like `use namespace` sa C++ but less clutter & pollution
- Datatype: String

`
io::stdin()
	.read_line(&mut guess)
	.expect("Failed to read line");  
`

- io::stdin() = loads modules std::io::Stdin
- .read_line() = method that grab input from user
	- &mut =
		- & = reference; pointer, gives adress of a variable so you dont copy the mem
		- mut = just tells the reference/pointer that the variable is mutatable
	- guess = where to store variable
- .expect("Failed to read line"); = Result; a enum(eration)
- Datatype: enum/enumeration = type that can be in various states/variants; compare modalism


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
- .expect("Failed to read line"); = Result; a enum(eration) with varients:
	- Ok: Sucessful, hands value to variable
	- Err: Failed, prints line inside
- Datatype: enum/enumeration = type that can be in various states/variants; compare modalism
- probably use .expect() to handle Errs so the program dont crash, but youll get this warning:
`
$ cargo build
   Compiling guessing_game v0.1.0 (file:///projects/guessing_game)
warning: unused `Result` that must be used
  --> src/main.rs:10:5
   |
10 |     io::stdin().read_line(&mut guess);
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   |
   = note: this `Result` may be an `Err` variant, which should be handled
   = note: `#[warn(unused_must_use)]` on by default
help: use `let _ = ...` to ignore the resulting value
   |
10 |     let _ = io::stdin().read_line(&mut guess);
   |     +++++++

warning: `guessing_game` (bin "guessing_game") generated 1 warning
    Finished `dev` profile [unoptimized + debuginfo] target(s) in 0.59s
`

`
println!("You guess: {guess}");
`


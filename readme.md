# alex sandbox

Sandbox for alex - a lexical analysis generator. Batteries included:

* a dockerized development environment
* build/run scripts
* examples:
  * [Lexer1](./Lexer1)
  * [Lexer2](./Lexer2)

## to use

* start development environment or work with your local haskell/cabal installation
* `./build.sh`:
  * generates lexers using alex
  * builds and lints the haskell code
* `./run.sh` - executes the compiled code
* output (depending on chosen example, but showing example 1 in this case): `["word: Hello","punctuation: ,","word: World","punctuation: !"]`

Now that you have a basic development loop established, you can start building more sophisticated lexers with alex and execute them with your input.

## development environment

| command | description |
| --- | --- |
| `./start-development-environment.sh` | starts a fully dockerized development environment |
| `./build.sh` | builds and lints code - preferrably while development environment docker container is running, otherwise local installation of cabal and hlint is required) |
| `./run.sh` | runs code - just like the build script, the preferred way to use it is while the development environment is running |
| `exit` | terminates development environment |

## resources

* [alex](https://github.com/haskell/alex)

* [alex user guide](https://haskell-alex.readthedocs.io/en/latest/index.html)

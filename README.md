# gcalc

[![Package Version](https://img.shields.io/hexpm/v/gcalc)](https://hex.pm/packages/gcalc)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/gcalc/)

A math library for Gleam. Written in pure Gleam.

```sh
gleam add gcalc
```
```gleam
import gleam/io
import gcalc/alg

pub fn main() {
  let x = 2.0
  let y = 4.0
  let z = alg.pow(x, y)

  io.debug(z)
  // 16.0

  alg.sqrt(z)
  |> io.debug
  // 4.0

  alg.factorial(y)
  |> io.debug
  // 24.0
}
```

Further documentation can be found at <https://hexdocs.pm/gcalc>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```

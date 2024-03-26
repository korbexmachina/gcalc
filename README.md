# gcalc

[![Package Version](https://img.shields.io/hexpm/v/gcalc)](https://hex.pm/packages/gcalc)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/gcalc/)

A pure gleam library for mathematical calculations.
```sh
gleam add gcalc
```
```gleam
import gleam/io
import gcalc

pub fn main() {
  let x = 2.0
  let y = 4.0
  let z = alg.pow(x, y)

  io.debug(z)
  // Ok(16.0)

  gcalc.sqrt(z)
  |> io.debug
  // Ok(4.000000000000051)

  alg.factorial(y)
  |> io.debug
  // Ok(24.0)
}
```

Further documentation can be found at <https://hexdocs.pm/gcalc>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```

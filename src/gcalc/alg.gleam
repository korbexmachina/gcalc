//// A set of algebraic operations for the for Gleam programs

import gleam/float

/// Return the exponentiation of the two arguments
pub fn pow(base: Int, power: Int, accumulator: Int) -> Int {
  case power {
    0 -> accumulator
    _ -> pow(base, power - 1, base * accumulator)
  }
}

/// Return the factorial of the argument
pub fn factorial(n: Int) -> Int {
  case n {
    0 -> 1
    _ -> n * factorial(n - 1)
  }
}

/// Return the square root of the argument
pub fn sqrt(n: Float) -> Float {
  case n {
    0.0 -> 0.0
    _ -> {
      let x0 = n /. 2.0
      let x1 = { x0 +. n /. x0 } /. 2.0
      sqrt_iter(x0, x1, n)
      |> float.floor()
    }
  }
}

/// Helper function for the square root function
fn sqrt_iter(x0: Float, x1: Float, n: Float) -> Float {
  case abs(x1 -. x0) <. 0.0001 {
    True -> x1
    False -> {
      let x0 = x1
      let x1 = { x0 +. n /. x0 } /. 2.0
      sqrt_iter(x0, x1, n)
    }
  }
}

/// Return the absolute value of the argument
pub fn abs(n: Float) -> Float {
  case n <. 0.0 {
    True -> 0.0 -. n
    False -> n
  }
}

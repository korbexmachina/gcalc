//// A set of algebraic operations for the for Gleam programs

import gleam/float

/// Returns the exponentiation of the two arguments
pub fn pow(base: Float, power: Float) -> Float {
  pow_iter(base, power, 1.0)
}

/// Helper function for the pow function
fn pow_iter(base: Float, power: Float, accumulator: Float) -> Float {
  case power {
    0.0 -> accumulator
    _ -> pow_iter(base, power -. 1.0, base *. accumulator)
  }
}

/// Returns the factorial of the argument
pub fn factorial(n: Float) -> Float {
  factorial_iter(n, 1.0)
}

/// Helper function for the factorial function
fn factorial_iter(n: Float, accumulator: Float) -> Float {
  case n {
    0.0 -> accumulator
    _ -> factorial_iter(n -. 1.0, n *. accumulator)
  }
}

/// Returns the square root of the argument
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

/// Returns the absolute value of the argument
pub fn abs(n: Float) -> Float {
  case n <. 0.0 {
    True -> 0.0 -. n
    False -> n
  }
}

//// A set of algebraic operations for the for Gleam programs

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

//// A set of algebraic operations for Gleam programs

/// MathError represents an error that can occur when performing
/// a mathematical operation
pub type MathError {
  DivisionByZero
  ValueOutOfRange
  UnsupportedOperation
}

// Exponentiation Functions ---------------------------------------------------

/// Returns the exponentiation of the two arguments
/// (i.e. the first argument raised to the power of the second argument)
///
/// Example:
/// ```
/// let base = 2.0
/// let power = 3.0
/// pow(base, power) // 8.0
/// ```
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

// Factorial Functions --------------------------------------------------------

/// Returns a result containing the factorial of the argument
/// or an error if the argument is negative
///
/// Note: This function only supports non-negative values
pub fn factorial(n: Float) -> Result(Float, MathError) {
  case n <. 0.0 {
    True -> Error(UnsupportedOperation)
    False -> Ok(factorial_iter(n, 1.0))
  }
}

/// Helper function for the factorial function
fn factorial_iter(n: Float, accumulator: Float) -> Float {
  case n {
    0.0 -> accumulator
    _ -> factorial_iter(n -. 1.0, n *. accumulator)
  }
}

// Absolute Value Function ----------------------------------------------------

/// Returns the absolute value of the argument
pub fn abs(n: Float) -> Float {
  case n <. 0.0 {
    True -> 0.0 -. n
    False -> n
  }
}

// Square Root Functions ------------------------------------------------------

/// Returns a result containing the square root of the argument
/// or an error if the argument is negative
///
/// Note: This function only supports non-negative values
///
/// Example:
/// ```gleam
/// sqrt(4.0)             // Ok(2.000000000000002)
/// |> result.unwrap(0.0) // 2.000000000000002
/// |> float.floor        // 2.0
/// ```
pub fn sqrt(n: Float) -> Result(Float, MathError) {
  case n <. 0.0 {
    True -> Error(ValueOutOfRange)
    False -> Ok(sqrt_iter(0.0, 1.0, n))
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

// Common Exponential Functions -----------------------------------------------

/// Returns a result containing 2^n where n is the argument
pub fn pow2(n: Float) -> Result(Float, MathError) {
  case n <. 0.0 {
    True -> Error(ValueOutOfRange)
    False -> Ok(pow2_iter(n, 1.0))
  }
}

/// Helper function for the pow2 function
fn pow2_iter(n: Float, accumulator: Float) -> Float {
  case n {
    0.0 -> accumulator
    _ -> pow2_iter(n -. 1.0, 2.0 *. accumulator)
  }
}

/// Returns a result containing 10^n where n is the argument
pub fn pow10(n: Float) -> Result(Float, MathError) {
  case n <. 0.0 {
    True -> Error(ValueOutOfRange)
    False -> Ok(pow10_iter(n, 1.0))
  }
}

/// Helper function for the pow10 function
fn pow10_iter(n: Float, accumulator: Float) -> Float {
  case n {
    0.0 -> accumulator
    _ -> pow10_iter(n -. 1.0, 10.0 *. accumulator)
  }
}

// Cube Root Functions --------------------------------------------------------

/// Returns a result containing the cube root of the argument
///
/// Note: This function only supports non-negative values
pub fn cbrt(n: Float) -> Result(Float, MathError) {
  case n <. 0.0 {
    True -> Error(ValueOutOfRange)
    False -> Ok(cbrt_iter(0.0, 1.0, n))
  }
}

/// Helper function for the cube root function
fn cbrt_iter(x0: Float, x1: Float, n: Float) -> Float {
  case abs(x1 -. x0) <. 0.0001 {
    True -> x1
    False -> {
      let x0 = x1
      let x1 = { x0 +. n /. { x0 *. x0 } } /. 2.0
      cbrt_iter(x0, x1, n)
    }
  }
}

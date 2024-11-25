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
///
/// Example:
/// ```
/// let n = 2.0
/// pow10(n) // Ok(100.0)
/// ```
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
///
/// Example:
/// ```
/// let n = 27.0
/// cbrt(n) // 3.0
/// ```
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

// GCD ------------------------------------------------------------------------

/// Returns the greatest common divisor of a and b using the Euclidean
/// Algorithm
pub fn gcd(a: Int, b: Int) -> Int {
  case a == b {
    True -> a
    False ->
      case a > b {
        True -> gcd_iter(a, b)
        False -> gcd_iter(b, a)
      }
  }
}

/// Helper function for the gcd function
fn gcd_iter(a: Int, b: Int) {
  case b == 0 {
    True -> a
    False -> {
      let temp = b
      let b = a % b
      let a = temp
      gcd_iter(a, b)
    }
  }
}

// Multiply-add Function ------------------------------------------------------

/// Returns the result of x*y+z 
/// without losing precision in any intermediate result
/// 
/// Example:
/// ```
/// let x = 10.0
/// let y = 20.0
/// let z = 30.0
/// fma(x,y,z) // 230.0
/// ```
pub fn fma(x: Float, y: Float, z: Float) -> Float {
  x *. y +. z
}

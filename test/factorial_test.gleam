import gcalc
import gleeunit/should

/// Test that 1! = 1
pub fn factorial_1_test() {
  gcalc.factorial(1.0)
  |> should.equal(Ok(1.0))
}

/// Test that 2! = 2
pub fn factorial_2_test() {
  gcalc.factorial(2.0)
  |> should.equal(Ok(2.0))
}

/// Test that 3! = 6
pub fn factorial_3_test() {
  gcalc.factorial(3.0)
  |> should.equal(Ok(6.0))
}

/// Test that 4! = 24
pub fn factorial_4_test() {
  gcalc.factorial(4.0)
  |> should.equal(Ok(24.0))
}

/// Test that 5! = 120
pub fn factorial_5_test() {
  gcalc.factorial(5.0)
  |> should.equal(Ok(120.0))
}

/// Test that 0! = 1
pub fn factorial_0_test() {
  gcalc.factorial(0.0)
  |> should.equal(Ok(1.0))
}

/// Test that -5! = UnsupportedOperation
pub fn factorial_neg5_test() {
  gcalc.factorial(-5.0)
  |> should.equal(Error(gcalc.UnsupportedOperation))
}

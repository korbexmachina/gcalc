import gleeunit
import gleeunit/should
import gleam/result
import gleam/float
import gcalc

pub fn main() {
  gleeunit.main()
}

/// Test that 1 ^ 1 = 1
pub fn pow_1_test() {
  gcalc.pow(1.0, 1.0)
  |> should.equal(1.0)
}

/// Test that 2 ^ 3 = 8
pub fn pow_2_test() {
  gcalc.pow(2.0, 3.0)
  |> should.equal(8.0)
}

/// Test that 3 ^ 2 = 9
pub fn pow_3_test() {
  gcalc.pow(3.0, 2.0)
  |> should.equal(9.0)
}

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

/// Test that sqrt(4) = 2
pub fn sqrt_4_test() {
  gcalc.sqrt(4.0)
  |> result.unwrap(0.0)
  |> float.loosely_equals(2.0, 0.0001)
  |> should.equal(True)
}

/// Test that sqrt(9) = 3
pub fn sqrt_9_test() {
  gcalc.sqrt(9.0)
  |> result.unwrap(0.0)
  |> float.loosely_equals(3.0, 0.0001)
  |> should.equal(True)
}

/// Test that sqrt(16) = 4
pub fn sqrt_16_test() {
  gcalc.sqrt(16.0)
  |> result.unwrap(0.0)
  |> float.loosely_equals(4.0, 0.0001)
  |> should.equal(True)
}

/// Test that sqrt(-1) = VaulueOutOfRange
pub fn sqrt_neg1_test() {
  gcalc.sqrt(-1.0)
  |> should.equal(Error(gcalc.ValueOutOfRange))
}

/// Test that |3| = 3
pub fn abs_3_test() {
  gcalc.abs(3.0)
  |> should.equal(3.0)
}

/// Test that |-3| = 3
pub fn abs_neg3_test() {
  gcalc.abs(-3.0)
  |> should.equal(3.0)
}

/// Test that |0| = 0
pub fn abs_0_test() {
  gcalc.abs(0.0)
  |> should.equal(0.0)
}

/// Test that 2^3 = 8
pub fn pow2_3_test() {
  gcalc.pow2(3.0)
  |> should.equal(Ok(8.0))
}

/// Test that 10^3 = 1000
pub fn pow10_3_test() {
  gcalc.pow10(3.0)
  |> should.equal(Ok(1000.0))
}

/// Test that 2^0 = 1
pub fn pow2_0_test() {
  gcalc.pow2(0.0)
  |> should.equal(Ok(1.0))
}

/// Test that 10^0 = 1
pub fn pow10_0_test() {
  gcalc.pow10(0.0)
  |> should.equal(Ok(1.0))
}

/// Test that cbrt(8) = 2
pub fn cbrt_8_test() {
  gcalc.cbrt(8.0)
  |> result.unwrap(0.0)
  |> float.loosely_equals(2.0, 0.0001)
  |> should.equal(True)
}

/// Test that cbrt(27) = 3
pub fn cbrt_27_test() {
  gcalc.cbrt(27.0)
  |> result.unwrap(0.0)
  |> float.loosely_equals(3.0, 0.0001)
  |> should.equal(True)
}

/// Test that cbrt(64) = 4
pub fn cbrt_64_test() {
  gcalc.cbrt(64.0)
  |> result.unwrap(0.0)
  |> float.loosely_equals(4.0, 0.0001)
  |> should.equal(True)
}

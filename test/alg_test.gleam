import gleeunit/should
import gcalc/alg

/// Test that 1 ^ 1 = 1
pub fn pow_1_test() {
  alg.pow(1.0, 1.0)
  |> should.equal(1.0)
}

/// Test that 2 ^ 3 = 8
pub fn pow_2_test() {
  alg.pow(2.0, 3.0)
  |> should.equal(8.0)
}

/// Test that 3 ^ 2 = 9
pub fn pow_3_test() {
  alg.pow(3.0, 2.0)
  |> should.equal(9.0)
}

/// Test that 1! = 1
pub fn factorial_1_test() {
  alg.factorial(1.0)
  |> should.equal(Ok(1.0))
}

/// Test that 2! = 2
pub fn factorial_2_test() {
  alg.factorial(2.0)
  |> should.equal(Ok(2.0))
}

/// Test that 3! = 6
pub fn factorial_3_test() {
  alg.factorial(3.0)
  |> should.equal(Ok(6.0))
}

/// Test that 4! = 24
pub fn factorial_4_test() {
  alg.factorial(4.0)
  |> should.equal(Ok(24.0))
}

/// Test that 5! = 120
pub fn factorial_5_test() {
  alg.factorial(5.0)
  |> should.equal(Ok(120.0))
}

/// Test that 0! = 1
pub fn factorial_0_test() {
  alg.factorial(0.0)
  |> should.equal(Ok(1.0))
}

/// Test that -5! = UnsupportedOperation
pub fn factorial_neg5_test() {
  alg.factorial(-5.0)
  |> should.equal(Error(alg.UnsupportedOperation))
}

/// Test that sqrt(4) = 2
pub fn sqrt_4_test() {
  alg.sqrt(4.0)
  |> should.equal(Ok(2.0))
}

/// Test that sqrt(9) = 3
pub fn sqrt_9_test() {
  alg.sqrt(9.0)
  |> should.equal(Ok(3.0))
}

/// Test that sqrt(16) = 4
pub fn sqrt_16_test() {
  alg.sqrt(16.0)
  |> should.equal(Ok(4.0))
}

/// Test that sqrt(-1) = VaulueOutOfRange
pub fn sqrt_neg1_test() {
  alg.sqrt(-1.0)
  |> should.equal(Error(alg.ValueOutOfRange))
}

/// Test that |3| = 3
pub fn abs_3_test() {
  alg.abs(3.0)
  |> should.equal(3.0)
}

/// Test that |-3| = 3
pub fn abs_neg3_test() {
  alg.abs(-3.0)
  |> should.equal(3.0)
}

/// Test that |0| = 0
pub fn abs_0_test() {
  alg.abs(0.0)
  |> should.equal(0.0)
}

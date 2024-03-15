import gleeunit
import gleeunit/should
import gcalc/alg

pub fn main() {
  gleeunit.main()
}

/// Test that 1 ^ 1 = 1
pub fn pow_1_test() {
  alg.pow(1, 1, 1)
  |> should.equal(1)
}

/// Test that 2 ^ 3 = 8
pub fn pow_2_test() {
  alg.pow(2, 3, 1)
  |> should.equal(8)
}

/// Test that 3 ^ 2 = 9
pub fn pow_3_test() {
  alg.pow(3, 2, 1)
  |> should.equal(9)
}

/// Test that 1! = 1
pub fn factorial_1_test() {
  alg.factorial(1)
  |> should.equal(1)
}

/// Test that 2! = 2
pub fn factorial_2_test() {
  alg.factorial(2)
  |> should.equal(2)
}

/// Test that 3! = 6
pub fn factorial_3_test() {
  alg.factorial(3)
  |> should.equal(6)
}

/// Test that 4! = 24
pub fn factorial_4_test() {
  alg.factorial(4)
  |> should.equal(24)
}

/// Test that 5! = 120
pub fn factorial_5_test() {
  alg.factorial(5)
  |> should.equal(120)
}

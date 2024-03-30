import gleeunit/should
import gcalc

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

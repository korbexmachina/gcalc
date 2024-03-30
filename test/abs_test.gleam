import gcalc
import gleeunit/should

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

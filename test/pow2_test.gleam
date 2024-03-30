import gcalc
import gleeunit/should

/// Test that 2^3 = 8
pub fn pow2_3_test() {
  gcalc.pow2(3.0)
  |> should.equal(Ok(8.0))
}

/// Test that 2^0 = 1
pub fn pow2_0_test() {
  gcalc.pow2(0.0)
  |> should.equal(Ok(1.0))
}

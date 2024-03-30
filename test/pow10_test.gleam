import gcalc
import gleeunit/should

/// Test that 10^3 = 1000
pub fn pow10_3_test() {
  gcalc.pow10(3.0)
  |> should.equal(Ok(1000.0))
}

/// Test that 10^0 = 1
pub fn pow10_0_test() {
  gcalc.pow10(0.0)
  |> should.equal(Ok(1.0))
}

import gcalc
import gleeunit/should

/// Test that 10*20+30 = 230
pub fn fma_10_20_30_test() {
  gcalc.fma(10.0, 20.0, 30.0)
  |> should.equal(230.0)
}

/// Test that -10*20+30 = -170
pub fn fma_neg10_20_30_test() {
  gcalc.fma(-10.0, 20.0, 30.0)
  |> should.equal(-170.0)
}

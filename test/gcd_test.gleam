import gcalc
import gleeunit/should

/// Test that GCD(9, 15) = 3
pub fn gcd_9_15_test() {
  gcalc.gcd(9, 15) |> should.equal(3)
}

/// Test that GCD(112, 4) = 4
pub fn gcd_112_4_test() {
  gcalc.gcd(112, 4) |> should.equal(4)
}

/// Test that GCD(101, 5) = 1
pub fn gcd_101_5_test() {
  gcalc.gcd(101, 5) |> should.equal(1)
}

import gcalc
import gleam/float
import gleam/result
import gleeunit/should

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

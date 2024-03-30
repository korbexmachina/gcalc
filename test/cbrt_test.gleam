import gcalc
import gleeunit/should
import gleam/result
import gleam/float

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

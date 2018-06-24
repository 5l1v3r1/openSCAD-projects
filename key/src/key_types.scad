module spacebar() {
  $inverted_dish = true;
  $dish_type = "sideways cylindrical";
  6_25u() stabilized(mm=50) children();
}

module lshift() {
  2_25u() stabilized() children();
}

module rshift() {
  2_75u() stabilized() children();
}

module backspace() {
  2u() stabilized() children();
}

module enter() {
  2_25u() stabilized() children();
}

module numpad_enter() {
  2uh() stabilized(vertical=true) children();
}

module numpad_plus() {
  numpad_enter() children();
}

module numpad_0() {
  backspace() children();
}

module stepped_caps_lock() {
  u(1.75) {
    $connectors = [
      [-5, 0]
    ];
    children();
  }
}

module iso_enter() {
  $key_length = 1.5;
  $key_height = 2;

  $top_tilt = 0;
  $key_shape_type = "iso_enter";
  $linear_extrude_shape = true;
  $linear_extrude_height_adjustment = 19.05 * 0.5;
  // (unit_length(1.5) - unit_length(1.25)) / 2
  $dish_overdraw_width = 2.38125;


  stabilized(vertical=true) {
    children();
  }
}

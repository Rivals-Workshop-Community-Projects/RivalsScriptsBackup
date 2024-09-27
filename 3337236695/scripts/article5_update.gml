//Rotates the wrecking ball sprite to mimic it swinging.
ball_swing_b = dsin(get_gameplay_time() * 1.3) * -24;
shadow_swing_b = dsin(get_gameplay_time() * 1.3) * -40;

//Moves the two moving platforms back and forth.
moving_b = dsin(get_gameplay_time() * 0.5) * -44;
moving_a = dsin(get_gameplay_time() * 0.5) * 58;
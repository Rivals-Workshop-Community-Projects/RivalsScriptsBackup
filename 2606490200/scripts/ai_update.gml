///

if !attacking {
    set_attack(AT_NSPECIAL)
    window = 1
    window_timer = 1
}

if state_timer %6 == 0 {
down_pressed = true 
} else {
   down_pressed = false
}
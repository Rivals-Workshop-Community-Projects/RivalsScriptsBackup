//Animates the screens.
if (screen_timer < 60) {
    screen_timer += 1
}

if (screen_timer = 6 || screen_timer = 12 || screen_timer = 18 || screen_timer = 24 || screen_timer = 30 || screen_timer = 36 || screen_timer = 42 || screen_timer = 48 || screen_timer = 54) {
    screen_speed += 1
}

if (screen_timer = 60) {
    screen_speed = 0
    screen_timer = 1
}
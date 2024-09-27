//Moves the platform left and right.
if (platform_state = 1) {
    x = 768
    if (platform_timer = 600) {
        platform_state = 2
    }
}

if (platform_state = 2) {
    hsp = -1
    if (x = 240) {
        platform_state = 3
        platform_timer = 1
        x = 240
        hsp = 0
    }
}

if (platform_state = 3) {
    x = 240
    if (platform_timer = 600) {
        platform_state = 4
    }
}

if (platform_state = 4) {
    hsp = 1
    if (x = 768) {
        platform_state = 1
        platform_timer = 1
        x = 768
        hsp = 0
    }
}

if (platform_timer < 600) {
    platform_timer += 1
}
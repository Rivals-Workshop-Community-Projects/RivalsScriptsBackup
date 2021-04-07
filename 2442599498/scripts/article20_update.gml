//
timer++;

x = target_id.x + target_id.hsp
y = target_id.y + target_id.vsp - (target_id.char_height/2)

if timer == 1 {
	target_id.heartID = id;
}

if !fade {
    shadow_alpha = clamp(timer/20, 0, 0.3)
    heart_alpha = clamp(timer/20, 0, 1)
} else {
    shadow_alpha = clamp(1 - (fade_timer/20), 0, 0.3)
    heart_alpha = clamp(1 - (fade_timer/20), 0, 1)
    fade_timer++;
    
    if fade_timer > 20 {
        target_id.heartID = undefined;
        instance_destroy();
        exit;
    }
}

if got_hit {
    if hit_timer mod 20 < 10 {
        heart_alpha = 0.5;
    } else {
        heart_alpha = 0.7;
    }
    hit_timer++;
} else if hit_timer != 0 {
    hit_timer = 0;
    heart_alpha = 1;
}
// aaa

if abs(hud_offset) < 1{
	hud_offset = 0;
}

switch (state) {
    case PS_SPAWN:
        if state_timer < 63 && !probably_in_abyss {
            var offset = ease_cubeIn(-40, 0, state_timer, 70);
            if state_timer < 53 {
                draw_y = offset;
                hud_offset = 999;
            } else hud_offset = 0;
            sprite_index = sprite_get("intro");
            if state_timer == 2 && !hitpause {
                with oPlayer sound_stop(sound_get("ariacourage_cast"));
                sound_play(sound_get("ariacourage_cast"), 0, noone, 1, 1);
            }
            if state_timer == 42 && !hitpause {
                with oPlayer sound_stop(sound_get("burn_locust_jump"));
                sound_play(sound_get("burn_locust_jump"), 0, noone, 1, 1.05);
            }
            if state_timer == 45 && !hitpause {
                with oPlayer sound_stop(sound_get("blessangel"));
                sound_play(sound_get("blessangel"), 0, noone, 1, 1);
            }
            image_index = floor(state_timer / 10) % 3;
            if state_timer >= 50 {
                if state_timer < 53 image_index = 3;
                else if state_timer < 58 image_index = 4;
                else image_index = 5;
            }
        } else if !probably_in_abyss {
            image_index += 1;
        }
        break;
    case PS_IDLE:
        if prev_state == PS_SPAWN && !probably_in_abyss image_index += 1;
        break;
    case PS_DASH:
        if prev_state == PS_DASH_TURN image_index -= 1;
        break;
    case PS_RESPAWN:
    	wing_x = x;
    	wing_y = y;
    	break;
    case PS_IDLE_AIR:
        if prev_state == PS_AIR_DODGE image_index = 5;
        break;
    case PS_ATTACK_GROUND:
        if attack == AT_JAB && window == 4 {
            if window_timer < 4 image_index = 8;
            else if window_timer < 8 image_index = 9;
            else image_index = 10;
        }
    case PS_ATTACK_AIR:
        switch (attack) {
            case AT_USPECIAL:
                if window == 1 && (window_timer == 8 || window_timer == 10 || window_timer == 11) sprite_index = sprite_get("its_literally_nothing");
                break;
        }
        break;
}

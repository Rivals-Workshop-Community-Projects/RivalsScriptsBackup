// do walk start animation manually at start of walk state
// currently disabled - i think it looks better without this when starting from the pose i chose as idle (which is not the Luna Nights default idle)
/*walk_start_anim_frames = 9;
if (state == PS_WALK) {
    if (prev_state == PS_IDLE) {
        walk_start_override_done = false;
    }

    if (!walk_start_override_done) {
        if (state_timer < walk_start_anim_frames/walk_anim_speed) {
            sprite_index = sprite_get("walkstart");
        }
        else {
            walk_start_override_done = true;
            sprite_index = sprite_get("walk");
            image_index = 0;
        }
    }
}*/

// do shared walk/dash stop animation on top of idle pose if last state was walking
/*dash_stop_anim_frames = 5;
if (state == PS_IDLE) {
    if (prev_state == PS_WALK && state_timer < dash_stop_anim_frames/walk_anim_speed) {
        walk_stop_override_done = false;
    }

    if (!walk_stop_override_done) {
        if (state_timer < dash_stop_anim_frames/walk_anim_speed) {
            sprite_index = sprite_get("dashstop");
        }
        else {
            walk_stop_override_done = true;
            sprite_index = sprite_get("idle");
            image_index = 0;
        }
    }
}*/


// manually animate dtilt sprites for looping hair wave so i don't have to hack the hitboxes for window 3
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DTILT) {
    if (window == 3) {
        var frame_count = get_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES);
        var start_frame = get_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START);
        image_index = start_frame + (floor(window_timer/2) % frame_count);
    }
}

// knife throw effects
// spawn visual effects and play sounds when throwing knives
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_JAB || attack == AT_NAIR || attack == AT_FSPECIAL)) {
    if (window % 2 == 1 && window_timer == 1) {
        spawn_hit_fx(x, y, ring_sprite);  
    }

    if ((attack == AT_JAB || attack == AT_NAIR) && window > 1 && window % 2 == 1 && (window_timer-1) % 3 == 0) {
        sound_play(sound_get("s1019_whip"));
    } else if (attack == AT_FSPECIAL && window == 1 && window_timer == 3) {
        sound_play(sound_get("s800_kengeki00"));
    }
}

// if moving while doing a ground throw, change to the appropriate sprite sheet
if (state == PS_ATTACK_GROUND && attack == AT_JAB) {
    if (hsp != 0) {
        sprite_index = sprite_get("jab_moving");
    } else {
        sprite_index = sprite_get("jab");
    }
}

// hover animation loop
if (hovering && state == PS_IDLE_AIR) {
    sprite_index = sprite_get("hover");
    image_index = 3 + ((state_timer * hover_anim_speed) % 3);
}

// crouch animation loop
if (state == PS_CROUCH) {
    image_index = (state_timer * crouch_idle_anim_speed) % 4;
}

// dstrong crouch animation loop
if (state == PS_ATTACK_GROUND && attack == AT_DSTRONG && window > 1) {
    image_index = 4 + (window_timer * crouch_idle_anim_speed) % 4;
}

// passive animation during taunt
if (state == PS_ATTACK_GROUND && attack == AT_TAUNT) {
    image_index = window_timer * idle_anim_speed;
}
set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_empty")); // If I just use 'empty_sprite', it flickers back to the first frame when the game is paused
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 15);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 3);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

// Windup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

// Charge
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
var cycles_per_frame = 5;
var fstrong_num_angles = 3;
for (var i = 0; i < fstrong_num_angles; i++) {
    // Hold
    set_window_value(AT_FSTRONG, 3 + (4 * i), AG_WINDOW_LENGTH, 4);
    set_window_value(AT_FSTRONG, 3 + (4 * i), AG_WINDOW_ANIM_FRAMES, 0);
    set_window_value(AT_FSTRONG, 3 + (4 * i), AG_WINDOW_ANIM_FRAME_START, 3 + (13 * i));
    set_window_value(AT_FSTRONG, 3 + (4 * i), AG_WINDOW_HSPEED, 0);
    set_window_value(AT_FSTRONG, 3 + (4 * i), AG_WINDOW_VSPEED, 0);
    set_window_value(AT_FSTRONG, 3 + (4 * i), AG_WINDOW_HSPEED_TYPE, 1);
    set_window_value(AT_FSTRONG, 3 + (4 * i), AG_WINDOW_VSPEED_TYPE, 2);

    // Pre-fire glow
    set_window_value(AT_FSTRONG, 4 + (4 * i), AG_WINDOW_LENGTH, 4);
    set_window_value(AT_FSTRONG, 4 + (4 * i), AG_WINDOW_ANIM_FRAMES, 0);
    set_window_value(AT_FSTRONG, 4 + (4 * i), AG_WINDOW_ANIM_FRAME_START, 4 + (13 * i));
    set_window_value(AT_FSTRONG, 4 + (4 * i), AG_WINDOW_HSPEED, 0);
    set_window_value(AT_FSTRONG, 4 + (4 * i), AG_WINDOW_HSPEED, 0);
    set_window_value(AT_FSTRONG, 4 + (4 * i), AG_WINDOW_HSPEED_TYPE, 1);
    set_window_value(AT_FSTRONG, 4 + (4 * i), AG_WINDOW_VSPEED_TYPE, 2);
    
    // Fire
    //set_window_value(AT_FSTRONG, 5 + (4 * i), AG_WINDOW_TYPE, 7);
    set_window_value(AT_FSTRONG, 5 + (4 * i), AG_WINDOW_LENGTH, cycles_per_frame * 4);
    set_window_value(AT_FSTRONG, 5 + (4 * i), AG_WINDOW_ANIM_FRAMES, 4);
    set_window_value(AT_FSTRONG, 5 + (4 * i), AG_WINDOW_ANIM_FRAME_START, 5 + (13 * i));
    set_window_value(AT_FSTRONG, 5 + (4 * i), AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
    set_window_value(AT_FSTRONG, 5 + (4 * i), AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
    
    // Pause to reflect
    set_window_value(AT_FSTRONG, 6 + (4 * i), AG_WINDOW_LENGTH, 10);
    set_window_value(AT_FSTRONG, 6 + (4 * i), AG_WINDOW_HAS_WHIFFLAG, 1);
    set_window_value(AT_FSTRONG, 6 + (4 * i), AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_FSTRONG, 6 + (4 * i), AG_WINDOW_ANIM_FRAME_START, 9 + (13 * i));
}

// Movement across various windows
if (fstrong_recoil_enabled) {
    // Horizontal aim angle
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, -7.5);
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED, -3);
    //set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, -10);
    //set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED, -4);
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 2);
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED_TYPE, 2);
    // Angled up, so less horizontal movement
    set_window_value(AT_FSTRONG, 9, AG_WINDOW_HSPEED, -6);
    set_window_value(AT_FSTRONG, 9, AG_WINDOW_VSPEED, 1);
    set_window_value(AT_FSTRONG, 9, AG_WINDOW_HSPEED_TYPE, 2);
    set_window_value(AT_FSTRONG, 9, AG_WINDOW_VSPEED_TYPE, 2);
    // Angled down, so pop up into the air
    set_window_value(AT_FSTRONG, 13, AG_WINDOW_HSPEED, -7.5);
    set_window_value(AT_FSTRONG, 13, AG_WINDOW_VSPEED, -10);
    //set_window_value(AT_FSTRONG, 13, AG_WINDOW_HSPEED, -9);
    //set_window_value(AT_FSTRONG, 13, AG_WINDOW_VSPEED, -12);
    set_window_value(AT_FSTRONG, 13, AG_WINDOW_HSPEED_TYPE, 2);
    set_window_value(AT_FSTRONG, 13, AG_WINDOW_VSPEED_TYPE, 2);
} else {
    // Horizontal aim angle
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, 0);
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 1);
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED_TYPE, 1);
    // Angled up, so less horizontal movement
    set_window_value(AT_FSTRONG, 9, AG_WINDOW_HSPEED, 0);
    set_window_value(AT_FSTRONG, 9, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_FSTRONG, 9, AG_WINDOW_HSPEED_TYPE, 1);
    set_window_value(AT_FSTRONG, 9, AG_WINDOW_VSPEED_TYPE, 1);
    // Angled down, so pop up into the air
    set_window_value(AT_FSTRONG, 13, AG_WINDOW_HSPEED, 0);
    set_window_value(AT_FSTRONG, 13, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_FSTRONG, 13, AG_WINDOW_HSPEED_TYPE, 1);
    set_window_value(AT_FSTRONG, 13, AG_WINDOW_VSPEED_TYPE, 1);
}

// Return to your original position
set_window_value(AT_FSTRONG, 15, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_ANIM_FRAME_START, 11);


set_num_hitboxes(AT_FSTRONG, 6);

for (var i = 0; i < 3; i++) {
    // Base
    set_hitbox_value(AT_FSTRONG, 1 + (i * 2), HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FSTRONG, 1 + (i * 2), HG_WINDOW, 5 + (4 * i));
    set_hitbox_value(AT_FSTRONG, 1 + (i * 2), HG_LIFETIME, cycles_per_frame * 4);
    set_hitbox_value(AT_FSTRONG, 1 + (i * 2), HG_WIDTH, 52);
    set_hitbox_value(AT_FSTRONG, 1 + (i * 2), HG_HEIGHT, 52);
    set_hitbox_value(AT_FSTRONG, 1 + (i * 2), HG_PRIORITY, 1);
    set_hitbox_value(AT_FSTRONG, 1 + (i * 2), HG_VISUAL_EFFECT_X_OFFSET, -12);
    set_hitbox_value(AT_FSTRONG, 1 + (i * 2), HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(AT_FSTRONG, 1 + (i * 2), HG_VISUAL_EFFECT, blast_hit_effect);
    set_hitbox_value(AT_FSTRONG, 1 + (i * 2), HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
    
    // Tip
    set_hitbox_value(AT_FSTRONG, 2 + (i * 2), HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FSTRONG, 2 + (i * 2), HG_WINDOW, 5 + (4 * i));
    set_hitbox_value(AT_FSTRONG, 2 + (i * 2), HG_LIFETIME, cycles_per_frame * 2);
    set_hitbox_value(AT_FSTRONG, 2 + (i * 2), HG_WIDTH, 40);
    set_hitbox_value(AT_FSTRONG, 2 + (i * 2), HG_HEIGHT, 40);
    set_hitbox_value(AT_FSTRONG, 2 + (i * 2), HG_PRIORITY, 1);
    set_hitbox_value(AT_FSTRONG, 2 + (i * 2), HG_VISUAL_EFFECT_X_OFFSET, -12);
    set_hitbox_value(AT_FSTRONG, 2 + (i * 2), HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(AT_FSTRONG, 2 + (i * 2), HG_VISUAL_EFFECT, blast_hit_effect);
    set_hitbox_value(AT_FSTRONG, 2 + (i * 2), HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
}

// Set damage/knockback angles
// Neutral
for (var i = 1; i <= 2; i++) {
    set_hitbox_value(AT_FSTRONG, i, HG_DAMAGE, 13);
    set_hitbox_value(AT_FSTRONG, i, HG_ANGLE, 55);
    set_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING, 0.9);
    set_hitbox_value(AT_FSTRONG, i, HG_BASE_HITPAUSE, 7);
    set_hitbox_value(AT_FSTRONG, i, HG_HITPAUSE_SCALING, 0.9);
}
// High
for (var i = 3; i <= 4; i++) {
    set_hitbox_value(AT_FSTRONG, i, HG_DAMAGE, 14);
    set_hitbox_value(AT_FSTRONG, i, HG_ANGLE, 70);
    set_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING, 0.95);
    set_hitbox_value(AT_FSTRONG, i, HG_BASE_HITPAUSE, 7);
    set_hitbox_value(AT_FSTRONG, i, HG_HITPAUSE_SCALING, 0.95);
}
// Low
for (var i = 5; i <= 6; i++) {
    set_hitbox_value(AT_FSTRONG, i, HG_DAMAGE, 12);
    set_hitbox_value(AT_FSTRONG, i, HG_ANGLE, 40);
    set_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING, 0.85);
    set_hitbox_value(AT_FSTRONG, i, HG_BASE_HITPAUSE, 7);
    set_hitbox_value(AT_FSTRONG, i, HG_HITPAUSE_SCALING, 0.85);
}

// Make the hitbox placement self-adjust with angle
// Fulcrum offset from player's current position
var fulcrum_x = -(65 - 61);
var fulcrum_y = -(111 - 73);
// offset from fulcrum to base hitbox
var fulcrum_offset_x = 51;
var fulcrum_offset_y = -9;
var distance_to_base = point_distance(0, 0, fulcrum_offset_x, fulcrum_offset_y);
var aim_angle = 0;
for (var i = 0; i < 3; i++) {
    switch (i) {
        case 1 : // Up
            aim_angle = fstrong_upward_angle;
            break;
        case 2 : // Down
            aim_angle = fstrong_downward_angle;
            break;
        default : // Neutral
            aim_angle = 0;
            break;
    }
    
    // Relative position from fulcrum to base hitbox
    var angle_to_base = aim_angle + point_direction(0, 0, fulcrum_offset_x, fulcrum_offset_y);
    
    var base_hitbox_x = fulcrum_x + lengthdir_x(distance_to_base, angle_to_base);
    var base_hitbox_y = fulcrum_y + lengthdir_y(distance_to_base, angle_to_base);

    // Distance between hitbox centers
    var hb_origin_distance = 40;
    var hb_origin_angle = aim_angle;
    // Relative position from fulcrum to base hitbox
    var tip_hitbox_x = base_hitbox_x + lengthdir_x(hb_origin_distance, hb_origin_angle);
    var tip_hitbox_y = base_hitbox_y + lengthdir_y(hb_origin_distance, hb_origin_angle);

    set_hitbox_value(AT_FSTRONG, 1 + (2 * i), HG_HITBOX_X, base_hitbox_x);
    set_hitbox_value(AT_FSTRONG, 1 + (2 * i), HG_HITBOX_Y, base_hitbox_y);
    set_hitbox_value(AT_FSTRONG, 2 + (2 * i), HG_HITBOX_X, tip_hitbox_x);
    set_hitbox_value(AT_FSTRONG, 2 + (2 * i), HG_HITBOX_Y, tip_hitbox_y);
}


// Munophone notes
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_MISC_ADD, "Only hitboxes of the same angle will appear together.");
// Exclude windows of up/down angles
for (var i = 1; i < fstrong_num_angles; i++) {
    var fstrong_windows_per_angle = 4;
    for (var j = 3; j < 3 + fstrong_windows_per_angle; j++) {
        var fstrong_current_window = j + (fstrong_windows_per_angle * i)
        set_window_value(AT_FSTRONG, fstrong_current_window, AG_MUNO_WINDOW_EXCLUDE, 1);
    }
}

set_hitbox_value(AT_FSTRONG, 1, HG_MUNO_HITBOX_MISC_ADD, "Neutral angle");
set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_MISC_ADD, "Neutral angle");

var fstrong_first_hitbox_frame = get_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH)
                               + get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH)
                               + get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH)
                               + get_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH);
set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_MISC_ADD, "Upward angle");
set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_ACTIVE, string(fstrong_first_hitbox_frame + 1) + "-" + string(fstrong_first_hitbox_frame + (cycles_per_frame * 4)));
set_hitbox_value(AT_FSTRONG, 4, HG_MUNO_HITBOX_MISC_ADD, "Upward angle");
set_hitbox_value(AT_FSTRONG, 4, HG_MUNO_HITBOX_ACTIVE, string(fstrong_first_hitbox_frame + 1) + "-" + string(fstrong_first_hitbox_frame + (cycles_per_frame * 2)));

set_hitbox_value(AT_FSTRONG, 5, HG_MUNO_HITBOX_MISC_ADD, "Downward angle");
set_hitbox_value(AT_FSTRONG, 5, HG_MUNO_HITBOX_ACTIVE, string(fstrong_first_hitbox_frame + 1) + "-" + string(fstrong_first_hitbox_frame + (cycles_per_frame * 4)));
set_hitbox_value(AT_FSTRONG, 6, HG_MUNO_HITBOX_MISC_ADD, "Downward angle");
set_hitbox_value(AT_FSTRONG, 6, HG_MUNO_HITBOX_ACTIVE, string(fstrong_first_hitbox_frame + 1) + "-" + string(fstrong_first_hitbox_frame + (cycles_per_frame * 2)));

/*
// Sweetspot
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 18);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 14);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));

// Sourspot
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 78);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 95);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 65);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
*/



/*
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);
*/
// when drive boot (abyss rune A)

set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("drive"));
set_attack_value(AT_NSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("drive_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 200); // hmm
set_attack_value(AT_NSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("owen_hurtbox"));

set_attack_value(AT_NSPECIAL_AIR, AG_MUNO_ATTACK_EXCLUDE, 1);

// startup
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);



/*
// snolid said no air stalling :(
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0.5);
*/
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);


// the hitboxes don't work online, what's the point?
/*
set_num_hitboxes(AT_NSPECIAL_AIR, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
*/
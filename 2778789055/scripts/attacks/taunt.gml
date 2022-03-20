set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("gumbo_hurtbox"));


//startup
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);

//attack
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);

//endlag
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);



set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 0);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1); 
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("literally_just_a_pixel"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, sprite_get("literally_just_a_pixel"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, 1.5);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DRIFT_MULTIPLIER, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_LOCKOUT, 5);
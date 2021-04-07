set_attack_value(AT_EXTRA1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA1, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA1, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA1, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA1, AG_HURTBOX_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA1, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial"));

//set_window_value(AT_EXTRA1, 1, AG_WINDOW_LENGTH, 47*3);
//set_window_value(AT_EXTRA1, 1, AG_WINDOW_ANIM_FRAMES, 47);
//set_window_value(AT_EXTRA1, 1, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_EXTRA1, 2, AG_WINDOW_LENGTH, 4);
//set_window_value(AT_EXTRA1, 2, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_EXTRA1, 2, AG_WINDOW_ANIM_FRAME_START, 48);




//startup
set_window_value(AT_EXTRA1, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA1, 2, AG_WINDOW_ANIM_FRAME_START, 0);

//charging window. The length of this window = the maximum charge time.
set_window_value(AT_EXTRA1, 2, AG_WINDOW_LENGTH, 45*4); 
set_window_value(AT_EXTRA1, 2, AG_WINDOW_ANIM_FRAMES, 45);
set_window_value(AT_EXTRA1, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//charge release window. This window should be at least 2 frames long.
set_window_value(AT_EXTRA1, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA1, 3, AG_WINDOW_ANIM_FRAME_START, 47);

//active
set_window_value(AT_EXTRA1, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA1, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA1, 4, AG_WINDOW_ANIM_FRAME_START, 49);
set_window_value(AT_EXTRA1, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA1, 4, AG_WINDOW_HSPEED_TYPE, 1);

//recovery
set_window_value(AT_EXTRA1, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA1, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA1, 5, AG_WINDOW_ANIM_FRAME_START, 50);
//set_window_value(AT_EXTRA1, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA1, 2);
//Cherry
set_hitbox_value(AT_EXTRA1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA1, 1, HG_WINDOW, 300);
set_hitbox_value(AT_EXTRA1, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_EXTRA1, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_EXTRA1, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA1, 1, HG_WIDTH, 28);
set_hitbox_value(AT_EXTRA1, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_EXTRA1, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA1, 1, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA1, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA1, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_EXTRA1, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_EXTRA1, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA1, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_EXTRA1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_SPRITE, sprite_get("Banana"));
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA1, 1, HG_ANGLE_FLIPPER, 5);


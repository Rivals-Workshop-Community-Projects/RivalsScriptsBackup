// used for nspecial bomb (abyss rune)

set_attack_value(AT_DSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("nspecial_bomb"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSTRONG_2, AG_OFF_LEDGE, 1);
//set_attack_value(AT_DSTRONG_2, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_attack_value(AT_DSTRONG_2, AG_MUNO_ATTACK_EXCLUDE, 1);
 
// pull out (note: this should never be frame 4)
// also firing
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_SFX, sound_get("ar2_altfire"));

// firing
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HSPEED, -8);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_VSPEED, -2);
//set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 22);


// ammo is removed from the ammo bar during this window
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// put away
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_DSTRONG_2, 1);

set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 200);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("smg_bomb"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("smg_bomb"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, sound_get("explode4"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);


// blast damage
set_hitbox_value(AT_DSTRONG_2, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, 6000); // VERY janky fix to nspecial bomb hitbox spawning on the player for a frame
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 200);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 200);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 0.001); // incase polite hitbox is skipped
//set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_EFFECT, 9);

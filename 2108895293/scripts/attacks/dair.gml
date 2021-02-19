set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 11);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3); //active 1
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, sound_get("dair1"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 9); //Looping
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6); //active 2, loops...thrice?, needs coding
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 14); 
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 3);

//swing
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


//bullet 1
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -5);

set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("bullet1"));
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_HSPEED, 11);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_VSPEED, 8);

set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 28);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 28);

set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 60); //55
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.15);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("hit1_short"));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 113);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, particle1);

set_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);


//bullet 2
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -5);

set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("bullet1"));
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_VSPEED, 11);

set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 28);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 28);

set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 60); //55
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.15);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("hit1_short"));
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 113);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, particle1);

set_hitbox_value(AT_DAIR, 3, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_PARRY_STUN, 1);



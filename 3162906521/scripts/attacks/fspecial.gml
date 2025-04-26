set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//has_box
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);

//bro actually dropped his toolbox, a real smh my head moment right here
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.35);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_num_hitboxes(AT_FSPECIAL, 0);

//melee hitbox, only when he doesn't drop the toolbox (scrapped)
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

//flying toolbox hitbox
set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 400000);//it costs 400000 frames to use this attack, for 12 frames
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, 68);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("deploy"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);

//boxing glove hitbox 
set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 400000);//it costs 400000 frames to use this attack, for 12 frames
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -66);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, -46);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 120);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, 2);
// set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);

//boxing glove hitbox sweet
// set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 3);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
// set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
// set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 400000);//it costs 400000 frames to use this attack, for 12 frames
// set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 6);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 0);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -110);
// set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 300);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 80);
// set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
// set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 8);
// set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 65);
// set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .85);
// set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 9);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, .4);
// set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 164);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
// set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 1);
// set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.6);
// set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, 1);
// set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
// set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("toolbox"));

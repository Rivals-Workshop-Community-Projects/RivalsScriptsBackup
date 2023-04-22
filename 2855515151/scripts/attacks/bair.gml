set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);


set_num_hitboxes(AT_BAIR, 4);
var bair_vfx = 270;

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -52);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -51);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 59);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 130);
//set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_BAIR, 1, HG_HIT_PARTICLE_NUM, 1);


set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -88);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 41);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 100);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_BAIR, 2, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -12);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -9);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 73);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_BAIR, 3, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, -1);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 20);
//set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 0);
//set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 26);
//set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 26);
//set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 2);
//set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 3);
//set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 150);
//set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .8);
//set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_BAIR, 4, HG_EXTRA_HITPAUSE, 10);
//set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
//set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_AIR_FRICTION, .4);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
//set_hitbox_value(AT_BAIR, 4, HG_FINAL_BASE_KNOCKBACK, 4);
//set_hitbox_value(AT_BAIR, 4, HG_HIT_LOCKOUT, 1);
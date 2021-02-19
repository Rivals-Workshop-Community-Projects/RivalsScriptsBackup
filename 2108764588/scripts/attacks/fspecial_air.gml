set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_new"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial_new"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_new_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 4);
//set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 4);
//set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -6);
//set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 2);//*/

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 4);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL_AIR, 2);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 50);
//set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("ice_proj"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_MASK, sprite_get("ice_proj"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .09);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 27);
//set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 1);


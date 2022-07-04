set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
//set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .25);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_bash_hit"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .25);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);


set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);

//rekka forward
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_DSPECIAL, 5, AG_USES_CUSTOM_GRAVITY , 1);
//set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, .4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("dash"));
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .25);
//set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

//rekka backward
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED, -7);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_DSPECIAL, 6, AG_USES_CUSTOM_GRAVITY , 1);
//set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, .4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, sound_get("dash"));
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, .25);
//set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 41);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 49);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
//set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12); //start up
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 8); //rise
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -13);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 7);

//waiting window to transition to AT_DSPECIAL_AIR
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 2);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 32); //armor get
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 150);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
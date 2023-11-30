set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ori_bash_use"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 4);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ori_glide_end"));

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("shadowrefresh"));

set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 190);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 190);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, boxFX);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 38);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
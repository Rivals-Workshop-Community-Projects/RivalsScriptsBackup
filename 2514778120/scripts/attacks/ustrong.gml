set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

sword_attack_spr[1, AT_USTRONG] = sprite_get("sword1_ustrong");
sword_attack_hurtbox_spr[1, AT_USTRONG] = sprite_get("sword1_ustrong_hurt");
sword_attack_xoff[1, AT_USTRONG] = -12;
sword_attack_yoff[1, AT_USTRONG] = -64;
sword_attack_charge_window[1, AT_USTRONG] = 8;

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

//Normal
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_GOTO, 12);

//With Sword
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

sword_window_min[1, AT_USTRONG] = 8;
sword_window_max[1, AT_USTRONG] = 11;

set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

set_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_USTRONG, 9, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USTRONG, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 11, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USTRONG, 11, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 11, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 9);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 88);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -44);

sword_window_hitbox_min[1, AT_USTRONG] = 3;
sword_window_hitbox_max[1, AT_USTRONG] = 5;

//Clean
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -78);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 170);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, fx_plasmatip);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_fspecial_slash"));

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 66);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 147);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 153);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, fx_plasmatip);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_clairen_fspecial_slash"));

//Late
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 12);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 180);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 120);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, fx_plasma2);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));



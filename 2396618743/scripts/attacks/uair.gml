set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_small"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_glide_start"));

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 0);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -130);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 114);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 106);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -114);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 20);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_UAIR, 2, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -120);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 90);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
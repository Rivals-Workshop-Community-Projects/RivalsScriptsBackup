set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -4);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR,1);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 43);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_ell_drill_stab"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 3);
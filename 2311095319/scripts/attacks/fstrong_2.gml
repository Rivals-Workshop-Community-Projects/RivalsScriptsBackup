set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("firebrand"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("firebrand_hurt"));
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_NAME, "Firebrand");

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, sfx_firebrand_use);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_SFX, asset_get("sfx_zetter_upb_hit"));

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 76);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, fireball_big_explode);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_boss_charge"));
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_oly_dspecial_dashcancel"));
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED, 2.75);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, 17);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .25);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 84);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 51);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7.7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_LOCKOUT, 10);
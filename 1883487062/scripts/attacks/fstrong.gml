set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 2);

set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -21);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 1, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_may_whip1"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 96);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 110);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_may_whip1"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);


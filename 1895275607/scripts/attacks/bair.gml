set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -34);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 67);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 145);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .73);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
//set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
//set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 8);
//set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -29);
//set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 71);
//set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 64);
//set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
//set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
//set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 4);
//set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 90);
//set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 4);
//set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 2);
//set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_swipe_weak1"));

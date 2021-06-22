set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
//Active 1
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("dtilt"));

//intermediary
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, sound_get("bair"));

//Active 2
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);

//Recovery
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, true);

set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3)
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 3 );
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("hisou_hit"));


set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0)
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -52);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 74);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.97);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 148 );
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("hisou_hit5"));

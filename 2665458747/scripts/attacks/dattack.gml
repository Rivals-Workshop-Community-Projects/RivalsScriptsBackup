set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 14);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, -4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 45);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, fightinghit);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("sm-fightinghit"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, fighthit);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("dp-hit2"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 25);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, poisonjabhit);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get("sm-tipper"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 52);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 75);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, poisonjabhit);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sound_get("sm-tipper"));
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 2);
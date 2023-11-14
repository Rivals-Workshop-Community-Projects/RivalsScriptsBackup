set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//JabS-Start
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sfx_swinglight3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 2);
//JabS-Active
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 2);
//JabS-Transition
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, sfx_swingheavy3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX_FRAME, 7);
//JabS2-Active
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED, 8);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED_TYPE, 2);
//JabS2-End
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 45);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 55);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sfx_fe_hit1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 85);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, sfx_fe_hit4);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, 2);
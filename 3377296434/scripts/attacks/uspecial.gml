set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 20);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, pound_loop);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("ground_hit"));

set_num_hitboxes(AT_USPECIAL, 2);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("sfx_punch"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 3);


set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 138);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -63);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
set_attack_value(AT_DATTACK_G, AG_SPRITE, sprite_get("dattackg"));
set_attack_value(AT_DATTACK_G, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK_G, AG_HURTBOX_SPRITE, sprite_get("dattackg_hurt"));

//dattackg start
set_window_value(AT_DATTACK_G, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK_G, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK_G, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK_G, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DATTACK_G, 1, AG_WINDOW_SFX_FRAME, 8);

//dattackg active1
set_window_value(AT_DATTACK_G, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK_G, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK_G, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK_G, 2, AG_WINDOW_HSPEED, 7);

//dattackg end
set_window_value(AT_DATTACK_G, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DATTACK_G, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK_G, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK_G, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK_G, 2);

//upper
set_hitbox_value(AT_DATTACK_G, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK_G, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK_G, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK_G, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK_G, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_DATTACK_G, 1, HG_WIDTH, 77);
set_hitbox_value(AT_DATTACK_G, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_DATTACK_G, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK_G, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DATTACK_G, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK_G, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK_G, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DATTACK_G, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK_G, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK_G, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK_G, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//lower
set_hitbox_value(AT_DATTACK_G, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK_G, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK_G, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK_G, 2, HG_HITBOX_X, 67);
set_hitbox_value(AT_DATTACK_G, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK_G, 2, HG_WIDTH, 67);
set_hitbox_value(AT_DATTACK_G, 2, HG_HEIGHT, 79);
set_hitbox_value(AT_DATTACK_G, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK_G, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_DATTACK_G, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK_G, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK_G, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DATTACK_G, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK_G, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK_G, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DATTACK_G, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
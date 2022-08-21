set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//start
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);

//atj
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);

//end
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 3);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 32);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, midsmoke);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, midsmoke);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -32);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 105);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, midsmoke);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

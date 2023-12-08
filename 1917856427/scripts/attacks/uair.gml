set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG,1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6); // OLD 4
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, .9);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,4);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 11);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 75);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 77);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 85);//old 70
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);//old 6
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .7);//old .5
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -11);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 120);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 4);//3
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .6);//.5
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 0);


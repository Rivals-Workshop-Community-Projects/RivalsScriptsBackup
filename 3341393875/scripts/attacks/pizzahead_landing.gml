set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("pizzahead_landing"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("pizzahead_landing_hurt"));
set_attack_value(AT_USPECIAL_GROUND, AG_NO_PARRY_STUN, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, true);

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.04);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 40);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_USPECIAL_GROUND, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, HFX_KRA_ROCK_SMALL);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT_Y_OFFSET, 36);

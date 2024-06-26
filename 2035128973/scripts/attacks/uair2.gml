if (get_synced_var(player) == 15005) exit;
set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uair_boneless"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_LANDING_LAG, 5);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uair_boneless_hurt"));

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USPECIAL_GROUND, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 303);
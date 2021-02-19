set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 3);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 10);

set_num_hitboxes(AT_USPECIAL, 2);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -50);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -50);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);



//the rest of these don't matter they're just there to not crash the game
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -50);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -50);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_VSPEED, -3);


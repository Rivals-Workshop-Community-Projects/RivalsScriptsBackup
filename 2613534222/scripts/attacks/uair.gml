set_attack_value(AT_UAIR, AG_CATEGORY, 2);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("tp"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UAIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED_TYPE, 1);


set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 2);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("pokehit_normal"));
set_hitbox_value(AT_UAIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);

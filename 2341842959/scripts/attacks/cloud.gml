set_attack_value(AT_CLOUD, AG_CATEGORY, 2);
set_attack_value(AT_CLOUD, AG_NUM_WINDOWS, 3);
set_attack_value(AT_CLOUD, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_CLOUD, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_CLOUD, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_CLOUD, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_CLOUD, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_CLOUD, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_CLOUD, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_CLOUD, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_CLOUD, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_CLOUD, 1, AG_WINDOW_SFX, asset_get("sfx_metal_hit_strong"));

set_window_value(AT_CLOUD, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_CLOUD, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_CLOUD, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_CLOUD, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_CLOUD, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_CLOUD, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_CLOUD, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_CLOUD, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_CLOUD, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_CLOUD, 1);

set_hitbox_value(AT_CLOUD, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_CLOUD, 1, HG_WINDOW, 2);
set_hitbox_value(AT_CLOUD, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_CLOUD, 1, HG_HITBOX_X, 9);
set_hitbox_value(AT_CLOUD, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_CLOUD, 1, HG_WIDTH, 115);
set_hitbox_value(AT_CLOUD, 1, HG_HEIGHT, 115);
set_hitbox_value(AT_CLOUD, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_CLOUD, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_CLOUD, 1, HG_ANGLE, 45);
set_hitbox_value(AT_CLOUD, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_CLOUD, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_CLOUD, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_CLOUD, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_CLOUD, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
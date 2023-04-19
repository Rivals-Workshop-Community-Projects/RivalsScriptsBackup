set_attack_value(AT_COPY_ABYSS, AG_CATEGORY, 2);
set_attack_value(AT_COPY_ABYSS, AG_SPRITE, sprite_get("ability_abyss"));
set_attack_value(AT_COPY_ABYSS, AG_HURTBOX_SPRITE, sprite_get("ability_abyss_hurt"));
set_attack_value(AT_COPY_ABYSS, AG_NUM_WINDOWS, 6);
set_attack_value(AT_COPY_ABYSS, AG_OFF_LEDGE, 1);
set_attack_value(AT_COPY_ABYSS, AG_USES_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_COPY_ABYSS, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_ABYSS, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_COPY_ABYSS, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_COPY_ABYSS, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_COPY_ABYSS, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_ABYSS, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_hazard_start"));

//"charging"
set_window_value(AT_COPY_ABYSS, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_COPY_ABYSS, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_COPY_ABYSS, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_ABYSS, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_COPY_ABYSS, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_ABYSS, 2, AG_WINDOW_SFX, asset_get("sfx_abyss_portal_spawn"));

//transition
set_window_value(AT_COPY_ABYSS, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_ABYSS, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_COPY_ABYSS, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_ABYSS, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_COPY_ABYSS, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_ABYSS, 3, AG_WINDOW_VSPEED_TYPE, 1);

//active strong
set_window_value(AT_COPY_ABYSS, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_ABYSS, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_COPY_ABYSS, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_ABYSS, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_COPY_ABYSS, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_ABYSS, 4, AG_WINDOW_VSPEED_TYPE, 1);

//dissipation
set_window_value(AT_COPY_ABYSS, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_ABYSS, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_COPY_ABYSS, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_COPY_ABYSS, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_COPY_ABYSS, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_ABYSS, 5, AG_WINDOW_VSPEED_TYPE, 1);

//endlag
set_window_value(AT_COPY_ABYSS, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_COPY_ABYSS, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_COPY_ABYSS, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_COPY_ABYSS, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_COPY_ABYSS, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_COPY_ABYSS, 1);

set_hitbox_value(AT_COPY_ABYSS, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_WINDOW, 4);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_WIDTH, 49);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_HEIGHT, 83);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_ANGLE, 45);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_COPY_ABYSS, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
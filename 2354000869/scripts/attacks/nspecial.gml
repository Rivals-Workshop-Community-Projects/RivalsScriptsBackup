set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_ground"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_ground_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1); //Charge
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 18);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1); //Throw
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 280);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("newbonk"));
set_attack_value(AT_NSPECIAL_SAND, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_SAND, AG_SPRITE, sprite_get("AT_JAB"));
set_attack_value(AT_NSPECIAL_SAND, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_SAND, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_SAND, AG_AIR_SPRITE, sprite_get("AT_JAB"));
set_attack_value(AT_NSPECIAL_SAND, AG_HURTBOX_SPRITE, sprite_get("AT_JAB_hurt"));


set_window_value(AT_NSPECIAL_SAND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_SAND, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_SAND, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_SAND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_SAND, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
set_window_value(AT_NSPECIAL_SAND, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL_SAND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_SAND, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_SAND, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_SAND, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL_SAND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_SAND, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_SAND, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_SAND, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NSPECIAL_SAND, 1);

set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_SAND, 1, HG_PROJECTILE_HSPEED, 18);
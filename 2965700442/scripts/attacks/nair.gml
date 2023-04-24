set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_syl_nspecial"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED, -3);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Clean");
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 78);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6 );
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 198  );
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));

set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_NAME, "Late");
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 88);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 88);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6 );
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 17  );
set_hitbox_value(AT_NAIR, 2, HG_IGNORES_PROJECTILES, 1  );
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));
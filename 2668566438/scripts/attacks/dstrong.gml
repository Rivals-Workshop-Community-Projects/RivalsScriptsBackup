set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED, 2);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 3);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3); // 5
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 36); // 5
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10); // -15
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 32); // 160
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 32); // 30
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 11); // 11
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 280); // 290
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.5); // 1.3
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 15); // 7
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 6);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3); // 5
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 5); // 5
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -32); // -15
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 60); // 160
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 60); // 30
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 7); // 11
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 310); // 290
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1); // 1.3
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8); // 7
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 20);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 600);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("sludge"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, fx_sludge_pop);
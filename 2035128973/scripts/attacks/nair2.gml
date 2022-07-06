if (get_synced_var(player)) exit;
set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nair_boneless"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nair_boneless_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL_AIR, 2);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 82);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, aura_effect);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 92);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, aurabig_effect);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 6);
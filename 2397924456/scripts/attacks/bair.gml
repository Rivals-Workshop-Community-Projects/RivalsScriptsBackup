set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sfx_astral_chain_normal_swipe_1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 0);

// active
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// between
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, sfx_astral_chain_gunshot_charged);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX_FRAME, 0);

// active
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -48);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -56);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, vfx_hit_small);
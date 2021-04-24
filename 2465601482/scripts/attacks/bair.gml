set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_BAIR,1,AG_WINDOW_LENGTH,15);
set_window_value(AT_BAIR,1,AG_WINDOW_ANIM_FRAMES,1);

set_window_value(AT_BAIR,2,AG_WINDOW_LENGTH,12);
set_window_value(AT_BAIR,2,AG_WINDOW_ANIM_FRAMES,3);
set_window_value(AT_BAIR,2,AG_WINDOW_ANIM_FRAME_START,1);
set_window_value(AT_BAIR,2,AG_WINDOW_HSPEED,5);
set_window_value(AT_BAIR,2,AG_WINDOW_VSPEED,-2);
set_window_value(AT_BAIR,2,AG_WINDOW_HAS_SFX,1);
set_window_value(AT_BAIR,2,AG_WINDOW_SFX,asset_get("sfx_abyss_hazard_burst"));

set_window_value(AT_BAIR,3,AG_WINDOW_LENGTH,6);
set_window_value(AT_BAIR,3,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_BAIR,3,AG_WINDOW_ANIM_FRAME_START,4);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 58);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 150);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_orcane_dsmash"));
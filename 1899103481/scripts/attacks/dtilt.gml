set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_syl_dstrong"));

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
// set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED, -12);
// set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED_TYPE, 2);
// set_window_value(AT_DTILT, 3, AG_WINDOW_VSPEED, -9);
// set_window_value(AT_DTILT, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT,1);

// puddle
set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 350); // 300
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, -100);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 122);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 2, HG_EFFECT, 9);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, -16);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("magma_puddle"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_MASK, sprite_get("magma_puddle"));
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));

// melee hit
set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
// set_hitbox_value(AT_DTILT, 1, HG_EFFECT, 9);
// set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, -16);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_syl_ustrong_part2"));
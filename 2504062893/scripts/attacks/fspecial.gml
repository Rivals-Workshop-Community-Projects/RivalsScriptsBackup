set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
// set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY , 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

// // THROWING
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_fire"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial2"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);

// THROWING (SPIT ANIMATION IDEA)
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 4);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_fire"));
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);

// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
// set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
// set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//CONSUMING
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume_full"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_FSPECIAL, 0);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 999);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 18);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, fx_ghost_hit);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, snd_Fspecial_hit);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_buzzsaw_throw"))
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, fx_shuriken_dissolve);
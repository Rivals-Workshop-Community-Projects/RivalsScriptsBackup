set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash");
set_attack_value(49, AG_CATEGORY, 1);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_LANDING_LAG, 0);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));

// Windup
set_window_value(49, 1, AG_WINDOW_LENGTH, 24);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 1, AG_WINDOW_HSPEED, 0);
set_window_value(49, 1, AG_WINDOW_VSPEED, 0);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);

// Lean into it
set_window_value(49, 2, AG_WINDOW_LENGTH, 5);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 2, AG_WINDOW_HSPEED, 8);
set_window_value(49, 2, AG_WINDOW_VSPEED, 0);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

// Slap
set_window_value(49, 3, AG_WINDOW_LENGTH, 15);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(49, 3, AG_WINDOW_HSPEED, 0);
set_window_value(49, 3, AG_WINDOW_VSPEED, 0);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

// Recoil
set_window_value(49, 4, AG_WINDOW_LENGTH, 20);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 4, AG_WINDOW_HSPEED, -6);
set_window_value(49, 4, AG_WINDOW_VSPEED, 0);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(49,1);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 3);
set_hitbox_value(49, 1, HG_LIFETIME, 12);
set_hitbox_value(49, 1, HG_HITBOX_X, 128);
set_hitbox_value(49, 1, HG_HITBOX_Y, -39);
set_hitbox_value(49, 1, HG_WIDTH, 255);
set_hitbox_value(49, 1, HG_HEIGHT, 170);
set_hitbox_value(49, 1, HG_SHAPE, 0);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 25);
set_hitbox_value(49, 1, HG_ANGLE, 55);
set_hitbox_value(49, 1, HG_TECHABLE, 1);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, blast_hit_effect);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

/*
set_window_value(49, 1, AG_WINDOW_LENGTH, 20);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED, 0);
set_window_value(49, 1, AG_WINDOW_VSPEED, -20);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(49, 2, AG_WINDOW_LENGTH, 5);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 2, AG_WINDOW_HSPEED, 0);
set_window_value(49, 2, AG_WINDOW_VSPEED, 25);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(49, 3, AG_WINDOW_LENGTH, 6);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, asset_get("sfx_sand_yell"));
set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 3, AG_WINDOW_HSPEED, 0);
set_window_value(49, 3, AG_WINDOW_VSPEED, 25);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 4, AG_WINDOW_LENGTH, 10);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 4, AG_WINDOW_HSPEED, 0);
set_window_value(49, 4, AG_WINDOW_VSPEED, -10);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(49,1);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 3);
set_hitbox_value(49, 1, HG_LIFETIME, 6);
set_hitbox_value(49, 1, HG_HITBOX_Y, -13);
set_hitbox_value(49, 1, HG_WIDTH, 100);
set_hitbox_value(49, 1, HG_HEIGHT, 150);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 30);
set_hitbox_value(49, 1, HG_ANGLE, 270);
set_hitbox_value(49, 1, HG_TECHABLE, 1);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
*/
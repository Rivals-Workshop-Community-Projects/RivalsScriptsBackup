set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sfx_ssbu_bouncing_fish);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);

// landing lag
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 6, AG_MUNO_WINDOW_EXCLUDE, 1);

set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_LANDING_LAG, "16");

set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 72);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 40); // 50
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .7); // .6
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, vfx_hit_big);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIGHT_GIMMICK, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_MISC_ADD, light_gimmick_desc);



set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Jump cancel starting on frame " + string(get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) + 1) + " unless parried.");

//This is why you should place these at the BOTTOM of the attack file - if placed at the TOP, it wouldn't be able to reference window length, or etc, because it would not have been defined yet.

//Referencing data like this, instead of just typing the number 4 manually, is good because if you patch things, it'll update the description automatically.
//Eg if I made DSpecial's startup 1 frame faster, the jump-cancel description would change to reflect the new speed.
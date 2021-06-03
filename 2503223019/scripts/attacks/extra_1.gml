set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("ledgegrab"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("ledgegrab"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("ledgegrab"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, -30);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED, 6);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED, 0);

set_num_hitboxes(AT_EXTRA_1, 1);

/*
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_TECHABLE, 1);
*/

set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_MISC_ADD, "Jump cancel starting on frame " + string(get_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH) + 1) + " unless parried.");

//This is why you should place these at the BOTTOM of the attack file - if placed at the TOP, it wouldn't be able to reference window length, or etc, because it would not have been defined yet.

//Referencing data like this, instead of just typing the number 4 manually, is good because if you patch things, it'll update the description automatically.
//Eg if I made DSpecial's startup 1 frame faster, the jump-cancel description would change to reflect the new speed.
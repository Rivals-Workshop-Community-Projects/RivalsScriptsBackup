set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_COOLDOWN, 45);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 20);

set_num_hitboxes(AT_DSPECIAL, 3);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 76);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6); // 10
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5); // 3
//set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 96);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 5); // 10
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6); // 3
//set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 45);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 5); // 10
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 6); // 3
//set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 45);


set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("blanklol"));
//set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 2);
//set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 14);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 76);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 76);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 16);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 6); // 10
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 5); // 3
//set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);


//set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 1);
//set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Jump cancel starting on frame " + string(get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) + 1) + " unless parried.");

//This is why you should place these at the BOTTOM of the attack file - if placed at the TOP, it wouldn't be able to reference window length, or etc, because it would not have been defined yet.

//Referencing data like this, instead of just typing the number 4 manually, is good because if you patch things, it'll update the description automatically.
//Eg if I made DSpecial's startup 1 frame faster, the jump-cancel description would change to reflect the new speed.
set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("sfx_suit_up"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_DSPECIAL_2, 0);


set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 140);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 16);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .5);
/*set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 20);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_TECHABLE, 1);*/


set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
/*set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 140);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, .5);*/

//This is why you should place these at the BOTTOM of the attack file - if placed at the TOP, it wouldn't be able to reference window length, or etc, because it would not have been defined yet.

//Referencing data like this, instead of just typing the number 4 manually, is good because if you patch things, it'll update the description automatically.
//Eg if I made DSpecial's startup 1 frame faster, the jump-cancel description would change to reflect the new speed.
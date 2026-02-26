set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("pizzahead_nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("pizzahead_nspecial_air"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("pizzahead_nspecial_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("pizzahead_nspecial_air_hurt"));

//Charge
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 5);

//Postcharge
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//Active
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//Endlag
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_NSPECIAL_2, 10);

//Example leg hitbox, update this AND the hitbox in attack_update.gml
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 65);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 15);

//Final foot hitbox.
set_hitbox_value(AT_NSPECIAL_2, 20, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_HEIGHT, 38);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_ANGLE, 65);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_2, 20, HG_VISUAL_EFFECT, HFX_GEN_SWEET);
set_hitbox_value(AT_NSPECIAL_2, 20, HG_VISUAL_EFFECT_Y_OFFSET, 15);
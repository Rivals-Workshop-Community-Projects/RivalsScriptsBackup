set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 4);
//set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_spew_end"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 4);
//sfx startup
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);//10
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_mol_huge_explode"));
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 3);

//active
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, .8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12 );
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 10);
//air recovery
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
//ground attack
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_DSPECIAL_AIR, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_MUNO_HITBOX_NAME, "Clean");
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 13);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 144 );
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_MUNO_HITBOX_MISC_ADD, "Applies smoke debuff");

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_MUNO_HITBOX_NAME, "Late");
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 13);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 144 );
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_MUNO_HITBOX_MISC_ADD, "Applies smoke debuff");

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_MUNO_HITBOX_NAME, "Landing");
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 129);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 144 );
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_MUNO_HITBOX_MISC_ADD, "Applies smoke debuff");



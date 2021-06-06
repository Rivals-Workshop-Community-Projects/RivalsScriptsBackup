set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_blink_dash"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_sand_screech"));


set_num_hitboxes(AT_USPECIAL, 3);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 100);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 301)
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_orca_crunch"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("utilttrans"));




//set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Flight loop lasts up to " + string(get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) * 11) + " frames. Canceling endlag lasts " + string(get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH)) + " frames. Duration measured by immediately performing the launcher attack. Launcher active frames measured from point when button is pressed. Endlag measured after launcher hit.");
//set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_ENDLAG, string(get_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH)));
//set_hitbox_value(AT_USPECIAL, 5, HG_MUNO_HITBOX_ACTIVE, "4-13");
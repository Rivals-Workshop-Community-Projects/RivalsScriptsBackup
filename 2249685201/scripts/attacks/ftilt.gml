set_attack_value(AT_FTILT, AG_CATEGORY, 0);
//set_attack_value(AT_FTILT, AG_SPRITE, asset_get("goat_ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FTILT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FTILT, AG_OFF_LEDGE, 0);
//set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, asset_get("goat_ftilt_hurt"));



set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip1"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 11);
set_window_value(AT_FTILT, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CANCEL_FRAME, 4);


set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FTILT, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip2"));
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX_FRAME, 0);




set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 5);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FTILT, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FTILT, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 11);



var temp_attack = AT_FTILT;
var temp_num = 1;

set_num_hitboxes(temp_attack, 2);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 32);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -42);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 96);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 66);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 4);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 6);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 70);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 21);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, 0);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 5);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 12);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 26);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -40);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 0);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 0);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 4);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 85);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 21);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(temp_attack, temp_num, HG_FORCE_FLINCH, 3);



set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("goat_ftilt_proj"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(temp_attack, temp_num, 41, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 12);

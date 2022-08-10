if (!gb_alt && !gold_alt){
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
} else if (gb_alt && !gold_alt){
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_ea"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_ea"));
} else if (!gb_alt && gold_alt){
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_gold"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_gold"));
}
set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));//troll
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 69420);

//Charge
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 24-(8*additionalNspecChargeRune));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Release
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sfx_star_allies_clean_pitch_swipe);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 2);

//Active
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);

//Endlag
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_NSPECIAL, 5);

//Main
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 360);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 42+(22*nspecialProjDropletRune));
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 42+(22*nspecialProjDropletRune));
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8+(4*nspecialProjDropletRune));
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 1 * spr_dir);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("water_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 5.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 150);
//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, water_proj_land_vfx);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 161);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 421);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));

var smallWaterProjVFX = 9;
//Small 1
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 360);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 28);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -3);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("water_proj_small"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 150);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, smallWaterProjVFX);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));

//small 2
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 360);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 28);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 28);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -3);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("water_proj_small"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 150);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, smallWaterProjVFX);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));

//small 3
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 360);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 28);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 28);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -3);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("water_proj_small"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 150);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, smallWaterProjVFX);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));

//ignore the spill
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -13);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 122);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 35);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_EFFECT, 421);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
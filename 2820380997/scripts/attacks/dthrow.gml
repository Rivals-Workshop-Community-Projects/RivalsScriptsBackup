var attack = AT_DTHROW; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("dthrow")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("dthrow_behind_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 5);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "If Clone is spawned, it will assist");//AG_MUNO_ATTACK_MISC_ADD

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0 / Grab Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_abs")); //  or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num++;

// Window #2 / Frame(s) # 1-3 / Swing on Opponent
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num++;

// Window #3 / Frame(s) # 4-5 / Jump On Opponent
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START,4);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear")); //  or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num++;

// Window #4 / Frame(s) # 6-8 / Shock Window
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num++;

// Window #5 / Frame(s) # 9-11 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, -3);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 10); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

var x_offset_temp = 0;
var y_offset_temp = 10;

// #1 Start Up hitbox
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 80);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 75);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 303); //303 - basic small directional
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, x_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, y_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_ice_uspecial_start"));
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
    set_attack_value(attack, 81, "Start");//AG_MUNO_ATTACK_NAME
    
hitbox_num++;

// #2-5 Multi Hits
for(var hitbox_num = 2; hitbox_num < 6; hitbox_num++){
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, (hitbox_num - 1) * 3);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 80);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 75);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 3);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_dthrow_fire); // 303 - basic small directional
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, x_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, y_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
    set_attack_value(attack, 81, "Burn " + string(hitbox_num));//AG_MUNO_ATTACK_NAME
}

// #6 Final Hitbox
window_for_hitbox = 5; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 80);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 75);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 3);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 110); // Clarien Angle
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .25);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 6);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_dthrow_fire); // 157 - lightning extra large
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, x_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, y_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITSTUN_MULTIPLIER, 1.2); // Mirror Clarien Grab
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_large);
    set_hitbox_value(attack, hitbox_num, 81, "Finisher");//HG_MUNO_HITBOX_NAME
hitbox_num++;

// #7 Clone hitbox 1 Start Up
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 16);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 80);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 75);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_dthrow_fire); //1   - no visual effect
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, x_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, y_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_ice_uspecial_start"));
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    //proj
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_VSPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GRAVITY, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_AIR_FRICTION, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1); //1 = Goes through Walls
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1); //1 = Goes through Ground
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); //1 = Goes through enemies
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
    set_hitbox_value(attack, hitbox_num, 80, 1);//HG_MUNO_HITBOX_EXCLUDE
hitbox_num++;

// #8 Clone 2 Multi Hit 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 80);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 75);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 3);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_dthrow_fire); // 1   - no visual effect
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, x_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, y_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
    //proj
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_VSPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GRAVITY, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_AIR_FRICTION, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1); //1 = Goes through Walls
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1); //1 = Goes through Ground
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); //1 = Goes through enemies
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
    set_hitbox_value(attack, hitbox_num, 80, 1);//HG_MUNO_HITBOX_EXCLUDE
hitbox_num++;

// #9 Clone 3 Final Hit 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 80);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 75);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 3);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 6);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_dthrow_fire); // 1   - no visual effect
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, x_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, y_offset_temp);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    //proj
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_VSPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GRAVITY, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_AIR_FRICTION, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1); //1 = Goes through Walls
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1); //1 = Goes through Ground
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); //1 = Goes through enemies
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITSTUN_MULTIPLIER, 1.2); // Mirror Clarien Grab
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_large);
    set_hitbox_value(attack, hitbox_num, 80, 1);//HG_MUNO_HITBOX_EXCLUDE
    hitbox_num++;
    
    // Hitbox #10 / Window # 2- / Clone Hitbox (MIRRORED FROM FSPECIAL_AIR, THIS HITBOX DATA IS FOR WOODCOCK ONLY)
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 3); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 30);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -34);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 50);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 50);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 6);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .7);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 7);
    set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .7);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_medium);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_HSPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_VSPEED, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GRAVITY, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_AIR_FRICTION, 0);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1); //1 = Goes through Walls
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1); //1 = Goes through Ground
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); //1 = Goes through enemies
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
    set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
    set_hitbox_value(attack, hitbox_num, 81, "Clone Assist");//HG_MUNO_HITBOX_NAME
    hitbox_num++;
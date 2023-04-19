//Section for Attack Properties --------------------------------
set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2); 
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_1"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
//set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_1_hurt"));
//set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, -1);
set_attack_value(AT_NSPECIAL, 87, "Tap the button to get this quicker version that cannot be aimed."); // Misc notes for the attack
//-------------------------------------------------------------

//Window 1 - Drawing the Gun
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("draw")); // TODO
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1); // 0 to set boost type.
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, 1); //

//Window 2 - Firing the Gun
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("jackhammer"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);

//Window 3 - Recoil from the Gun
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 20); //Tune this for timing in recoil.
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0); // 0 to set boost type.
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, -5); //
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0); // 0 to set boost type.
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, -5); //
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("holster"));

//Projectile Hitbox Section ----------------------------------------
set_num_hitboxes(AT_NSPECIAL, 1); //Set two hitboxes

var temp_attack = AT_NSPECIAL;
var current_hitbox_index = 1;
var total_number_hitboxes = 1;

for (current_hitbox_index = 1; current_hitbox_index < total_number_hitboxes + 1; ++current_hitbox_index) {
    
    set_hitbox_value(temp_attack, current_hitbox_index, 81, "Shotgun Proj");//Woodcock name
    set_hitbox_value(temp_attack, current_hitbox_index, 92, "Has damage / kb / hitstun fall off based 
    on distance traveled");//Woodcock misc notes
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_TYPE, 2);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_WINDOW, 0);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_LIFETIME, 15); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_X, 20); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_Y, -40); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_WIDTH, 38); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HEIGHT, 38);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PRIORITY, 2); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_DAMAGE, 12); // decreases over length of projectile in hitbox update
    set_hitbox_value(temp_attack, current_hitbox_index, HG_ANGLE, 45);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_ANGLE_FLIPPER, 6); // 6 = Horizontal knockback sends away from the enemy player
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj")); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_MASK, -1);

    set_hitbox_value(temp_attack, current_hitbox_index, HG_SHAPE, 0)
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_ANIM_SPEED, .40); // How fast it loops through the animation.
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_HSPEED, 10); // Chamged in attack update
    //Added variables
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_ENEMY_BEHAVIOR, 0); // Does not go through enemies
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_IS_TRANSCENDENT, 0); // Can be destroyed
    set_hitbox_value(temp_attack, current_hitbox_index, HG_IGNORES_PROJECTILES, 0); // Destroys projectiles
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_WALL_BEHAVIOR, 0); // 0 = Stops at walls 1 = Goes through walls 2 = Bounces off walls
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_GROUND_BEHAVIOR, 0); // 0 = Stops at walls 1 = Goes through walls 2 = Bounces off walls
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
    //Knockback
    set_hitbox_value(temp_attack, current_hitbox_index, HG_BASE_KNOCKBACK, 8); // Starting Knockback, decreases over length of projectile in hitbox update
    set_hitbox_value(temp_attack, current_hitbox_index, HG_KNOCKBACK_SCALING, .9);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HITSTUN_MULTIPLIER, .5); // This needs to be set for code in hitbox_update to work
    set_hitbox_value(temp_attack, current_hitbox_index, HG_BASE_HITPAUSE, 10);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_DESTROY_EFFECT, hfx_shotgun); //basic small
    set_hitbox_value(temp_attack, current_hitbox_index, HG_EXTENDED_PARRY_STUN, 1);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_VISUAL_EFFECT, hfx_shotgun);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HIT_PARTICLE_NUM, hp_shotgun);
}
//Section for Attack Properties --------------------------------
set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_aim_body"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
//set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_aim_air_body"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, -1);
//set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, -1);
set_attack_value(AT_NSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL_2, 87, "Hold the button to aim. Letting go of the button will shoot or reaching 60f of aiming. Aiming does not charge the shot."); // Misc notes for the attack

//-------------------------------------------------------------
// Section for "windows"
// Note that this has atleast 10 frames of start up from Nspecial_1
//Window 1 - Frames 0 - 3 - Aiming the Gun // Max 6 frames but can be canceled 7 frames in
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 0); // Set at first frame of window
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED, -100);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED, -100);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("draw")); // TODO: replace this
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 1);
//set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, .1);


//Window 2 - Frame 4 - Firing the Gun
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("jackhammer"));
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 2);
//set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Window 3 - Frame 5 - Recoil from the Gun 
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 4); //Tune this for timing in recoil.
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 0);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("holster"));
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Window 4 - Frame 6 - 8 (ignore 9, idle frame) - Endlag
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 20); //Tune this for timing in recoil.
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("holster"));
//set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Projectile Hitbox Section ----------------------------------------
set_num_hitboxes(AT_NSPECIAL_2, 1); //Set hitbox

var temp_attack = AT_NSPECIAL_2;
var current_hitbox_index = 1;
var total_number_hitboxes = 1;

for (current_hitbox_index = 1; current_hitbox_index < total_number_hitboxes + 1; current_hitbox_index++) {

    set_hitbox_value(temp_attack, current_hitbox_index, 81, "Shotgun Proj");//Woodcock name
    set_hitbox_value(temp_attack, current_hitbox_index, 92, "Has damage / kb / hitstun fall off based 
    on distance traveled");//Woodcock misc notes
    
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_TYPE, 2);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_WINDOW, 0);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_LIFETIME, 15); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_X, 50); // Chamged in attack update
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HITBOX_Y, -50); // Chamged in attack update
    set_hitbox_value(temp_attack, current_hitbox_index, HG_WIDTH, 38); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HEIGHT, 38); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PRIORITY, 2); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_DAMAGE, 12); // decreases over length of projectile in hitbox update
    set_hitbox_value(temp_attack, current_hitbox_index, HG_ANGLE, 45);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj")); 
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_MASK, -1);

    set_hitbox_value(temp_attack, current_hitbox_index, HG_SHAPE, 0)
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_ANIM_SPEED, .40); // How fast it loops through the animation.
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_HSPEED, 0); // Chamged in attack update
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
    set_hitbox_value(temp_attack, current_hitbox_index, HG_PROJECTILE_DESTROY_EFFECT, hfx_shotgun); //basic small directional-
    set_hitbox_value(temp_attack, current_hitbox_index, HG_EXTENDED_PARRY_STUN, 1);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_VISUAL_EFFECT, hfx_shotgun);
    set_hitbox_value(temp_attack, current_hitbox_index, HG_HIT_PARTICLE_NUM, 5);
}
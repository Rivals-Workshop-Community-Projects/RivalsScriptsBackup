//update
user_event(14); 


//Check if a fspecial ball is out
var ABallThereIs = false;

with(asset_get("pHitBox")){
    if(player_id == other.id && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2) && hbox_num == 1){
        ABallThereIs = true;
    }
}

if ABallThereIs{
   	ballOut = true;
}

else { ballOut = false; }

if ballDown > 0 {
	ballDown--;
}


if !(get_player_color( player ) == 10) {
	if (wblastcharge >= 45) {
		var outlineclr = (sin((get_gameplay_time() - wblastcharge) * 0.2) * -50) + 50
		outline_color = [ outlineclr * 2, outlineclr * 0.5, outlineclr * 0.2];
		}
	else 	{
		outline_color = [ 0, 0, 0 ];
	}
}
	
	
if (get_player_color( player ) == 10) {
	if (wblastcharge >= 45) and ((get_gameplay_time() mod 10) > 5) {
	outline_color = [ 255, 194, 182 ];
	}
	else	{	
		outline_color = [197, 27, 0];
	}
}
	

init_shader();

if (0 > wblastcharge) { //Ensure wblastcharge never goes below zero
	wblastcharge = 0;
}

if (wblastcharge > 45) { //Ensure wblastcharge never goes above 55
	wblastcharge = 45;
}


if (get_player_color( player ) == 9) {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb( 255, 0, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 9, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
set_color_profile_slot( 9, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
set_color_profile_slot( 9, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 9, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
set_color_profile_slot( 9, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
set_color_profile_slot( 9, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
}

if !(url == 2014106219) {
	set_state(PS_DEAD);
}

if swallowed { //Kirby ability script starts here
    swallowed = 0
    //Define any assets kirby might need to grab from YOUR CHARACTER
    var ability_spr = sprite_get("kirby");
    var ability_hurt = sprite_get("kirby_hurt")
    var ability_proj = sprite_get("nspecial_proj2");
    with enemykirby {
			set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
			set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
			set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
			set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
			set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
			set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1); //Begin move
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 16);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);

			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 10);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 5);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));
			set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 1);

			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 14);
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);

			set_num_hitboxes(AT_EXTRA_3, 3);

			set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 5);
			set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 38);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 60);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -32);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 35);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 35);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
			set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 45);
			set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 110);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .3);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 6);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .5);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .6);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 5);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, -.1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 109);
			
	}
} //Kirby ability script ends here


if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Cinna"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Alright, Cinna, you can do this!",
    "Is it battle time already...?",
    "Heyo!"]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == CH_ZETTERBURN && diag != "") 
    {
        diag = "Should I call a fireman?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == CH_FORSBURN && diag != "") 
    {
        diag = "(coughing uncontrollably)";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == CH_ETALUS && diag != "") 
    {
        diag = "Beary n-ice to meet you!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "1882960192" && diag != "") 
    {
        diag = "Blu?? But I don't want to fight you...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "2007375819" && diag != "") 
    {
        diag = "Heya, BroBot! To be honest, I don't really wanna beat you up...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
}
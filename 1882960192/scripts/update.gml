//update
user_event(14); 

if !superbluey and !(get_player_color( player ) == 15) { 
	if (wblastcharge >= 45) { 
		var outlineclr = (sin((get_gameplay_time() - wblastcharge) * 0.2) * -50) + 50
		outline_color = [ 0, outlineclr * 1.05, outlineclr * 2];
		}
	else	{	
		outline_color = [ 0, 0, 0 ];
	}
}

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

if (get_player_color( player ) == 15) {
	if (wblastcharge >= 45) and ((get_gameplay_time() mod 10) > 5) {
	outline_color = [ 168, 224, 248 ];
	}
	else	{	
		outline_color = [32, 24, 136];
	}
}

init_shader();

if (wblastcharge > 45) { //Ensure wblastcharge never goes above 55
	wblastcharge = 45;
}

if (0 > wblastcharge) { //Ensure wblastcharge never goes below zero
	wblastcharge = 0;
}
if !(url == 1882960192) {
	set_state(PS_DEAD);
}



if swallowed { //Kirby ability script starts here
    swallowed = 0;
    //Define any assets kirby might need to grab from YOUR CHARACTER
    var ability_spr = sprite_get("kirby");
    var ability_hurt = sprite_get("kirby_hurt")
    var ability_proj = sprite_get("fspecial_proj");
	var ability_icon = sprite_get("kirbyicon");
    with enemykirby {
		newicon = ability_icon;
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_shop_move"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 13);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));

		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, asset_get("sfx_metal_hit_strong"));
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 30);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 10);

		set_num_hitboxes(AT_EXTRA_3, 2);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 80);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 48);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 38);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 38);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 48);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_EXTRA_3, 1, HG_TECHABLE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 2.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, .01);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, -0.05);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .75);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 153);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);

		set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 45);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 50);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 50);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, 10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	}
} //Kirby ability script ends here

///runes thing
if has_rune("G") { //Rune G: Charging NSpecial boosts stats.
	if wblastcharge >= 45 {
	walk_anim_speed = .31;
	dash_anim_speed = .5;
	
	walk_speed = 5;
	walk_accel = 0.4;		
	initial_dash_speed = 8;
	dash_speed = 8;
	
	air_max_speed = 6;
	jump_speed = 11.9;
	djump_speed = 11;
	max_jump_hsp = 7.5;
} else { //reset
		walk_anim_speed = .21;
		dash_anim_speed = .35;
		
		walk_speed = 4;
		walk_accel = 0.3;		
		initial_dash_speed = 7.5;
		dash_speed = 6.5;
		
		air_max_speed = 5;
		jump_speed = 10.9;
		djump_speed = 10;
		max_jump_hsp = 6;
	}
}

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Bluey"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Another day, another opponent. Let's do it!",
    "Heyo.",
    "(I might actually just go home right now.)"]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == CH_ZETTERBURN && diag != "") 
    {
        diag = "Uh... Hey man, your hair's on fire.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == CH_FORSBURN && diag != "") 
    {
        diag = "I sincerely hope your lungs are okay.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == CH_CLAIREN && diag != "") 
    {
        diag = "That's a pretty cool sword.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == CH_MAYPUL && diag != "") 
    {
        diag = "...What animal ARE you even?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "2014106219" && diag != "") 
    {
        diag = "Um...hi, Cinna?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "2007375819" && diag != "") 
    {
        diag = "Well...this is kind of awkward. Eh, BBot?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "2089998666" && diag != "") 
    {
        diag = "Hey, it's been a while, Yoshi!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
}
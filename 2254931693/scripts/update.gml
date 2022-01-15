//update

	muno_event_type = 1;
	user_event(14);



with (asset_get("pHitBox")) //references all hitbox objects
{
	//checks if the hitbox is a melee one that we own
	if (player_id == other and attack == 39)
	{
		mask_index = other.frog_hb_sprite_1; // changes the hitbox sprite
	}
}


if (state_cat = SC_HITSTUN){
	grabbed_player_damage = 0;
}

if (detached_cooldown > 0){
	detached_cooldown = detached_cooldown - 1;
}

if (frog_exists = 1){
	if (frog.spr_dir = 1){
	set_hitbox_value(39, 1, HG_WIDTH, 190);		
	}
	
	if (frog.spr_dir = -1){
	set_hitbox_value(39, 1, HG_WIDTH, -190);	
	}	
}

if get_player_color(player) == 7 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
}


if (state = PS_WAVELAND){
    sound_stop(air_dodge_sound);
}

if (state = PS_PRATFALL && attack == AT_FSPECIAL){
	if (hitstop == 0 && hitpause == 0){
	hsp = -3 * spr_dir; 
		if (state_timer = 1){
		vsp = -9;
	}
	if (state_timer > 1){	
	vsp = vsp + 0.35;
	}
	}
	
}



if (state = PS_IDLE){
	frog_movetimer = 0;
}



if (get_gameplay_time() mod 5 == 0){
tvtrail_sprite = sprite_index;
tvtrail_index = image_index;
tvtrail_x = x;
tvtrail_y = y;
tvtrail_opacity = 1;
}

if (get_gameplay_time() mod 10 == 0){
tvtrail2_sprite = sprite_index;
tvtrail2_index = image_index;
tvtrail2_x = x;
tvtrail2_y = y;
tvtrail2_opacity = 1;
}

tvtrail_opacity = tvtrail_opacity - 0.1;
tvtrail2_opacity = tvtrail2_opacity - 0.075;



if(state = PS_DASH_TURN && state_timer = 0){
    sound_play(sound_get("dashturnskid"))
}

if (frog_exists = 1 && frog.state != PS_IDLE){
	if (detached_cooldown = 0){
    move_cooldown[AT_NSPECIAL] = 9999;
    move_cooldown[AT_NSPECIAL_2] = 9999; 
	}
    move_cooldown[AT_DSPECIAL] = 9999;
    move_cooldown[AT_DSPECIAL_2] = 9999;
    move_cooldown[48] = 9999;    
}


if (frog_exists = 1 && frog.state = PS_IDLE){
	if (detached_cooldown = 0){
    move_cooldown[AT_NSPECIAL] = 0;
    move_cooldown[AT_NSPECIAL_2] = 0;
	}
    move_cooldown[AT_DSPECIAL] = 0;
    move_cooldown[AT_DSPECIAL_2] = 0;
    move_cooldown[48] = 0;        
}

if (detached_cooldown > 0 && frog_exists = 1){
    move_cooldown[AT_NSPECIAL] = 9999;
    move_cooldown[AT_NSPECIAL_2] = 9999; 	
}




if (frog_exists = 0 && frog_deathtimer > -1){
move_cooldown[AT_NSPECIAL] = 9999;
move_cooldown[AT_DSPECIAL] = 9999;
frog_deathtimer = frog_deathtimer - 1;
}


if (frog_deathtimer = -1 && frog_exists = 0){
    move_cooldown[AT_NSPECIAL] = 0;
    move_cooldown[AT_DSPECIAL] = 0;
}

if (frog_deathtimer = 1){
    sound_play(sound_get("bonby_frog_recharge"));
}

if (free = 0 && move_cooldown[AT_FSPECIAL] > 42){
	move_cooldown[AT_FSPECIAL] = 42;
}


with oPlayer{
    if url != other.url{
        if url == 2310551263{
            other.family = 1
        }
    }
}

if (has_rune("G")){

set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("funnyustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("funnyustrong_hurt"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -102);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 45);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 196);

}
if (has_rune("L")){
	
	
	
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("bonby_upspecial_rise_rune"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("bonby_upspecial_end_rune"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 19);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, -0.05);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 2);



set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, sound_get("bonby_upspecial_rise_rune"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, sound_get("bonby_upspecial_end_rune"));
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 21);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 106);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 106);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 136);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 136);
set_hitbox_value(AT_USPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4);

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 4);

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 98);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 98);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 196);


set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 106);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 106);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WIDTH, 150);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HEIGHT, 150);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_LIFETIME, 4);

set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_LIFETIME, 4);

set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL_GROUND, 5, HG_LIFETIME, 4);

set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_WIDTH, 98);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HEIGHT, 98);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_GROUND, 6, HG_VISUAL_EFFECT, 196);

}




//character/stage support

//dialogue buddy

var url_wow = [CH_RANNO, 2546990424, 2201608216]
var url_shocked = [2497580275, 2396817161, 1962084547]
var url_confused = [CH_SYLVANOS, 2217843818, 2520247938]

if(variable_instance_exists(id,"diag"))
{
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "...",
    "...",
    "..."]

//  Specific Character Interactions

//  Regular dialogue

	//"wow" expression
    if(array_find_index(url_wow, otherUrl) != -1 && diag != "") //Change the url into a specific character's
    {
        diag = "...!";
        diag_index = 1; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    
	//"shocked" expression
    if(array_find_index(url_shocked, otherUrl) != -1 && diag != "") //Change the url into a specific character's
    {
        diag = "...!?";
        diag_index = 2; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    
	//"confused" expression    
    if(array_find_index(url_confused, otherUrl) != -1 && diag != "") //Change the url into a specific character's
    {
        diag = "...?";
        diag_index = 3; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
 
	//mirror match   
    if(otherUrl == url && diag != "") //Change the url into a specific character's
    {
        diag = "...!?";
        diag_index = 4; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }          
          
           
    
}


user_event(14);




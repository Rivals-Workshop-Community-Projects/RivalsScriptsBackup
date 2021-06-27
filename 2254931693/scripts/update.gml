//update

with (asset_get("pHitBox")) //references all hitbox objects
{
	//checks if the hitbox is a melee one that we own
	if (player_id == other and attack == 39)
	{
		mask_index = other.frog_hb_sprite_1; // changes the hitbox sprite
	}
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

if (state = PS_HITSTUN || state = PS_HITSTUN_LAND){
    fspecial_charge = 0;
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack == AT_FSPECIAL && window = 2){

can_jump = true;
    can_wall_jump = true;

if (fspecial_charge = 4){
    charge1SFX = sound_play(sound_get("bonby_fspecial_charge1"))
}

if (fspecial_charge > 4){
   can_move = false;
   hsp = hsp / 2;
       vsp = vsp / 1.5;    

    
}

if (fspecial_charge = 45){
    sound_play(sound_get("bonby_fspecial_chargetier1"))
    chargelongSFX = sound_play( sound_get("bonby_fspecial_chargelong"));
}

if (fspecial_charge = 360){
    sound_play(sound_get("bonby_fspecial_chargetier2"))
}

if (fspecial_charge = 720){
    sound_play(sound_get("bonby_fspecial_chargetier3"))
}

if (fspecial_charge = 1260){
    sound_play(sound_get("bonby_fspecial_chargetier4"))
}

if (fspecial_charge = 1800){
    sound_play(sound_get("bonby_fspecial_chargetier5"))
}

if (fspecial_charge > 720){
    shake_camera(1, 1);
}

if (fspecial_charge > 1260){
    shake_camera(2, 2);
}

if (fspecial_charge > 1800){
    shake_camera(4, 4);
}

if (fspecial_charge = 1860){
    window = 3;
    window_timer = 0;
}



}

if (state = PS_FIRST_JUMP || state = PS_WALL_JUMP || state = PS_DOUBLE_JUMP){
    if (fspecial_charge > 3){
    sound_stop(charge1SFX);
    }
    if (fspecial_charge > 44){
    sound_stop(chargelongSFX)
    }    
    fspecial_charge = 0;
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack == AT_FSPECIAL && window = 3 && window_timer = 2){

    if (fspecial_charge > 3){
sound_stop(charge1SFX);
}

    if (fspecial_charge > 44){
sound_stop(chargelongSFX);
}


}



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




with oPlayer{
    if url != other.url{
        if url == 2310551263{
            other.family = 1
        }
    }
}

if (family = 1){
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("family"));
}




//character/stage support


user_event(14);

user_event(6);



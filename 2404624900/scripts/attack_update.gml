//DStrong Fall Through


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Dash Attack Aerial Cancel
if (attack == AT_DATTACK && free){
    set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, -1);
}

//Taunt Loop
if (attack == AT_TAUNT && window_timer == 52 && taunt_down){
	window_timer = 16;
}

//Nair Hold Loop
if (attack == AT_NAIR && attack_down){
    set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 9);
}
if (attack == AT_NAIR && !attack_down){
    set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
}

//DStrong Visual
if (attack == AT_DSTRONG && window == 5 && window_timer == 1){
	shake_camera( 6, 4 );    
    if (!hitpause){
    	spawn_hit_fx( x, y-24, 154);	
    }
}


//Strong Charge SFX Stop
if (strong_charge > 1 && strong_charge < 59 && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG)){
//	strong_charge -= .5;
	charge_cont++;
}

if ((attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && window > 1){
	sound_stop( sound_get( "essence_charge" ) );
	strong_max = false;
	charge_cont = 0;
}


{
if (attack == AT_NSPECIAL && window == 1){
	runeM_hit = false;	
	set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
}

	
if (attack == AT_NSPECIAL && (window == 3 || window == 4)){
	if (clone_alive == false){
		shadow_clone = instance_create(x,y,"obj_article1");
		shadow_clone.state = 0;
		window = 5;
	}
    if (clone_alive == true){
    	if (x>shadow_clone.x){
    		shadow_clone.x+=6
    	}
    	if (x<shadow_clone.x){
    		shadow_clone.x-=6
    	}
    	if (x=shadow_clone.x){
    		shadow_clone.x = x;
    	}
    	if (y>shadow_clone.y){
    		shadow_clone.y+=6
    	}
    	if (y<shadow_clone.y){
    		shadow_clone.y-=6
    	}
    	if (y=shadow_clone.y){
    		shadow_clone.y = y;
    	}
    	if (!special_down){
    		window = 5;
    	}
		shadow_clone.spr_dir = spr_dir;
		shadow_clone.sprite_index = sprite_get("dash_clone");
	}
    
}


}

//Forward Special - Weapon Throw
if (attack == AT_FSPECIAL && window <= 3){
	runeG_hit = false;
	clone_proj = false;
	if (special_down && (window == 1 && window_timer > 5)){
		proj_tap = 1;
	}
	if (!special_down && (window == 1 && window_timer > 5)){
		proj_tap = 0;
	}
    if (proj_tap == 0){
    	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("fspecial1"));
    	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 6);
            set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 0);
        if (joy_pad_idle || right_down || left_down){
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 60);
            set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
        }
        if (up_down){
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 60);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
        }
        if (down_down){
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 60);
        }
    }
    if (proj_tap == 1){
    	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("fspecial2"));
    	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
        if (joy_pad_idle || right_down || left_down){
            set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 120);
            set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 0);
        }
        if (up_down){
            set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 120);
            set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 0);
        }
        if (down_down){
            set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 120);
        }
    }
    move_cooldown[AT_FSPECIAL] = 60; 
}

//Up Special Izuna Drop
{

//if (attack == AT_USPECIAL_2 && clone_alive = false){
//	clone_izuna = false;
//	attack = AT_USPECIAL;
//}	

if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if ((window == 2 || window == 4 || window == 5) && grabbedid != noone){
//    	set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 1);
//    	set_window_value(AT_USPECIAL, 3, AG_WINDOW_INVINCIBILITY, 1);
	grabbedid.ungrab = 0;
	    window_timer = 1; //DELETE THIS LINE TO LIMIT HOW LONG THE GRAB IS TO THE WINDOW LENGTH
       // grabbedid.invincible = true; //DELETE THIS LINE TO MAKE THE GRABBED PLAYER HITTABLE
    	grabbedid.visible = true;
        grabbedid.x = x + spr_dir * 10; //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        if (runeF || has_rune("F")){
        	grabbedid.y = y + 20; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        }
        else{
        	grabbedid.y = y - 20; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        }
        
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        grabbedid.wrap_time = 6000;
        grabbedid.state = PS_WRAPPED;
        if((!free && window = 5) || state == PS_DEAD || state == PS_RESPAWN || state == PS_WALL_JUMP){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
        grabbedid.visible = true;
            grabbedid.state = PS_TUMBLE;
            grabbedid.hitstop = 10;
            grabbedid.x = x;
            grabbedid.y = y;
            grabbedid = noone;
        }
    }
}

if (attack == AT_USPECIAL && window == 1 && window_timer == 5){
    sound_play( asset_get( "sfx_clairen_fspecial_dash" ) );
    
}

if (attack == AT_USPECIAL && window == 3 && izuna == 0){
    window = 6;
    prat_land_time = 20;
//    set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 0);
//    set_window_value(AT_USPECIAL, 3, AG_WINDOW_INVINCIBILITY, 0);
}

if (attack == AT_USPECIAL && izuna == 1){
    window = 4;
    sound_play( asset_get( "sfx_bird_sidespecial" ) );
    
}

if (attack == AT_USPECIAL && izuna > 15){
    window = 5;
    izuna = 0;
}

if (attack == AT_USPECIAL && window == 5 && (vsp == 2.85 || vsp == 2.95)){
	sound_play( sound_get( "izuna_fall" ) );
}



}

//Down Special - Blade Counter
{
if (attack == AT_DSPECIAL && window == 3 && counter == false){
	super_armor = false;
	window = 5;
}

if (attack == AT_DSPECIAL && (window == 2  || window == 3) && counter == true){
	window_timer = 1;
	window = 4;
	strong_max = true;
	sound_play(sound_get("taunt"));
	move_cooldown[AT_NSPECIAL] = 0;
	create_hitbox( AT_DSPECIAL, 1, x, y-20);
	spawn_hit_fx( x, y-20, 110);
}

if (attack == AT_DSPECIAL && window == 1){
	counter = false
}

if ((attack == AT_DSPECIAL) && (window == 2 || window == 3) && (clone_alive == false || runeE || has_rune("E"))){
	super_armor = true;
}
else {
	super_armor = false;
}

if ((attack == AT_DSPECIAL) && (window == 2 || window == 3) && clone_alive == true){
	clone_counter = true;
}
else {
	clone_counter = false;
}

if (attack == AT_DSPECIAL && (runeM || has_rune("M"))){
	runeM_hit = true;
}

}

if (attack == AT_DATTACK && window == 4 && free){
	set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 1);
	can_fast_fall = false;
}

if ((attack == AT_DATTACK || attack == AT_DSPECIAL) && free){
	can_fast_fall = false;
}

// Aerial Moves Wall Jump
if ((attack == AT_USPECIAL) || (attack == AT_DAIR)){
        can_wall_jump = true;
    }

if (attack == AT_DAIR && window == 1){
	if (spr_dir == 1 && left_down){
		spr_dir = -1
	}
	if (spr_dir == -1 && right_down){
		spr_dir = 1
	}
}

if (clone_alive == true){
	if (attack == AT_JAB){
		shadow_clone.state = 1;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_FTILT){
		shadow_clone.state = 2;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_DTILT){
		shadow_clone.state = 3;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_UTILT){
		shadow_clone.state = 4;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_DATTACK){
		shadow_clone.state = 5;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_FSTRONG){
		shadow_clone.state = 6;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_DSTRONG){
		shadow_clone.state = 7;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_USTRONG){
		shadow_clone.state = 8;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_NAIR){
		shadow_clone.state = 9;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_FAIR){
		shadow_clone.state = 10;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_BAIR){
		shadow_clone.state = 11;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_UAIR){
		shadow_clone.state = 12;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_DAIR){
		shadow_clone.state = 13;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
	if (attack == AT_TAUNT){
		shadow_clone.state = 14;
		if (state_timer == 1){
			shadow_clone.state_timer = 0;
		} 
	}
}


if ((has_rune("D") && attack == AT_USPECIAL && window < 4) 
|| (has_rune("I") && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && (window == 1)) ||
((attack == AT_DSPECIAL) && (window == 2) && (clone_alive == false || runeE || has_rune("E")))){
	super_armor = true;
}
else {
	super_armor = false;
}



if (attack == AT_USPECIAL && window == 5 && !free){
	attack = AT_NSPECIAL;
	set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 18);
	window = 5;
	hsp = -4*spr_dir;
	vsp = -6;
	izuna = 0;
//	set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 0);
//    set_window_value(AT_USPECIAL, 3, AG_WINDOW_INVINCIBILITY, 0);
	hit_player_obj.hitstop = 10;
	create_hitbox( AT_NSPECIAL, 1, x, y - 40 );
	move_cooldown[AT_USPECIAL] = 60;
	

}




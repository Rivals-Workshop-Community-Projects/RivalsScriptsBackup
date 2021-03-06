// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_DAIR){
	trigger_b_reverse();
}

//Article Stuff
if ((attack==AT_DSPECIAL_2||
	attack==AT_DSPECIAL)&&
	window==1&&window_timer==1&&!hitpause){
	with (asset_get("obj_article1")){
		if (player_id == other.id && state == 1){
			state = 3;
			state_timer = 0;
        }
    }
    	with (asset_get("obj_article2")){
		if (player_id == other.id && state == 1){
			state = 3;
			state_timer = 0;
        }
    }
}

//Wacky Uspecial

if(attack == AT_USPECIAL){
	if (window_timer == 1){
        cancel = has_hit && !has_uspecialed;
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, cancel ? 1 : 7)
	}
	has_uspecialed = true
}

// Down Special Swapping

if (attack == AT_DSPECIAL){
	if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL) {
	switch (get_player_color(player)) {
		case(2):
			set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("Ans_Mode"));
			break;
		case(3):
			set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("Shujo_Mode2"));
			break;
		case(4):
			set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("Nep-Dspec-Red"));
			break;
		}
	}
	if (phone_cheats[dspecial_nocd] == 1) {
	move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL_2] = 0;
	RedMode = true;
	}
	if (phone_cheats[dspecial_nocd] == 0) {
	move_cooldown[AT_DSPECIAL] = 190;
	move_cooldown[AT_DSPECIAL_2] = 190;
	RedMode = true;
	}
}

if (attack == AT_DSPECIAL_2){
	if (phone_cheats[dspecial_nocd] == 1) {
	move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL_2] = 0;
	RedMode = false;
	}
	if (phone_cheats[dspecial_nocd] == 0) {
	move_cooldown[AT_DSPECIAL] = 200;
	move_cooldown[AT_DSPECIAL_2] = 200;
	RedMode = false;
	}
}

if (attack == AT_DTILT){
		can_fast_fall = false
}

if (attack == AT_DAIR){
		can_fast_fall = false
		if (!free){
			set_state(PS_PRATLAND)
		}
}

//Dair wall jump
if(attack == AT_DAIR){
        can_wall_jump = true;
    }
/*
//Red Fstrong Stuff
#region Fspecial Main

if (attack == AT_FSTRONG_2){
	
	if(window == 1)
	{
		//down
		if((joy_dir < 350 && joy_dir > 200 && spr_dir == 1) || (joy_dir > 210 && joy_dir < 300 && spr_dir == -1) || down_stick_down)
		{

		}
		//up 
		else if((joy_dir > 30 && joy_dir < 200 && spr_dir == 1) || (joy_dir < 150 && joy_dir > 100 && spr_dir == -1) || up_stick_down)
		{
			set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("red_up_fstrong"));
		}
		else
		{
			set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("red_fstrong"));
		}
	}
}
*/

//Charge Nspecial
if (attack == AT_NSPECIAL && ncancel = false) {
	tempsprdir = spr_dir
    if (window == 2) {
        //check if the player is still holding the special button down
        if (special_down) {
            //do charging things, increment a variable or something idk
            window = 3;
            sound_play( sound_get( "Ladder4" ) );
            attack = AT_FTHROW
            /*
            nbox = 2;
            window_timer = 0;
            */
        } 
        else {
            //skip to the next window
            window = 4;
            window_timer = 0;
        }
    }
}

if (attack == AT_NSPECIAL_2 && ncancel = false) {
	tempsprdir = spr_dir
    if (window == 2) {
        //check if the player is still holding the special button down
        if (special_down) {
            //do charging things, increment a variable or something idk
            window = 3;
            sound_play( sound_get( "Ladder4" ) );
            attack = AT_UTHROW
            /*
            nbox = 2;
            window_timer = 0;
            */
        }
        else {
            //skip to the next window
            window = 4;
            window_timer = 0;
        }
    }
}

/*
if (nbox == 2){
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial2"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 35);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj2"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj2"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 70);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
} else{
	reset_attack_value(AT_NSPECIAL, AG_SPRITE);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME,);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
	reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT);
}
*/
/*
if (attack == AT_NSPECIAL && teleported == true){
	window = 6;
	window_timer = 0;
	teleported = false
			if (!hitpause){
			var w_l = get_window_value(attack, 6, AG_WINDOW_LENGTH);
			hsp = (ease_quadOut( -12, 0, window_timer, 10 ) * spr_dir) + dsp_target.hsp
			}
			if (window_timer>=15){
			iasa_script();
		}
		can_move = true;
		can_fast_fall = true;
}else{
	can_move = false;
	can_fast_fall = false;
}
*/

//Cancel nspecial air
if (attack == AT_NSPECIAL_AIR && !free){
	state = PS_IDLE
}

if (attack == AT_EXTRA_1 && !free){
	state = PS_IDLE
}

//Fspecial Bounce off wall
var _block = asset_get("par_block");
if (attack == AT_FSPECIAL){
	if (window >= 4){
		if (place_meeting(x + 1, y, _block) ||
    	place_meeting(x - 1, y, _block))
    	{
			set_state( PS_IDLE_AIR );
			old_hsp = -5 * spr_dir;
			old_vsp = -11;
			hsp = -5 * spr_dir;
			vsp = -11;
			can_fast_fall = true;
			move_cooldown[AT_FSPECIAL] = 90;
			sound_play( sound_get( "Hit4" ) );
		    spawn_hit_fx( x+8, y-10, blue_new_stab_1 );
		    shake_camera( 3, 4 )
		}
	}
}

if (attack == AT_FSPECIAL_2){
	if (window >= 4){
		if (place_meeting(x + 1, y, _block) ||
    	place_meeting(x - 1, y, _block))
    	{
			set_state( PS_IDLE_AIR );
			old_hsp = -5 * spr_dir;
			old_vsp = -11;
			hsp = -5 * spr_dir;
			vsp = -11;
			can_fast_fall = true;
			move_cooldown[AT_FSPECIAL_2] = 90;
			sound_play( sound_get( "RedHit4" ) );
		    spawn_hit_fx( x+8, y-10, red_new_stab_1 );
		    shake_camera( 3, 4 )
		}
	}
}


//Abyss Runes
if has_rune("L") {
	if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2){
		move_cooldown[AT_FSPECIAL] = 60
		move_cooldown[AT_FSPECIAL_2] = 60
	}
	if (!free){
		move_cooldown[AT_FSPECIAL] = 0
		move_cooldown[AT_FSPECIAL_2] = 0
	}
}

//Final Smash
if (attack == 49)
{
	can_fast_fall = false;
	can_move = false;
    if (window == 1)
    {
        create_hitbox( 49, 1, x + (500 * spr_dir), y - 50 );
    }
    
    if (window == 2)
    {
        create_hitbox( 49, 1, x + (500 * spr_dir), y - 50 );
    }
    
}

//Blue Ustrong Spawns Article
/*
if (attack == AT_USTRONG){
	if (ustrongarticle == false){
		if !was_parried {
			if (window = 1){
				destroy_fx = 1;
				if(spr_dir = 1){
					var blue_ustrongobj = instance_create(x+48, y-152, "obj_article3");
					ustrongarticle = true;
					blue_ustrongobj.ustrongarticlestate = 1;
				}
				if(spr_dir = -1){
					var blue_ustrongobj = instance_create(x-108, y-152, "obj_article3");
					ustrongarticle = true;
					blue_ustrongobj.ustrongarticlestate = 1;
				}
			}
		}
		instance_destroy(); exit;
	}
}
*/

//Blue Recovery Effect
if (attack == AT_USPECIAL){
	if (window == 2){
		if (dotheeffect == true){
		spawn_hit_fx( x+8, y-10, blue_recovery );
		dotheeffect = false
		}
	}
}
if (attack == AT_USPECIAL_2){
	if (window == 2){
		if (dotheeffect == true){
		spawn_hit_fx( x+8, y-10, red_recovery );
		dotheeffect = false
		}
	}
}
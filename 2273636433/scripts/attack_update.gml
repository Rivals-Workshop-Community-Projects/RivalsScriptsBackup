// attack_update
if pill>6 { pill = 1;}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


if attack == AT_USPECIAL{
	can_fast_fall = false;
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
	if (window == 3) {
		shoryuken = 1;
	}
	if grabbedid != noone {													//Debugging - Error Message
		if (grabbedid.state == PS_DEAD || grabbedid.state == PS_RESPAWN ){
			grabbedid.ungrab = 1;			//Drop Grab
			grabbedid = noone;
			dispx=0;
			dispy=16;
		}
		
		if (window == 2){					//Empieza la Grab
			can_move=true;
			if has_hit {can_fast_fall = true;}
			else {can_fast_fall = false;}
			can_wall_jump=false;
			dispx=20;
			dispy=0;

		}

		if (window == 3){					//Continua la Grab
			can_move=true;
			can_fast_fall = false;
			can_wall_jump=false;
			dispx=20;
			dispy=-40;
		}
		if (window == 4){					//Finisher
			//Grabbed coordinates
			dispx=15;
			dispy=-40;
			//Drop Grab
			can_fast_fall = false;
			grabbedid.ungrab = 1;			//Drop Grab
			grabbedid = noone;
		}		
	} else {							//Noone got grabbed
		if state_timer >10{
			can_wall_jump=true;
		}
	}
	if(grabbedid != noone){				//While is grabbed
	    grabbedid.ungrab = 0;			//No lo suelta aun
        grabbedid.x = x + spr_dir * dispx;		//X displacement
        grabbedid.y = y + dispy;					//Y displacement
        grabbedid.spr_dir = -spr_dir;		//Turns Around
        grabbedid.wrap_time = 15;
        grabbedid.state = PS_WRAPPED; 
	}	
	if window == 4 {
		if show_flames && window_timer==1 {
			spawn_hit_fx( x +10*spr_dir, y-64, 3 );	
		}
	}
	if (window == 5) {
		can_move=true;
		if has_hit{
			can_fast_fall = true;
		} else {
			can_fast_fall = false;
		}
		
		can_wall_jump=true;
	}
}

if attack == AT_TAUNT{
	if window_timer == 12{
		if message == 0 && ( get_synced_var(player) == true) {
			message= (current_second+current_hour+current_minute*2)%7 + 1;		//Chooses a message
			switch(message){
				case 1:
					sound_play(sound_get("medic1"));
				break;
				case 2:
					sound_play(sound_get("medic2"));
				break;
				case 3:
					sound_play(sound_get("medic3"));
				break;
				case 4:
					sound_play(sound_get("medic4"));
				break;
				case 5:
					sound_play(sound_get("medic5"));
				break;
				case 6:
					sound_play(sound_get("medic6"));
				break;
				case 7:
					sound_play(sound_get("medic0"));
				break;
			}
			message = 8;
		}
	}


	if window_timer ==36 {
		if !shield_down {pill= pill + 1;}
	}
}

if attack == AT_DAIR && has_hit{
	if(window == 2){
		if vsp >3 {
			vsp = 3;
		}
	}
	//can_fast_fall = false;
}

if attack == AT_NSPECIAL {			//PILL LOGIC
	if window == 2 && window_timer == 1 && !hitpause{
		if !((has_rune("A"))){ pill++; }								//RUNE LOGIC
	}
	
	if window ==2 || window == 3{	
		if !(has_rune("I")){									//RUNE LOGIC
			move_cooldown[AT_NSPECIAL] = 40;
			move_cooldown[AT_TAUNT] = 40;
		}
	}
}


///DOCTOR TORNADO	
if(attack==AT_DSPECIAL){	
	can_fast_fall = false;		
	if (window == 1) {
		counter = 0;
		set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
		set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
	}
	if(window==2)||(window ==3){
		
		if (has_hit){ destroy_hitboxes();}

		if(window_timer==12){ 
			counter=counter+1;
		}
		if counter > 0 	{	set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);}
		if counter >1 { set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 3); set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 6);}
		if(counter>2|| was_parried) && window == 2{ 
			counter=0;
			window=3; 
			window_timer=0;
		}
		if(!was_parried){
			if(special_pressed)&&(!hitpause) {
				vsp=-2.75 -has_rune("L")+ cyclone*3;
			} else if (special_down)&&(!hitpause){
				vsp=-2.25 -has_rune("L") + cyclone*3;			
			}else {
				vsp= vsp + 0.25 + down_hard_pressed;	
				if (vsp >(1+cyclone*3+ down_hard_pressed)) { vsp = 1 + +cyclone*3+ down_hard_pressed;}
			}
		}
	
		if(left_down){hsp-=.525 + !free/8;}
		if(right_down){hsp+=.525+ !free/8;}

		if hsp > (2.5 + !free + has_rune("L")*2){ hsp = 2.5 + !free + has_rune("L")*2;}
		if hsp < (-2.5 - !free - has_rune("L")*2){ hsp = -2.5 - !free - has_rune("L")*2;}

	}

	if window == 4 && window_timer ==1{
		cyclone++;;
	}
	if window == 4{
		can_move = false;
		if vsp >6 {
			vsp = 6;
		}
		if window_timer >7 {
			can_wall_jump = true;
		}
	}
}

if attack == AT_FSTRONG {
	if window== 3 && window_timer == 5 && !shock_hit {
		hit_fx_create(20, 6 );
		spawn_hit_fx( x +72*spr_dir, y-38, 20 );
		sound_play(  asset_get("sfx_absa_dattack"));
	}

}


//STRONG CHARGE SOUND EFFECT

if ((attack == AT_FSTRONG|| attack == AT_DSTRONG || attack == AT_USTRONG) && window == 1) {
	if strong_charge ==1 {
		sound_play(sound_get("strong_charge"));
	}
}


if attack == AT_FSPECIAL {
	if window ==2 {
		if vsp > -5 {
			if window_timer ==1 && free && cape == 0 {
				//vsp = - 4;
				cape = 1;
			}
		}
		if done_reflecting_article==1 {destroy_hitboxes();}
		if vsp >6 {
			vsp = 6;
		}
		
	}
}

//---------------------------------------------ACTUAL REFLECTOR LOGIC - THANKS ARCHY-----------------------------------------
//------------------------------------------------------V6 UPDATE: 03/07-----------------------------------------

//ACTIVE REFLECTOR
if (attack == AT_FSPECIAL && window == 2 && done_reflecting_article == 0 ) {		
		//Interact with oponent hitboxes
		with (asset_get("pHitBox")){					//From the perspective of the hitbox
			if type == 2 && other.player !=  player {		//Not my own projectile / not the same
				if (abs (x -  (other.x + 45*other.spr_dir)) <=52 ) && (abs (y -  (other.y - 34)) <=40 ) && hitstun_factor!= -1 {		//detectiong
					if hit_priority !=  (0) && hit_priority !=  (-1) {			//THE CHEAT
					
						//CHECK IF ARTICLES EXIST IN THE SAME PLACE AS THE HITBOX
						hit_check = noone;
						//article 1
						if hit_check == noone {hit_check = instance_place(x,y,obj_article1);}
						//article 2
						if hit_check == noone {hit_check = instance_place(x,y,obj_article2);}
						//article 3
						if hit_check == noone {hit_check = instance_place(x,y,obj_article3);}
						//article platform
						if hit_check == noone {hit_check = instance_place(x,y,obj_article_platform);}
						//article solid
						if hit_check == noone {hit_check = instance_place(x,y,obj_article_solid);}		

						//Reflect Logic	
						//For the Player
						if other.done_reflecting_hitbox[id%1000] == 0{				//1 reflect per hitbox
							other.invincible = 1;
							other.invince_time = 15;							
							spawn_hit_fx( other.x +45*other.spr_dir, other.y-34, 111 );			//VISUAL EFFECT 
							other.play_sound = 1;
							//was_parried = true;											

							//For the hitbox
							image_angle = 0+(180*(spr_dir+1));				//REFLECTS 
							//Actual Reflect
							damage *= 1.25;
							kb_value *= 1.25;
							other.hitpause = 1;
							other.hitstop = 3;
							other.hitstop_full=3;
							other.old_vsp=other.vsp;
							other.old_hsp=other.hsp;
							can_hit_self = true;
							can_hit[other.player] = false;
							if does_not_reflect == false && hit_check == noone {hitbox_timer =0;}
							other.done_reflecting_hitbox[id%1000] = 1;		//Player gets notified
								

							//Movement
							x = other.x +50*other.spr_dir;
							if abs(hsp) <= 2  {				//Varely any HSP
								hsp = 4*other.spr_dir;
								spr_dir = other.spr_dir;
								if !free && grav != 0 {				
									vsp = -5;
								} else{
									vsp = -abs(vsp);
								}
							}else{
								spr_dir = other.spr_dir;
								hsp =  1.25* abs(hsp) *other.spr_dir;
								old_hsp =  1.25* abs(old_hsp) *other.spr_dir;
							}
							//DITTO INTERACTION - ESPECIFICALLY FOR DR MELEE MARIO DITTO
							if variable_instance_exists(self, "C_knock") {	
							   C_knock += 1;
							   forced = 1;
							   extra_hitpause +=2;
							}
						}
						//Movement For Articles
						if other.done_reflecting_article == 0 {		//1 reflect per article
							if hit_check != noone {							//Reflect Article
								if hit_check.player == player{				//The article is from the same player as the hitbox
									hit_check.hsp = 1.25*abs(hit_check.hsp)*other.spr_dir;	
									hit_check.spr_dir = other.spr_dir;
									hit_check = noone;
									other.done_reflecting_article = 1;										//Player gets notified

								}
							} 
						}
					}
				}
			}
		
    }
	//Complementary to reflect
	if play_sound ==1{
		sound_play(sound_get("mantle"));					//Here comes a sound effect
		play_sound = 0;
	}
}


//-----------------------------------------------------RUNE LOGIC PART 1 ---------------------------------------------

if (has_rune("B") ){
	set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 120);
	set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 120);
}else{
	reset_hitbox_value(AT_NAIR, 6, HG_LIFETIME);
	reset_hitbox_value(AT_NAIR, 5, HG_LIFETIME);
}

if (has_rune("D")){
	set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
	set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .18);
	set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .18);
	set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .18);
	set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 2);
	set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 2);
	set_hitbox_value(AT_UTILT, 3, HG_HITSTUN_MULTIPLIER, 2);
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);
	if attack==AT_UTILT{
		invincible=true
	}
}


if (has_rune("F")){
	set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 1.1);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 3);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -19);
	set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
	
}

if (has_rune("G")){
	if (attack == AT_DATTACK){
		can_jump = true;
		set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
		set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 10);
	}
}

if (has_rune("H")){
	if attack == AT_DSPECIAL{
		if state_timer < 48 {invincible = true;}
	}
}	

if (has_rune("I")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
}

if (has_rune("J")){
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 320);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 320);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 320);
} else {
	reset_hitbox_value(AT_FAIR, 1, HG_ANGLE);
	reset_hitbox_value(AT_FAIR, 2, HG_ANGLE);
	reset_hitbox_value(AT_FAIR, 3, HG_ANGLE);
}

if (has_rune("N")){
	if attack == AT_NSPECIAL {
		if window==2 && window_timer ==1 {
				create_hitbox( AT_NSPECIAL, 1, x +42*spr_dir, y - 50 );
				create_hitbox( AT_NSPECIAL, 1, x +10*spr_dir, y - 30 );
		}
	}
}


if (has_rune("L")){
	if attack == AT_DSPECIAL {
		can_jump = true;
		if window == 2 && window_timer ==12{
			cyclone+=0.1;
		}
		if window == 2{
			if special_down{counter = 1;}
		}
		
	}
}


if (has_rune("O")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);	
	set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 1);
}


if (has_rune ("A")) && (has_rune ("B")) && (has_rune ("C")) && (has_rune ("D")) && (has_rune ("E")) && (has_rune ("F")) && (has_rune ("G")) && (has_rune ("H")) && (has_rune ("I")) && (has_rune ("J")) && (has_rune ("K")) && (has_rune ("L")) && (has_rune ("M")) && (has_rune ("N")) && (has_rune ("O")){

	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 14);
	set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 14);
	set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 14);
	set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 14);
	set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 14);
	
	set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 270);

	set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.2);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 1.2);

	set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.2);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 1.2);

	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
	
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
	
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
	
	set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 40);
	
	set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 1);
	
	if attack == AT_USPECIAL && window==1{
		invincible=1
	}
}


// offset stuff
if (attack == AT_DAIR){
hud_offset = 15;
}

if (attack == AT_FSTRONG){
hud_offset = 15;
}

if (attack == AT_USTRONG){
hud_offset = 25;
}

if (attack == AT_UAIR){
hud_offset = 25;
}


if (attack == AT_UTILT){
hud_offset = 35;
}



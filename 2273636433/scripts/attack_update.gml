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
	}
	if(grabbedid != noone){				//While is grabbed
	    grabbedid.ungrab = 0;			//No lo suelta aun
        grabbedid.x = x + spr_dir * dispx;		//X displacement
        grabbedid.y = y + dispy;					//Y displacement
        grabbedid.spr_dir = -spr_dir;		//Turns Around
        grabbedid.wrap_time = 15;
        grabbedid.state = PS_WRAPPED;
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
		if !((has_rune("A")||phone_cheats[cheat_rng])){ pill++; }								//RUNE LOGIC
	}
	
	if window ==2 || window == 3{	
		if !(has_rune("I")||phone_cheats[cheat_cooldown]){									//RUNE LOGIC
			move_cooldown[AT_NSPECIAL] = 42;
			move_cooldown[AT_TAUNT] = 42;
		}
	}
}


///DOCTOR TORNADO	
if(attack==AT_DSPECIAL){	
	can_fast_fall = 0;	
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
				vsp=-3 -has_rune("L")+ cyclone*3;
			} else if (special_down)&&(!hitpause){
				vsp=-2 -has_rune("L") + cyclone*3;			
			}else {
				vsp= vsp +0.25;	
				if (vsp >(1+cyclone*3)) { vsp = 1 + +cyclone*3;}
			}
		}
	
		if(left_down){hsp-=.625 + !free/8;}
		if(right_down){hsp+=.625+ !free/8;}

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
	if window== 3 && window_timer == 6 && ! has_hit {
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

//---------------------------------------------ACTUAL REFLECTOR LOGIC - THANKS ARCHY-----------------------------------------
//------------------------------------------------------V3 UPDATE: 17/03-----------------------------------------

if attack == AT_FSPECIAL {
	if window ==2 {
		if vsp > -5 {
			if window_timer ==1 && free && cape == 0 {
				//vsp = - 4;
				cape = 1;
			}
		}

	}
	if window ==3 {
		if vsp >6 {
			vsp = 6;
		}
	}
}
//REFLECTOR IS NOT ACTIVE
if attack == AT_FSPECIAL && window == 1 {		//Startup
    gustav = 0;
}
//ACTIVE REFLECTOR
if (attack == AT_FSPECIAL && window == 2 ) {		
    hit_check = noone;
	//So now it checks for players, hitbox or articles

	//BUT DMM has a separate hitbox for players
	//if hit_check == noone {
        //hit_check = instance_place(x+50*spr_dir,y,OPlayer); 
    //}
    if hit_check == noone {
        hit_check = instance_place(x+50*spr_dir,y,pHitBox);
    }
    if hit_check == noone {
        hit_check = instance_place(x+50*spr_dir,y,obj_article1);
    }
    if hit_check == noone {
        hit_check = instance_place(x+50*spr_dir,y,obj_article2);
    }
    if hit_check == noone {
        hit_check = instance_place(x+50*spr_dir,y,obj_article3);
    }
    if hit_check == noone {
        hit_check = instance_place(x+50*spr_dir,y,obj_article_solid);
    }
    if hit_check == noone {
        hit_check = instance_place(x+50*spr_dir,y,obj_article_platform);
    }
    //distance to  object
    if hit_check != noone {
        hit_dist = distance_to_object(hit_check);
    }
    
	//Conditions for Reflector to be active
    if (hit_check != noone  && (hit_check != pHitBox || (hit_check == pHitBox && hit_check.type == 2 )) && gustav != hit_check  && !has_hit_player && hit_check.player != player  && hit_check.type != 1)&& hit_check.hitstun_factor != -1   {

        gustav = hit_check;						//Object
		invincible = 1;
		invince_time = 12;							
		spawn_hit_fx( x +44*spr_dir, y-34, 194 );			//VISUAL EFFECT 
		gustav.was_parried = true;							//MOVED THIS LINE UP TO COVER A COUPLE OF SPECFIC CASES

		//CODE FOR TENRU INTERACTION I GUESS
		if variable_instance_exists(gustav, "reflected") {
           gustav.reflected = true;
        }

		//CODE FOR MATT I GUESS
		if variable_instance_exists(gustav, "UnReflectable") {
           gustav.UnReflectable = false;
        }

		//CODE FOR SEIJA INTERACTION I GUESS
		if variable_instance_exists(gustav, "sided") {

			gustav.sided = -gustav.sided;           
            gustav.cant_be_hit = 20;
            gustav.was_switched = true;
			gustav.hitboxHit = gustav.id;
        }

		//UPDATE: IF the projectile is not static ( or has a really small movement speed) it reflects
		//There is Horizontal movement
		gustav.image_xscale = 0.01;
		if variable_instance_exists(gustav, "sprdir") {
			gustav.hsp = sprdir * abs(gustav.hsp);					
			gustav.sprdir = sprdir;
		} else {
			gustav.hsp = spr_dir * abs(gustav.hsp);			
			gustav.spr_dir = spr_dir;
		}
		//Theres no horizontal movement BUT there is vertical movment
		 if abs(gustav.vsp) > 0.5  && abs(gustav.hsp) <  0.5{					
			if variable_instance_exists(gustav, "sprdir") {				
				gustav.sprdir *= -1;
			} else {				
				gustav.spr_dir *= -1;
			}
		}
		
		//SPEED MULTIPLIER LOGIC
        if gustav.object_index != oPlayer {
			gustav.hitbox_timer = 0;
            gustav.can_hit_self = true;
            gustav.x = x + 60*spr_dir;
            gustav.y = gustav.y;

            gustav.image_angle = 0+(180*(spr_dir+1));				//REFLECTS 
			if abs(gustav.hsp) < 0.5  { gustav.hsp = 4*spr_dir;}	//Speed Giver
			else{gustav.hsp = gustav.hsp* 1.25;}					//Speed multiplier

			if !gustav.free { gustav.vsp = -5;}						//THE VSP THAT IT GIVES GROUNDED PROJECTILES
			else {gustav.vsp *= -1;}						//INVERTS THE SPEED OF NON GROUNDED PROJECTILES
        }

	   //DAMAGE AND KNOCKBACK MODIFIERS
        if variable_instance_exists(gustav, "damage") {
           gustav.damage *= 1.25;
        }
        if variable_instance_exists(gustav, "kb_value") {
            gustav.kb_value *= 1.25;
        }

		//DITTO INTERACTION - ESPECIFICALLY FOR DR MELEE MARIO DITTO
		if variable_instance_exists(gustav, "C_knock") {
		   if variable_instance_exists(gustav, "kb_value") {
				gustav.kb_value *= 1.25;
		   }
           gustav.C_knock += 2;
		   gustav.forced = 1;
        }


		//SOUND TO PLAY
        sound_play(sound_get("mantle"));					//Here comes a sound effect
    }
    if hit_check == noone {
        gustav = 0;
    }
}


//-----------------------------------------------------RUNE LOGIC PART 1 ---------------------------------------------

if (has_rune("B") || phone_cheats[cheat_funny]){
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
}


if (has_rune("F")){
	set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 3);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -15);
	set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
	
}

if (has_rune("G")){
	if (attack == AT_DATTACK){
		can_jump = true;
		set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
		set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 10);
	}
}

if (has_rune("H")|| phone_cheats[cheat_luigi]){
	if attack == AT_DSPECIAL{
		if state_timer < 48 {invincible = true;}
	}
}	

if (has_rune("I")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
}

if (has_rune("J")){
	set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 320);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 320);
	set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 320);
} else {
	reset_hitbox_value(AT_FAIR, 1, HG_ANGLE);
	reset_hitbox_value(AT_FAIR, 3, HG_ANGLE);
	reset_hitbox_value(AT_FAIR, 4, HG_ANGLE);
}

if (has_rune("N")){
	if attack == AT_NSPECIAL {
		if window==2 && window_timer ==1 {
				create_hitbox( AT_NSPECIAL, 1, x +42*spr_dir, y - 50 );
				create_hitbox( AT_NSPECIAL, 1, x +10*spr_dir, y - 30 );
		}
	}
}


if (has_rune("L")|| phone_cheats[cheat_space]){
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


// Morshu bomb stuff
if (attack == AT_FSPECIAL){
	if("MorshuBomb" in self && MorshuBomb && attack == AT_NSPECIAL && hbox_num == 1 && hitlockout <= 0){
	var dist = point_distance(other.x+50*other.spr_dir, other.y-35, x, y); //distance
		if(dist <= 40)
			hitafterhitpause = true;player = other.player;hitlockout = 20;
	        in_hitpause = true;hitstop = 20;hitpausetime = 20;
	        hsp = 12*other.spr_dir;vsp = -5;spr_dir = other.spr_dir;
			//old_hsp = 6*other.spr_dir;old_vsp = -4;spr_dir = other.spr_dir;
			other.hitpause = true;other.hitstop = 20;
		    other.old_hsp = other.hsp;other.old_vsp = other.vsp;
	        spawn_hit_fx(x, y, 304);sound_play(sound_get("mantle"));
	    }	 
}
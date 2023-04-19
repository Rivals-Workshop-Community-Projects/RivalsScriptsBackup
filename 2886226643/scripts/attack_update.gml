//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB){
    move_cooldown[AT_JAB] = 120;
    if (window == 1){
        jab_cancel = false;
    }
    if (jab_cancel){
        can_jump = true;
        can_attack = true;
        can_strong = true;
        can_ustrong = true;
        can_special = true;
        can_shield = true;
    }
}

if (attack == AT_FTILT){
    if (window == 3 && window_timer > 1 && attack_pressed && !instance_exists(sword)){
        window = 4;
        window_timer = 0;
        sound_play(sound_get('ftilt2'));
    }
}

if (attack == AT_DATTACK){
    if (window == 1){
        set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED, -2);
    }
    if (window == 2 && has_hit){
        window = 3;
        window_timer = 0;
    }
    if (window == 3 && window_timer == 9 && has_hit){
        set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED, -8);
    }
}

if (attack == AT_BAIR){
    if (window == 3 && window_timer > 5 && (attack_pressed || attack_down 
    || right_strong_pressed || left_strong_pressed) && !instance_exists(sword)){
        window = 4;
        window_timer = 0;
    }
}

if (attack == AT_DAIR){
    if (!free){
        window = 6;
        hsp *= 0.6;
    }
    if (window == 1 && window_timer > 11){
        if (right_down){
            spr_dir = 1;
        }
        if (left_down){
            spr_dir = -1;
        }
    }
}

if (attack == AT_FSTRONG){
    if (window == 2){
        set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong2"));
        hurtboxID.sprite_index = sprite_get("fstrong2_hurt");
    }
    if (window == 4 && window_timer == 1){
        x += 300*spr_dir;
    }
    if (window == 5 && window_timer >= 6 && free){
        window = 8;
    }
    if (window == 6 && window_timer == 36){
        set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong2"));
        hurtboxID.sprite_index = sprite_get("fstrong3_hurt");
    }
}

if (attack == AT_USTRONG){
    if (window == 1){
        meteor_spawn = false;
        meteor_timer = 0;
        meteor_blew_up = 0;
        spawn_rings = 0;
        meteor_air = false;
    }
    if (window == 2 && window_timer == 3){
        meteor_spawn = true; 
        meteor_x_pos = x + 100 * spr_dir + strong_charge * 4 * spr_dir;
        spawn_hit_fx( x + 30*spr_dir, y-60, meteor_summon);
        sound_play(sound_get("meteordrop"));
        spawn_rings = 1;
    }
}

if (attack == AT_USTRONG_2){
    if (window == 1){
        set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong"));
        hurtboxID.sprite_index = sprite_get("ustrong_hurt");
        meteor_spawn = false;
        meteor_timer = 0;
        meteor_blew_up = 0;
        spawn_rings = 0;
        meteor_air = true;
    }
    if (window == 2 && window_timer == 3){
        spawn_hit_fx( x+15*spr_dir, y-65, 194);
    }
    if (window == 3 && window_timer == 4 && has_hit){
        window = 7;
        window_timer = 0;
        set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong2"));
        hurtboxID.sprite_index = sprite_get("ustrong2_hurt");
    }
    if (window == 4 && window_timer == 2){
        meteor_spawn = true; 
        meteor_x_pos = x + 100 * spr_dir + 30 * 4 * spr_dir;
        meteor_y_pos = y-80;
        spawn_hit_fx( x + 30*spr_dir, y-60, meteor_summon);
        sound_play(sound_get("meteordrop"));
        spawn_rings = 1;
    }
    if (window == 7 && window_timer == 0){
        meteor_spawn = true; 
        meteor_x_pos = x + 100 * spr_dir + 30 * 4 * spr_dir;
        meteor_y_pos = y-50;
        spawn_hit_fx( x + 30*spr_dir, y-60, meteor_summon);
        sound_play(sound_get("meteordrop"));
        spawn_rings = 1;
    }
}

if (attack == AT_NSPECIAL){
    if (window == 1){
        if (special_down){
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_GOTO, 3);
            nspecial_charged = false;
            nspecial_shot = false;
            blackhole_timer = -1;
        }
        else {
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_GOTO, 4);
            nspecial_charged = false;
            nspecial_shot = true;
            blackhole_timer = -1;
        }
    }
    if (window == 3){
        if (!special_down || state_timer == 90){
            if (state_timer == 90){
                nspecial_charged = true;
            }
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_GOTO, 4);
            window = 2;
            window_timer = 2;
            nspecial_shot = true;
        }
    }
    if (window == 2 && window_timer == 2 && nspecial_shot){
        nspecial_was_shot = true;
        if (nspecial_charged){
            nspecial_strong = create_hitbox(AT_NSPECIAL, 3, x+10*spr_dir, y-25);
        }
        else {
            nspecial_weak = create_hitbox(AT_NSPECIAL, 1, x+10*spr_dir, y-25);
        }
    }
}

if (attack == AT_FSPECIAL){
	if (window == 1){
		fspecial_field = false;
		
	}
    if (window == 3 && has_hit){
        window = 5;
        window_timer = 0;
    }
    can_fast_fall = false;
    if (window == 3 && fspecial_field){
    	window = 1;
    	window_timer = 0;
    	attack = AT_FSPECIAL_2;
    }
}

if (attack == AT_FSPECIAL_2){
	if (window == 3 && has_hit){
        window = 5;
        window_timer = 0;
    }
    if (window == 6){
    	x = lerp(x, hit_player_obj.x-20*spr_dir, 0.4);
		y = lerp(y, hit_player_obj.y-15, 0.4);
    }
    if (window == 8){
    	if (window_timer == 1){
    		spr_dir *= -1;
    	}
    	x = lerp(x, hit_player_obj.x-80*spr_dir, 0.4);
		y = lerp(y, hit_player_obj.y+10, 0.4);
    }
    can_fast_fall = false;
    if (window == 6 || window == 8){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, asset_get("empty_sprite"));
	}
	if (window == 7){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("dair"));
	}
	if (window == 9){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("jab_push"));
	}
	if (window == 1){
		set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
	}
}

if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 12){
        uspecial_hit = false;
        sword = instance_create( x, y, "obj_article1");
        sword.state = 2;
        sword.hsp = 5*spr_dir;
        sword.vsp = -15;
    }
}

if (attack == AT_DSPECIAL){
    if (window == 1 && window_timer == 16){
        spawn_hit_fx( x+30*spr_dir, y, 306);
        sword = instance_create( x+30*spr_dir, y, "obj_article1");
        sword.state = 1;
    }  
}
if (attack == AT_DSPECIAL_2){
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 5*dspecial_2_damage);
}

if (attack == AT_SPOTDODGE){
	invincible = true;
	move_cooldown[AT_SPOTDODGE] = 60;
}

//REFLECTOR IS NOT ACTIVE
if (attack == AT_UTILT && window == 1) {		//Startup
    gustav = 0;
}
//ACTIVE REFLECTOR
if (attack == AT_UTILT && window == 2 ) {		
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
		 if abs(gustav.vsp) > 0.5  && abs(gustav.hsp) <=  0.5{					
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


			if abs(gustav.hsp) <= 0.5  {				//Varely any HSP
				gustav.hsp = 4*spr_dir
				if gustav.free {				
					gustav.vsp *= -1;
				}else {
					gustav.vsp = -5;
				}
			}else{
				gustav.hsp = gustav.hsp* 1.25
			}
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
        sound_play(asset_get("sfx_forsburn_cape_hit"));					//Here comes a sound effect
    }
    if hit_check == noone {
        gustav = 0;
    }
}





















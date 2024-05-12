// attack_update
draw_x = 0;
draw_y = 0;

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_TAUNT && window_timer > 20) {
    if (taunt_down){
        window = 1;
        window_timer = 20;
    }
}

if (attack == AT_TAUNT && taunt_down){
    if (special_pressed){
        set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 6);
        window = 2;
    }
    if (attack_pressed){
        set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 13);
        window = 2;
    }
    if (window == 3){
        window = 1;
        window_timer = 20;
    }
}

//FTilt - Hit from behind
/*
if (attack == AT_FTILT && window == 1 && window_timer == 5){
    with (oPlayer){
        if (other.spr_dir == spr_dir){
            other.ftilt_back = true;
        }
        else {
            other.ftilt_back = false;
        }
    }
    if (ftilt_back == true){
        set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 12);
        set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 15);
        set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    }
    if (ftilt_back == false){
        set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
        set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
        set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    }
}
*/


if (attack == AT_FTILT){
	if (window == 1){
		levei_parry = false;
	}
	if (window == 2 && window_timer == 3 && !hitpause){
		var g = instance_create(x + (60 * spr_dir), y, "obj_article1");
		g.spawned_by_ftilt = 1;
	}
}

if (attack == AT_DTILT){
	if has_rune("L") && (window == 2 && window_timer == 1 && !hitpause){
		var g = instance_create(x, y + 10, "obj_article1");
		g.spawned_by_ftilt = 1;
	}
	if (has_hit && window == 2){
		window = 3;
		window_timer = 2;
	}
}

//Visual Effects Gas
{
//DTilt Visual Effect
if (attack == AT_DTILT && window == 1){
	gas_direction();
	set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 3);
    gas_dtilt_cont = 0;
    gas_dtilt_posx = x;
    gas_dtilt_posy = y-10;
}

if (attack == AT_DTILT && window > 1){
    if (window == 2 && window_timer == 1){
        gas_dtilt_posx = x;
        gas_dtilt_posy = y;
    }
    if (!hitpause){
        gas_dtilt_cont += .35;  
    }
    
}

//UStrong Visual Effect
if attack == AT_USTRONG{
	if window == 1{
		gas_direction();
    	gas_ustrong_cont = 0;
    	var gas_used = false;
    	if gas_used == false
    	{
        	gas_used = true;
        	gas_ustrong_posx = x; 
    	}
    	gas_ustrong_posy = y;
	}
    if has_rune("L") && (window == 3 && window_timer == 3 && !hitpause){
		var g = instance_create(x, y - 76, "obj_article1");
		g.spawned_by_ftilt = 1;
	}
    if (window == 3 && window_timer == 1){
        gas_ustrong_posx = x; 
        gas_ustrong_posy = y;
    }
    if (!hitpause){
        gas_ustrong_cont += .2;  
    }
    
}

//FAir Visual Effect
if (attack == AT_FAIR && (window == 3 && window_timer >= 8))
{
    can_jump = true;
}

if (attack == AT_FAIR && window == 1){
    gas_direction();
    gas_fair_cont = 0;
    gas_fair_posx = x;
    gas_fair_posy = y;
}

if (attack == AT_FAIR && window > 1){
    if (window == 2 && window_timer == 1){
        gas_fair_posx = x;
        gas_fair_posy = y;
        gas_fair_cont = 0.01;
    }
    if has_rune("L") && (window == 2 && window_timer == 1 && !hitpause){
		var g = instance_create(x + (56 * spr_dir), y - 24, "obj_article1");
		g.spawned_by_ftilt = 1;
	}
}

//DAir Visual Effect
/*
if (attack == AT_DAIR && window == 1){
    gas_direction();
    gas_dair_cont = 0;
    gas_dair_posx = x;
    gas_dair_posy = y;
}

if (attack == AT_DAIR && window > 1){
    if (window == 2 && window_timer == 1){
        gas_dair_posx = x;
        gas_dair_posy = y;
        gas_dair_cont = 0.01;
    }
}
if (attack == AT_DAIR && window > 1)
{
    if (window == 2 && window_timer >=9)
    {
        can_jump = true;
    }
}
*/


//BAir Visual Effect
if (attack == AT_BAIR && window == 1){
    gas_direction();
    gas_bair_cont = 0;
    gas_bair_posx = x;
    gas_bair_posy = y;
}

if (attack == AT_BAIR && window > 1){
    if (window == 2 && window_timer == 1){
        gas_bair_posx = x;
        gas_bair_posy = y;
        gas_bair_cont = 0.01;
    }
    if has_rune("L") && (window == 2 && window_timer == 1 && !hitpause){
		var g = instance_create(x + (-36 * spr_dir), y, "obj_article1");
		g.spawned_by_ftilt = 1;
	}
}

//NSpecial 2 Visual Effect
if (attack == AT_USPECIAL && window == 1){
	gas_direction();
    gas_nspecial_cont = 0;
    gas_nspecial_posx = x;
    gas_nspecial_posy = y;
}

if (attack == AT_USPECIAL && window > 5){
    if (window == 6 && window_timer == 1){
        gas_nspecial_posx = x-5*spr_dir;
        gas_nspecial_posy = y+10;
    }
    if (window == 7 && window_timer == 1){
        gas_nspecial_posx = x-40*spr_dir;
        gas_nspecial_posy = y-40;
    }
    if (window == 8 && window_timer == 1){
        gas_nspecial_posx = x;
        gas_nspecial_posy = y-110;
    }
    if (!hitpause){
        gas_nspecial_cont += .01;  
    }
    
    if has_rune("L") && (window == 6 && window_timer == 1 && !hitpause){
		var g = instance_create(x, y + 10, "obj_article1");
		g.spawned_by_ftilt = 1;
		var g = instance_create(x + 60, y + 10, "obj_article1");
		g.spawned_by_ftilt = 1;
		var g = instance_create(x - 60, y + 10, "obj_article1");
		g.spawned_by_ftilt = 1;
		var g = instance_create(x, y - 50, "obj_article1");
		g.spawned_by_ftilt = 1;
	}
}


}

//DAttack Stops at ledge/hit
/*
if (attack == AT_DATTACK && window == 3){
    if (window_timer == 1){
        dattack_cont1 = x;
    }
    if (window_timer == 11){
        dattack_cont2 = x;
    }
}

if (attack == AT_DATTACK && window == 3 && !hitpause && (!attack_down || dattack_cont1 == dattack_cont2)){
    window_timer = 1;
    window = 4;
}
*/

if (attack == AT_DATTACK){
    if window == 3{
    	if window_timer == 12 && attack_down{
        	window_timer = 0;
    	}
    	if has_rune("A") && right_down - left_down != 0{
    		spr_dir = right_down - left_down;
    	}
    	if has_rune("G") && special_pressed{
    		gas_direction();
    		clear_button_buffer(PC_SPECIAL_PRESSED);
    		attack_end();
    		destroy_hitboxes();
    		sound_play(sound_get("fart"));
    		gas_direction();
    		gas_bair_posx = x;
        	gas_bair_posy = y;
        	gas_bair_cont = 0.01;
    		window = 2;
    		window_timer = 0;
    		create_hitbox(AT_BAIR, 2, x + (-32 * spr_dir), y - 28);
    		if has_rune("L") && !hitpause{
				var g = instance_create(x + (-36 * spr_dir), y, "obj_article1");
				g.spawned_by_ftilt = 1;
			}
    	}
    }
}

if attack == AT_NAIR{
	if has_rune("B") && window == 2 && window_timer == 15 && attack_down{
		attack_end();
		window_timer = 0;
	}
}

if (attack == AT_DAIR){
	if jestermode = true{
		set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("JMDairHitHard"));	
		set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("JMDairHitWeak"));	
		set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("JMDairHitWeak"));	
		set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("JMDairHitWeak"));	
	}
	if has_rune("C"){
		set_attack_value(AT_DAIR, AG_CATEGORY, 2);
	}
	if (window == 3 && window_timer >= 12 && !attack_down){
		window = 4;
		window_timer = 0;
		destroy_hitboxes();
	}
	if (window < 4 && (has_hit || has_rune("C") && !free)){
		window = 5;
		window_timer = 0;
		destroy_hitboxes();
		has_hit = false;
	}
	if ((window == 7 || (window == 6 && window_timer == 18)) && !attack_down){
		window = 4;
		window_timer = 0;
		destroy_hitboxes();
	}
	if (window == 7 && (has_hit || has_rune("C") && !free)){
		window = 5;
		window_timer = 0;
		destroy_hitboxes();
		has_hit = false;
	}
}

if attack == AT_UAIR{
	if has_rune("D") && window == 2 && state_timer >= 20{
		if attack_down{
			vsp += -0.3;
			if window_timer == 12{
				attack_end();
				window_timer = 0;
			}
		}
		else{
			window = 3;
			window_timer = 0;
		}
	}
}

//Specials Diagonally
if (attack == AT_NSPECIAL && window == 1){
	if (joy_pad_idle){
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 20);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
	}
	if (up_down && !right_down && !left_down && !down_down){
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, -20);
	}
		if (up_down && right_down && !down_down && !left_down){
			spr_dir = 1;
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 20);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, -20);
		}
		if (right_down && !up_down && !down_down && !left_down){
			spr_dir = 1;
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 20);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
		}
		if (down_down && right_down && !up_down && !left_down){
			spr_dir = 1;
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 20);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 20);
		}
		if (down_down && !right_down && !left_down && !up_down){
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 0);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 20);
		}
		if (down_down && left_down && !right_down && !up_down){
			spr_dir = -1;
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 20);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 20);
		}
		if (left_down && !right_down && !up_down && !down_down){
			spr_dir = -1;
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 20);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
		}
		if (up_down && left_down && !right_down && !down_down){
			spr_dir = -1;
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 20);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, -20);
		}
}

if (attack == AT_NSPECIAL){
	if (window == 4 && window_timer >= 3 && special_down && tokens <= 2){
		window = 1;
		window_timer = 7;
		tokens += 1;
	}
    fall_through = true;
}

//Spawn Cloud
if (attack == AT_NSPECIAL){
    levei_parry = false;
    if (window == 2 && window_timer == 4){
        instance_create(x, y, "obj_article1"); 
    }
    if (window == 3 && window_timer == 3){
        instance_create(x, y, "obj_article1"); 
    }
    if (window == 1 && window_timer == 1){
        tokens += 1;
    }
    if (window == 1 && window_timer > 1 && shield_pressed){
        window = 4;
    }
    
}


//Cloud Detonate
if (attack == AT_DSPECIAL && window == 2){
    if (window_timer == 1){
       explosion_cont = 0; 
    }
    if (window_timer == 1){
       spawn_hit_fx(x, y, claw_effect); 
    }
}

if (attack == AT_USPECIAL){
	move_cooldown[AT_USPECIAL] = 9999;
//    tokens = 3.1;
	can_fast_fall = false;
	can_wall_jump = true;

	if has_rune("F") && window <= 5{
		super_armor = 1;
	}
	else{
		super_armor = 0;
	}
	
	if has_rune("H"){
		if window == 1{
			uspecial_charge = 0;
		}
		if window == 2 && window_timer == 30 && special_down && tokens < 3{
			window_timer--;
			if (state_timer - 45) % 15 == 0{
				uspecial_charge += 1;
				tokens += 1;
				sound_play(asset_get("sfx_frog_dspecial_swallow"), false, false, 1, 1 + (uspecial_charge / 2));
			}
		}
		set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -12 + (uspecial_charge * -2));
		set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 15 + (uspecial_charge * 3));
		set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 15 + uspecial_charge);
		set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .7 + (uspecial_charge * 0.1));
	}

	if (window < 6){
		if (window == 3 && window_timer == 1){
			spawn_hit_fx(x, y - 25, 116 ); 
		}
	
	}
}

if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	can_wall_jump = true;
	move_cooldown[AT_FSPECIAL] = 15;
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6*fspecial_cloud);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 5*fspecial_cloud);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 9*fspecial_cloud);
	if (window == 1){
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
		if (free) && !has_rune("E"){
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 7);
		}
		else {
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
		}
		fspecial_cloud = 1;
		explosion_cont = 0; 
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 0);
	}
	if (fspecial_cloud > 1) set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
	if (window == 2 && special_pressed){
		window = 4;
		window_timer = 0;
	}
	if (window == 5 && window_timer == 1 && free){
		vsp = -2;
	}
	//Makes so you can FSpecial back to the stage and not get stuck on the wall (thanks Supersonic!)
    if (window > 1){
        var max_height = 40;
        if place_meeting(x+hsp,y+vsp,asset_get("par_block")) { //check if you're about to collide with a wall
          for (var i = 0; i < max_height; i += 2) { //increase y shift
            if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) { //if you are no longer colliding with the ground at that y shift
              x = x+hsp; //apply hsp early
              y = y+vsp-i; //apply vsp early, apply y shift
              hsp = 0; //kill hsp for now (meant for hsp type 1)
              vsp = 0; //kill vsp for now (meant for vsp type 1)
              break; //break from the loop so it doesn't loop any more than necessary
            }
          }
        }
    }
	if (has_hit){
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
	}
}

/*
if (attack == AT_FSPECIAL){
	if (window == 1){
		set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
	    set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
	    set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 180);
	    set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
	    set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
		ring_rot = 0;
        ring_x = 40;
        ring_y = 40;
		shot_fired = false;
	}
    if (shot_fired == false && window > 1){
        if (down_down && !right_down && !left_down){
            window = 2;
            ring_rot = 270;
            ring_x = 10;
            ring_y = 0;
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 180);
            set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
        }
        if (down_down && ((right_down && spr_dir == 1) || (left_down && spr_dir == -1))){
            window = 3;
            ring_rot = 315;
            ring_x = 25;
            ring_y = 20;
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 180);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
        }
        if (!down_down && !up_down && ((right_down && spr_dir == 1) || (left_down && spr_dir == -1))){
            window = 4;
            ring_rot = 0;
            ring_x = 40;
            ring_y = 40;
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 180);
            set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
        }
        if (up_down && ((right_down && spr_dir == 1) || (left_down && spr_dir == -1))){
            window = 5;
            ring_rot = 45;
            ring_x = 25;
            ring_y = 60;
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 180);
            set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 0);
        }
        if (up_down && !right_down && !left_down){
            window = 6;
            ring_rot = 90;
            ring_x = 10;
            ring_y = 80;
            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 0);
            set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 180);
        }
    }
    if (state_timer > 10 && !special_down && window < 7){
        shot_fired = true;
//        tokens += 1.1; 
        window_timer = 1;
        window = 7;
        fspecial_dir = spr_dir;
    }
}
*/


#define gas_direction()
{
    if spr_dir == 1
    {
        gas_dir = 1;
    }
    if spr_dir == -1
    {
        gas_dir = -1;
    }    
}
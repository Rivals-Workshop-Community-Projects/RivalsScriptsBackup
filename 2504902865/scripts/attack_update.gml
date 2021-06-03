//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//jab
if attack == AT_JAB {
    if window == 1 && window_timer == get_window_value(AT_JAB,1,AG_WINDOW_LENGTH)-1 {
        clear_button_buffer(PC_ATTACK_PRESSED);
    }
    if(window == 1 && window_timer == 1){
        last_hit_stun = false;
    }
    if(was_parried && window < 4){
        was_parried = false;
        last_hit_stun = true;
    }
    if(window >= 4 && last_hit_stun){
        was_parried = true;
    }
    if window == 3 && window_timer >= get_window_value(AT_JAB,3,AG_WINDOW_CANCEL_FRAME) {
    	if down_down && special_pressed && !last_hit_stun {
    		set_attack(AT_DSPECIAL) //jab cancel into special pogmires
    	}
    }
}

//nair bounce
if attack == AT_NAIR {
    if window == 1 {
        if window_timer == 1 {
            set_attack_value(AT_NAIR,AG_CATEGORY,1)
        }
        if window_timer == get_window_value(AT_NAIR,1,AG_WINDOW_LENGTH){
            set_attack_value(AT_NAIR,AG_CATEGORY,2)
        }
    }
    if window == 2 {
        if !free{
            //later finf out how to reset hitbox properly idk
            
            if attack_down {
                if vsp > 10 {
                    vsp = -10
                } else {
                    vsp = -6
                }
                destroy_hitboxes();
                attack_end();
                var bouncebox = create_hitbox(AT_NAIR,1,x+get_hitbox_value(AT_NAIR,1,HG_HITBOX_X),y+get_hitbox_value(AT_NAIR,1,HG_HITBOX_Y));
                bouncebox.hitbox_timer = window_timer;
            } else {
                set_attack_value(AT_NAIR,AG_CATEGORY,1)
            }
        }
    }
    if window == 3 && window_timer == 1 {
        set_attack_value(AT_NAIR,AG_CATEGORY,1)
    }
}

//dair cooldown
if attack == AT_DAIR {
    if window == 4 {
        move_cooldown[AT_DAIR] = 30;
    }
}

//house setup
if attack == AT_NSPECIAL {
    //spawn house if none close/existing
    if window == 2 && window_timer == 1 && !instance_exists(holding_house_id) && houses_amount_rn < houses_amount_max {
        holding_house_id = instance_create(x,y,"obj_article1");
    }
    if window == 5 && window_timer == 1{
        holding_house_id = pickup_house;
        holding_house_id.state = -1;
        holding_house_id.state_timer = 0;
    }
}

//throws, later uncomment/finish when article coded
if attack == AT_NTHROW {
    if window == 2 && window_timer == 1 {
        //throw code
        house_yeet(7,-7,1);
    }
}
if attack == AT_FTHROW {
    if window == 2 && window_timer == 1 {
        //throw code
        house_yeet(11,-5,2);
    }
}
if attack == AT_UTHROW {
    if window == 2 && window_timer == 1 {
        //throw code
        house_yeet(0,-14,3);
    }
}
if attack == AT_DTHROW {
    if window == 2 && window_timer == 1 {
        //throw code
        house_yeet(0,9,4);
    }
}

//now to code the rest of the specials AAAAAAAAAAAAAAAAAAA
if (attack == AT_FSPECIAL) { //grabble
	
	if instance_exists(grabbed_player_obj) {//player grab
    	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
    	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) {grabbed_player_obj.visible = true; grabbed_player_obj = noone; }
    	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {grabbed_player_obj.visible = true; grabbed_player_obj = noone; }
    
    	else {
    		//keep the grabbed player in hitstop until the grab is complete.
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitpause = true;
    		
    		//if this is the first frame of a window, store the grabbed player's relative position.
    		if (window_timer <= 1) {
    			grabbed_player_relative_x = grabbed_player_obj.x - x;
    			grabbed_player_relative_y = grabbed_player_obj.y - y;
    		}
    		 
    		//on the first window, pull the opponent into the grab.
    		if (window == 4 or window == 5 or window == 6) { 
    		    grabbed_player_obj.visible = false;
    			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
    			var pull_to_x = 55 * spr_dir;
    			var pull_to_y = -10;
    			
    			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
    			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
    			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
    			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
    		}
    		//the above block can be copied for as many windows as necessary.
    		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
    		
    	}
    	if window == 7 {
    		//landing grab now grants boost field
    		boosting_minions = true;
			boosting_timer_rn = 0;
			//a
    	    grabbed_player_obj.visible = true;
    	    grabbed_player_obj = noone;
    	}
	}
	
	//house grab
	if window == 2 && !has_hit_player {
	    with(obj_article1) {
            if player_id == other.id && point_distance(x,y,other.x + 35*other.spr_dir,other.y-15) < 65 {
                if !(state == -1 or state == 2 or state == 5 or state == 6) {
                    other.should_consume = true;
                    other.consume_house = self;
                }
            }
        }
        if should_consume && instance_exists(consume_house) {
            switch(consume_house.house_level) {
                case 1:
                reset_hitbox_value(AT_FSPECIAL,3,HG_DAMAGE);
                reset_hitbox_value(AT_FSPECIAL,3,HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_FSPECIAL,3,HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_FSPECIAL,3,HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_FSPECIAL,3,HG_HITPAUSE_SCALING);
                    break;
                case 2:
                set_hitbox_value(AT_FSPECIAL,3,HG_DAMAGE,7);
                set_hitbox_value(AT_FSPECIAL,3,HG_BASE_KNOCKBACK,9);
                set_hitbox_value(AT_FSPECIAL,3,HG_KNOCKBACK_SCALING,0.55);
                set_hitbox_value(AT_FSPECIAL,3,HG_BASE_HITPAUSE,10);
                set_hitbox_value(AT_FSPECIAL,3,HG_HITPAUSE_SCALING,0.45);
                    break;
                case 3:
                set_hitbox_value(AT_FSPECIAL,3,HG_DAMAGE,9);
                set_hitbox_value(AT_FSPECIAL,3,HG_BASE_KNOCKBACK,10);
                set_hitbox_value(AT_FSPECIAL,3,HG_KNOCKBACK_SCALING,0.75);
                set_hitbox_value(AT_FSPECIAL,3,HG_BASE_HITPAUSE,12);
                set_hitbox_value(AT_FSPECIAL,3,HG_HITPAUSE_SCALING,0.75);
                    break;
            }
            consume_house.state = 5;
            consume_house.state_timer = 0;
            window = 9;
            window_timer = 0;
            set_attack_value(AT_FSPECIAL,AG_NUM_WINDOWS,13)
        }
	}
	//house schmove
	if window == 11 or window == 10 {
		can_wall_jump = true;
	}
	if (window == 10 or window == 11) {
	    if abs(hsp) < air_max_speed {
	        hsp += right_down ? 0.15 : 0;
	        hsp += left_down ? -0.15 : 0;
	    }
	}
	//househit boost
	if window == 12 && has_hit_player {
		boosting_minions = true;
		boosting_timer_rn = 0;
	}
}


if attack == AT_USPECIAL { //dolph
    can_fast_fall = false;
    if window >= 2 && window <= 4 { //can walljump during the ride
        can_wall_jump = true;
    }
    if (window == 3 or window == 4) && window_timer > 1 && hsp == 0 { //wallbounce
        if uspecial_bounces_rn < uspecial_bounces_max {
            window = 5;
            window_timer = 0;
            uspecial_bounces_rn += 1;
        } else {
            window = 9;
            window_timer = 0;
            sound_play(asset_get("sfx_blow_weak1"),false,0,1,0.65)
        }
        hsp = -6 * spr_dir
        vsp = -6;
    }
    if window == 5 or window == 9 {
        destroy_hitboxes();
    }
    if (window == 2 or window == 3 or window == 4) && shield_pressed {
        window = 9;
        window_timer = 0;
    }
    if window == 9 {
        hsp *= 0.8;
        vsp = -5;
    }
}

//needs minions to work so do minions first dummy
if attack == AT_DSPECIAL { //AEGIS
	if window == 2 && has_hit_player {
		boosting_minions = true;
		boosting_timer_rn = 0;
	}
    if window == 3 {
    	move_cooldown[AT_DSPECIAL] = dspecial_cooldown;
    }
}



//le taunt
if attack == AT_TAUNT {
	if window == 2 && window_timer == 7 && taunt_down {
		window_timer = 0;
		sound_play(asset_get("sfx_watergun_splash"));
		var randomsound = random_func(6,2,true);
		switch(randomsound){
			case 0:sound_play(asset_get("sfx_blow_medium2")) break;
			case 1:sound_play(asset_get("sfx_blow_weak1")) break;
		}
	}
}







#define house_yeet(_hsp,_vsp,_thrown_hitbox_type)
var house_thrown = holding_house_id;
house_thrown.spr_dir = spr_dir
house_thrown.thrown_hitbox_type = _thrown_hitbox_type
house_thrown.state = 4;
house_thrown.state_timer = 0;
//with(house_thrown) {
//    set_state(-2);
//}
house_thrown.hsp = _hsp * spr_dir;
house_thrown.vsp = _vsp;
holding_house_id = noone;



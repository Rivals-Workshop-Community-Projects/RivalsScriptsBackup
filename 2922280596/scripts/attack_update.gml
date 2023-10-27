// if (attack == AT_NSPECIAL || attack == AT_DSPECIAL){
// 		attack_end();
// 		destroy_hitboxes();
// 		set_attack(AT_JAB);

// }
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_DSPECIAL) {
	can_fast_fall = false;
	if window == 2 && window_timer == 3 {
        sound_play(asset_get("sfx_shovel_hit_light2"), 0, noone, .7, 1.3)
        sound_play(asset_get("sfx_blow_medium1"), 0, noone, .7, 1.3)
    }
	if (window == 1){
        if (down_down && free){
            set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
            set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
        } else {
        	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 2);
            set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -6.5);
    	}

	}
}
if(attack == AT_USPECIAL)
{
	if (window == 2 && window_timer == 6){
		vsp = -16;
		sound_play(asset_get("sfx_zetter_downb"), 0, noone, 1, 1.2);
	}
	can_wall_jump = true;
	move_cooldown[AT_USPECIAL] = 999;
    if(window == 2 && window_timer == 1)
    {
        with(obj_article1)
        {
            if(player_id == other.id)
                state = 4;
        }
        instance_create(x,y+280,"obj_article1");
    }
}

if(attack == AT_USTRONG){
	if (window == 2 and window_timer == 3){
	sound_play(asset_get("sfx_zetter_downb"), 0, noone, 1, 1.2);
	}
}
if(attack == AT_DSTRONG){
	if (window == 2 and window_timer == 4||window == 4 and window_timer == 4){
	sound_play(asset_get("sfx_shovel_hit_light1"), 0, noone, .2, 1.4);
	}
}

if(attack == AT_DAIR){
    if window == 1 && window_timer == 7 {
         sound_play(asset_get("sfx_ori_glide_featherout"))
    }
}
if(attack == AT_DATTACK){
    if window == 1 && window_timer == 7 {
        sound_play(asset_get("sfx_ori_stomp_spin"))
    }
	//if(!free and window == 2 and has_hit and (up_down and special_pressed)){
	if(!free and window == 2 and has_hit){
		//attack_end();
		//set_attack(AT_USPECIAL_GROUND);
		can_ustrong = true;
	} 
}
//if(attack == AT_USPECIAL and !free){
//    attack_end();
//	set_attack(AT_USPECIAL_GROUND);
//    window = 1;
//    window_timer = 0;
//}


if (attack == AT_NSPECIAL)
{
    can_fast_fall = false;
    can_move = false;
    if(window == 1)
    {
        if (window_timer == 1)
        {
            shoot_x = x + 160*spr_dir;
            shoot_y = y - floor(char_height/2);
            nspec_stall ++;
        }
        if (window_timer == 4)
        {
            //hsp = 6*spr_dir;
            sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.8, 1.2)
            if (!free){
            	//hsp = 6*spr_dir;
            }
        }
    }
    if((window == 1 || (window != 2 && window_timer < 5)))
    {
        if(shoot_x > x) spr_dir = 1 else spr_dir = -1;
        if(!joy_pad_idle)
        {
            shoot_x += (15 * cos(degtorad(joy_dir)))
            shoot_y -= (15 * sin(degtorad(joy_dir)))
        }
        with(pHitBox)
        {
            if(player_id == other.id && type == 2 && attack == AT_DSPECIAL && collision_circle(other.x,other.y,300,self,false,false))
                if(other.special_down) {other.shoot_x = x+hsp; other.shoot_y = y+vsp;}
        }
    }
    if(window == 2 && window_timer == 5)
    {
        sound_play(sound_get("revolver_shot"), false, noone, 0.8, 1.1)
        spawn_hit_fx( shoot_x, shoot_y, gunshot);
        create_hitbox(AT_NSPECIAL, 1, floor(shoot_x), floor(shoot_y));
    }
    if(free && window != 3 && nspec_stall <= 1) vsp /= 1.25; 
    move_cooldown[AT_NSPECIAL] = 15;
}

if (attack == AT_NSPECIAL_2)
{
    fast_fwd = false;
    fast_timer = 0;
    can_fast_fall = false;
    can_move = false;
    
    if(window == 1)
    {
        if(shoot_x > x) spr_dir = 1 else spr_dir = -1;
        if (window_timer == 1)
        {
            sound_play(asset_get("sfx_clairen_dspecial_counter_active"))
            spawn_hit_fx(x,y, ff_fx);
            white_flash_timer = 10;
            if(nspec_target == noone)
            {
                var closestdist = 9999;
                with(oPlayer)
                {
                    if(id != other.id)
                    {
                        var dist_to_desirae = point_distance(other.x,other.y, x, y);
                        print_debug(string(dist_to_desirae));
                        if(dist_to_desirae <= closestdist)
                            other.nspec_target = id;
                    }
                }
            }
            nspec_stall ++;
        }
        if (window_timer == 4)
        {
            //hsp = 6*spr_dir;
            sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.6, 1.5)
            if (!free){
            	hsp = 6*spr_dir;
            }
        }
        if(nspec_target != noone)
        {
            shoot_x = nspec_target.x;
            shoot_y = nspec_target.y-floor(char_height/2);
        }
    }
    if(window == 2 && window_timer % 6 == 1)
    {
        nspec_shells --;
        sound_play(sound_get("revolver_shot"), false, noone, 1, 1.2)
        fx = spawn_hit_fx( shoot_x-20+random_func(1,40,true), shoot_y-20+random_func(5,40,true), gunshot);
        fx.depth = depth-1;
        create_hitbox(AT_NSPECIAL_2, 1, floor(shoot_x), floor(shoot_y));
        if(nspec_shells == 0) {window = 3; window_timer = 0}
    }
    if(free) { vsp /= 2 hsp /= 2}; 
    move_cooldown[AT_NSPECIAL] = 30;
}
if (attack == AT_FSPECIAL){
	//if (free and window == 1){
	//	attack_end();
	//	set_attack(AT_FSPECIAL_AIR);
	//	window = 1;
    //    window_timer = 0;
	//}
	if ((window == 4 || window == 5 || window == 6))
    {
        if(special_pressed)
        {
			window = 7;
			window_timer = 0;
        }
        else if(jump_pressed)
        {
			set_attack(AT_FSPECIAL_2)
            vsp = -8;
            hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
        }
	}
    can_fast_fall = false;
}

if (attack == AT_FSPECIAL_2 && window == 2 && window_timer == 6)
{
    white_flash_timer = 10;
    spawn_hit_fx(x,y, ff_fx);
    fast_fwd = true;
    fast_timer = 500;
    destroy_hitboxes();
    sound_play(asset_get("sfx_ell_arc_taunt_start"), 0, noone, 1, 1.2);
}
if (attack == AT_FSPECIAL_AIR){
	can_wall_jump = window > 3;
	can_fast_fall = false;
	//set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 7 * !has_hit);
	move_cooldown[AT_FSPECIAL_AIR] = 999;
	if (!free and !has_hit)
		window = 6;
    //hit wall
    if(position_meeting(x+30*spr_dir,y-10,asset_get("par_block")) && window == 3 && !hitpause && !has_hit)
    {
        has_hit = true;
        sound_play(asset_get("sfx_blow_heavy1"));
        spawn_hit_fx(x+20*spr_dir, y, bigfx)
        hitpause = true;
        hitstop = 2;
        old_vsp = -7;
        old_hsp = -1*spr_dir;
    }

	if (window == 6 && window_timer = 4)
	    sound_play(asset_get("sfx_zetter_downb"), 0, noone, 1, 1.2);
	
}

if (attack == AT_DSPECIAL_2){
    if(state_timer == 1) dspec_stall ++;
    if(free && window <= 2 && dspec_stall <= 1) vsp /= 3; 
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
    if (!has_hit){
    	move_cooldown[AT_DSPECIAL_2] = 15;
    }
	if (fast_fwd == true){
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, ffhit);
		} else { reset_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT);}
}

if (attack == AT_JAB){
	if (fast_fwd == true){
		if (window == 8 and has_hit){
		set_attack(AT_NAIR);
		}
		set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 9);
		set_window_value(AT_JAB, 8, AG_WINDOW_VSPEED, -8);
		} else { 
		set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 6);
		set_window_value(AT_JAB, 8, AG_WINDOW_VSPEED, -5);
		}
	}

//if (attack == AT_DSPECIAL && has_hit){
//	move_cooldown[AT_DSPECIAL] = 45;
//    }
//if (attack == AT_FSPECIAL_AIR){
	
	

/*
if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}
*/

//This code lets you add a smash 4 styled wavebouce to your attacks
//Just write "trigger_wavebounce();" under the case statement for the attack you want to wavebounce
#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}
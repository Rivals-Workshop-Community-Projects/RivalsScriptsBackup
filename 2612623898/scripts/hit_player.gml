if (my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num >= 1 && my_hitboxID.hbox_num <= 3)) {
	hit_player_obj.should_make_shockwave = false;
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false && !hit_player_obj.super_armor && hit_player_obj.soft_armor = 0 && !hit_player_obj.invincible) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		
		window = 5;
		window_timer = 0;
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false && !hit_player_obj.super_armor && hit_player_obj.soft_armor = 0 && !hit_player_obj.invincible) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		
		window = 4;
		window_timer = 0;
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
		grabbed_player_obj.y -= 3;
	}
}

if (my_hitboxID.attack == AT_JAB) {
	with (pHitBox) {
		if (player_id == other.id && attack == AT_JAB && hbox_num == 2)
			can_hit[other.hit_player_obj.player] = false;
	}
}
/*         
*                 ---------- hit_player.gml ------------
*       This file runs whenever you hit a player with a hitbox.
*       Useful for applying status effects or triggering on hit events.
*/

//EXAMPLE CODE FOR SLEEP
/*
if(my_hitboxID.attack == AT_FTILT and my_hitboxID.hbox_num == 1){
    sleep(30);
}
//Using this code will make the first hitbox of your ftilt attack inflict sleep
//The durration of this sleep is the same as snake's sleep dart
*/
var sticky_ledge = true;

//sleep example
//sticky_ledge = sleep(300); //always set sticky ledge = to sleep if using a melee attack;

//End of hit_player.gml. write your code above this line------------------------
if(sticky_ledge) {sticky_ledge_protection()}
#define sleep(time) //This function sets people to sleep. Time is the base value for sleep, a good base value is 30.
{
    if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
        with(hit_player_obj){
            if(!("ssl_sleep_lockout" in self) or ssl_sleep_lockout <= 0){
                orig_knock = 0;
                old_vsp = 0;
                old_hsp = 0;
                hitstun = 0;
                hitpause = 0;
                ssl_sleep_owner = other.player;
                if(!free){
                    was_parried = true;
                    parry_lag = max(20, floor((get_player_damage(player)+time)/2));
                    ssl_sleep_lag = parry_lag;
                    ssl_sleep_lockout = 10;
                    ssl_air_sleep = false;
                    set_state(PS_PRATLAND);
                    
                } else {
                    ssl_air_sleep = true;
                    ssl_sleep_lag = max(10, floor((get_player_damage(player)+time)/4))
                    set_state(PS_PRATFALL);
                }
            }
        }
    }
    return false;
}

#define sticky_ledge_protection()
{
   //sticky ledge protection, if you use a force flinch move disable this for that move
    if (my_hitboxID.type == 1 && hit_player_obj.free == false) {
         hit_player_obj.y -= 1;
    } 
}

#define angle_autolink(_x, _y, _speed)
if ((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled) {
    hit_player_obj.orig_knock = point_distance(hit_player_obj.x, hit_player_obj.y, my_hitboxID.x + _x * spr_dir, my_hitboxID.y + _y) / _speed;
    hit_player_obj.orig_knock = clamp(hit_player_obj.orig_knock, 5, 12);
    hit_player_obj.knock_dir = point_direction(hit_player_obj.x, hit_player_obj.y,  my_hitboxID.x + _x * spr_dir,  my_hitboxID.y + _y);
    hit_player_obj.old_hsp = lengthdir_x(hit_player_obj.orig_knock, hit_player_obj.knock_dir);
    hit_player_obj.old_vsp = lengthdir_y(hit_player_obj.orig_knock, hit_player_obj.knock_dir);
}

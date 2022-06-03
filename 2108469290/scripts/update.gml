
if get_gameplay_time() < 120 {
	lockon = 0
	move_cooldown[AT_NSPECIAL] = 5
}

if move_cooldown[AT_TAUNT_2] > 0 {
	lockon = 0
}


if state == PS_WALK && special_down &&  move_cooldown[AT_TAUNT_2] == 0{
	if get_gameplay_time()%30 == 0 {
		sound_play(asset_get("sfx_ice_shieldup"));
		create_hitbox(AT_NSPECIAL , 1 + random_func(1, 2, true) , x - (20 * spr_dir) , y - 70 + random_func(2, 20, true) );
		spawn_hit_fx ( x - (30 * spr_dir) , y - 60 + random_func(2, 20, true) , summon  );
    }
    
    if get_gameplay_time()%30 == 10{
    		sound_play(asset_get("sfx_ice_shieldup"));
    		create_hitbox(AT_NSPECIAL , 1 + random_func(1, 2, true) , x - (20 * spr_dir) , y - 70 + random_func(2, 20, true) );
    		spawn_hit_fx ( x - (30 * spr_dir) , y - 60 + random_func(2, 20, true) , summon  );
    }
    
    if get_gameplay_time()%30 == 20{
    		sound_play(asset_get("sfx_ice_shieldup"));
    		create_hitbox(AT_NSPECIAL , 1 + random_func(1, 2, true) , x - (20 * spr_dir) , y - 70 + random_func(2, 20, true) );
    		spawn_hit_fx ( x - (30 * spr_dir) , y - 60 + random_func(2, 20, true) , summon  );
    }
}

if state == PS_LANDING_LAG && attack == AT_DAIR {
    
    if !free && has_hit_player && state_timer == 2 {
    	create_hitbox(AT_DAIR,18,x,y)
    }
    
}

if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR {
	move_cooldown[AT_FSPECIAL_2] = 0
}


/// Teleport


/*
if(get_gameplay_time() == 1){

inx = x
iny = y
	
}

if(get_gameplay_time() == 2){
	

var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			
if x < shortest_id.x {			
if shortest_id.url == "1913869515" or shortest_id.url == "2069283406" or shortest_id.url == "1997619532" 
or shortest_id.url == "2085832560" or shortest_id.url == "2108469290" or shortest_id.url == "2047413648"
or shortest_id.url == "2154720280" or shortest_id.url == "2136624834"
{
create_hitbox(AT_NSPECIAL , 20 , shortest_id.x , shortest_id.y );      		
}
}


}
*/

if hit_player_obj != self {
if introtimer = 1 {
	        visible = true
		  spawn_hit_fx( x, y, lighten)
	x = inx + (60 * introhit)
	y = iny
	introtimer = 0
	hitpause = 0
	spawn_hit_fx( x, y, SC)
	hsp = -6 * spr_dir
	vsp = 0
	
	if introhit = 1 {
		sound_play(asset_get("sfx_abyss_explosion"),false, noone, );
		sound_play(sound_get("Fstrong"),false, noone, 2);
		hsp = -7
		vsp = 0
		spr_dir = 1
		
	}
	
	if introhit = -1 {
		hsp = 7
		vsp = 0
		spr_dir = -1
	}
	
}

	

if intro = 1 && instance_number(oPlayer) == 2 {

if (hit_player_obj.url == "1913869515" or hit_player_obj.url == "2069283406" or hit_player_obj.url == "1997619532" 
or hit_player_obj.url == "2085832560" or hit_player_obj.url == "2108469290" or hit_player_obj.url == "2047413648"
or hit_player_obj.url == "2154720280" or hit_player_obj.url == "2136624834")
&&  hit_player_obj.introtimer != 0{

move_cooldown[AT_NSPECIAL] = 100
take_damage( player, -1 , -1 )		
	/// Zetta Alex Mayu Katie Saji Uza Nolan Elice
if introtimer = -1{
	introtimer = 300
	
}

if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x, y - 40 , ai )
}

if state != PS_IDLE_AIR && introtimer > 1  {
	set_state (PS_IDLE_AIR)
}
if introhit == 1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) {
	  sound_play(asset_get("sfx_quick_dodge"),false, noone, 0.6);	
      sound_play(sound_get("RI"),false, noone, 0.8);	
	  spawn_hit_fx( x, y, lighten)
	}
	
	if get_gameplay_time() % 20 = 10 {
		spawn_hit_fx( x, y, 302)
		sound_play(asset_get("Spacecut"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 15 {
		spawn_hit_fx( x, y, 305)
		sound_play(sound_get("slice"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 20 {
visible *= -1
draw_indicator *= -1			
		spawn_hit_fx( x, y, SC)
		sound_play(asset_get("Fstrong"),false, noone, 0.6);
	}
}

if introhit == -1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) - 10 {
	  sound_play(asset_get("sfx_roll"),false, noone, 0.6);	
	   sound_play(sound_get("Fstrong"),false, noone, 0.8);
	  spawn_hit_fx( x, y , darken )	
	}
	if get_gameplay_time() % 20 = 0 {
		spawn_hit_fx( x, y, 302)
		sound_play(asset_get("Spacecut"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 0 {
		spawn_hit_fx( x, y, 305)
			sound_play(sound_get("RI2"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 0 {
		spawn_hit_fx( x, y, SC)
		sound_play(asset_get("Fstrong"),false, noone, 0.6);
	}
}

	if get_gameplay_time() % 20 = 0 && introtimer > 1 {
				visible = 0
	}
	if get_gameplay_time() % 20 = 10 && introtimer > 1 {
				visible = true
	}

if get_gameplay_time() % 10 = 0 && introtimer > 1 {

hsp = (room_width/2 - x + 100  - random_func(1, 200, true)) / 6 
vsp = (room_height/2 - y - 80  - random_func(2, 160, true)) / 6
}


if introtimer > 0 {
	
		lockon = 0
	move_cooldown[AT_NSPECIAL] = 80
	
		 with (asset_get("oPlayer")) {
	if (player != other.player) {
		
		if hitpause {
		with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
	}
    
    
	}
	
   }
   
with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
			}
	introtimer -= 1
	
	
	 if introhit = -1 {
	if get_gameplay_time() % 3 = 0 {
		spawn_hit_fx( x, y , darken )	
	}
	}
}

}

}
}

if get_gameplay_time() < 110 && intro != 1 {
	hsp = 0
	vsp = 0
	
	set_attack (AT_DSPECIAL)
	window = 2
	window_timer = 1
	vsp = 0
	draw_indicator = false
	move_cooldown[AT_FSPECIAL] = 4
	
	
}

if get_gameplay_time() == 100 && intro != 1 {
 spawn_hit_fx(x,y - 60, SC)	
}




if get_gameplay_time() == 98 {
	sound_play(asset_get("sfx_quick_dodge"));
    sound_play(asset_get("sfx_ori_bash_use"));
	sound_play(sound_get("SpaceCut"));
}
	

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){

if state_timer == 1 {
    	sound_play(asset_get("sfx_quick_dodge"));
}
	  if state_timer >= 5 and state_timer < 19 {
	 	if state_timer % 5 == 0{
	 		spawn_hit_fx ( x  , y + 20, ai3 );
	 	}
	  }
	 	
	 if state_timer < 5{
	     hsp = -3 * spr_dir
	 }
	 
	 if state_timer >= 5 and state_timer < 12 {
	 	
	     hsp = -12 * spr_dir
	 }
}

if state == PS_AIR_DODGE && state_timer < 10{
	if state_timer % 3 == 0{
	 		spawn_hit_fx ( x  , y , ai );
	 	}
}


  if lockon == 1 && !hitpause {
  	lockontime -= 1
  }  
  
   if lockontime <= 0 {
  	lockon = 0
  	lockontime = 180
  }



/// Nspecial


if move_cooldown[AT_TAUNT_2] > 0  && hhalo <= 0{ 
   move_cooldown[AT_NSPECIAL] = 2	
}



if !free or state == PS_WALL_JUMP {
move_cooldown[AT_USPECIAL] = 0	

if "ai_target" not in self {
if move_cooldown[AT_FSPECIAL] > 20 {	
move_cooldown[AT_FSPECIAL] = 0	
}
}

if move_cooldown[AT_DSPECIAL] > 30{	
move_cooldown[AT_DSPECIAL] = 0
}

}


///


if state == PS_IDLE or state == PS_WALK or state == PS_IDLE_AIR{
	hurtbox_spr = sprite_get("stabd_box");
}


///




	








/// setstock 



if hhalo > 0 {

if walk_speed != 4 {
walk_anim_speed = .2;
dash_anim_speed = .4;
	
walk_speed = 4;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 7

leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .33;
		
move_cooldown[AT_TAUNT_2] = 0
}

} else{

if walk_speed != 3 {
walk_anim_speed = .13;
dash_anim_speed = .28;

walk_speed = 3;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 6

leave_ground_max = 4.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .26;
}

}

if hhalo > 1 {
	spawn_hit_fx( x + 24 - random_func(5, 50, true) - (20 * spr_dir) , y - 30- random_func(4, 80, true) , esp )
	hhalo -= 1
}


if hhalo = 1 {
	hhalo = 0
	spawn_hit_fx (x - (15 * spr_dir) , y - 55, 302)
        sound_play(asset_get("sfx_ice_shieldup"));
}

if "ai_target" in self {
	if (get_training_cpu_action() == CPU_FIGHT){	
//////////remember their attacks 	
if ai_target.state == PS_ATTACK_AIR or ai_target.state == PS_ATTACK_GROUND {
	
   if xdist < 100 && can_attack && ai_target.window == 1 && ((x < ai_target.x && ai_target.spr_dir == -1) or (x > ai_target.x && ai_target.spr_dir == 1))  {
   	
   	if !free {
   	set_state (PS_ROLL_FORWARD)
   	} 

   }
	
}

///


if state_cat == SC_HITSTUN {
	hsp /= 1.008
	if x > room_width/2 - 400 and x < room_width/2 - 400 {
		vsp += 0.4
	} 
}
}
}
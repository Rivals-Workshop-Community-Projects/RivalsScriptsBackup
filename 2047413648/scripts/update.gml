
if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if !hitpause {
   stax += floor(((x-40*spr_dir)-stax)/5)
   stay += floor((y-56-stay)/5)
}

if fchargeold != fcharge  {
	
	if fchargeold < fcharge && fcharge <= 3 && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR {
	sound_play(asset_get("sfx_ori_bash_use"),false,noone,1,0.7 + fcharge/10)
	shake_camera(2,2)
	}
	
	fchargecd = 40
	
	fchargeold = fcharge
}

if fchargecd > 0 {
	fchargecd -= 1.5
}
/// screw this

if(get_gameplay_time() == 1){

inx = x
iny = y
	
}

/*
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


if hit_player_obj != self {
if introtimer = 1 {
	        visible = true
		  spawn_hit_fx( x, y, lighten)
	x = inx + (50 * introhit)
	y = iny
	introtimer = 0
	hitpause = 0
	spawn_hit_fx( x, y, 304)
	
	if introhit = 1 {
		sound_play(asset_get("sfx_abyss_explosion"),false, noone, );
		sound_play(sound_get("RI2"),false, noone, 2);
		hsp = -8
		vsp = 0
		spr_dir = 1
		
	}
	
	if introhit = -1 {
		hsp = 8
		vsp = 0
		spr_dir = -1
	}
	
}

	

if intro = 1 && instance_number(oPlayer) == 2 {

if (hit_player_obj.url == "1913869515" or hit_player_obj.url == "2069283406" or hit_player_obj.url == "1997619532" 
or hit_player_obj.url == "2085832560" or hit_player_obj.url == "2108469290" or hit_player_obj.url == "2047413648"
or hit_player_obj.url == "2154720280" or hit_player_obj.url == "2136624834")
&&  hit_player_obj.introtimer != 0{
	
	take_damage( player, -1 , -1 )	
	/// Zetta Alex Mayu Katie Saji Uza Nolan Elice
if introtimer = -1{
	introtimer = 300
	
}

if get_gameplay_time() % 10 == 0 {
        spawn_hit_fx( x, y , ushadow )
        spr_dir *= -1
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
		sound_play(asset_get("RI"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 15 {
		spawn_hit_fx( x, y, 305)
		sound_play(sound_get("RI2"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 20 {
visible *= -1
draw_indicator *= -1			
		spawn_hit_fx( x, y, 304)
		sound_play(asset_get("RI"),false, noone, 0.6)
	}
}

if introhit == -1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) - 10 {
	  sound_play(asset_get("sfx_roll"),false, noone, 0.6);	
	   sound_play(sound_get("RI2"),false, noone, 0.8);
	  spawn_hit_fx( x, y , darken )	
	}
	if get_gameplay_time() % 20 = 0 {
		spawn_hit_fx( x, y, 302)
		sound_play(asset_get("RI"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 0 {
		spawn_hit_fx( x, y, 305)
		sound_play(sound_get("RI2"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 0 {
		spawn_hit_fx( x, y, 304)
		sound_play(asset_get("RI"),false, noone, 0.6)
	}
}



if get_gameplay_time() % 10 = 0 && introtimer > 1 {
hsp = (room_width/2 - x + 100  - random_func(1, 200, true)) / 6
vsp = (room_height/2 - y - 80  - random_func(2, 160, true)) / 6
}


if introtimer > 0 {
	
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
*/


///

if !free or state = PS_WALL_JUMP {
	
	move_cooldown[AT_USPECIAL] = 0
	if state = PS_WALL_JUMP && state_timer == 1 && fcharge < 3 {
	fcharge += 1
	}
}
////

if (state == PS_LAND or state == PS_LANDING_LAG or state == PS_WALL_JUMP) && get_player_color(player) == 5 && sakura == 1{
	
	if state_timer == 1{
			var hit6 = spawn_hit_fx( x, y, shit6 )
    		hit6.depth = -1000
		
	}
	
	if state_timer == 2{
			var hit7 = spawn_hit_fx( x, y, shit7 )
    		hit7.depth = -1000
		
	}
}

if state == PS_FIRST_JUMP && get_player_color(player) == 5 && sakura == 1 {
	if state_timer == 3{
			var hit8 = spawn_hit_fx( x, y, shit8 )
    		hit8.depth = -1000
		
	}
	
	if state_timer == 9{
			var hit7 = spawn_hit_fx( x, y, shit7 )
    		hit7.depth = -1000
		
	}
	
	
	if state_timer == 15{
			var hit6 = spawn_hit_fx( x, y, shit6 )
    		hit6.depth = -1000
		
	}
}

if get_player_color(player) == 5{
	outline_color = [19, 15, 28]
        init_shader();
}

if get_player_color(player) == 5 && sakura == 1 && hit_player_obj.state_cat == SC_HITSTUN {
	
	

		
	
	if get_gameplay_time() % 24 == 0 {
    	var hit7 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit7 )
    		hit7.depth = -1000

	}
	
  	if get_gameplay_time() % 24 == 12 {
    var hit8 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit8 )
    	hit8.depth = -1000

     }
	
	
	
if get_gameplay_time() % 5 == 0 && (hit_player_obj.hsp > 10 or hit_player_obj.hsp < -10) {
		var hit6 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit6 )
    		hit6.depth = -1000
	}


	
}


if state == PS_IDLE or  state == PS_DASH or (state == PS_IDLE_AIR && state_timer >= 10) or (state == PS_LAND){
	
	usedfspecial = 0
	
}


if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state_cat != SC_HITSTUN {
	if char_height != 50 {
	 char_height = 50
	}
	if dashed != 0 {
	 dashed = 0
	}

if !free  {
	fchargetimer += 1
}

if state == PS_CROUCH  {
	fchargetimer += 4
}
}

if fcharge >= 3{
        fcharge = 3
    }
    
if fchargetimer >= 100{
    fchargetimer = 0
    
    if fcharge < 3{
        fcharge += 1
    }
    
}

if fcharge == 6{
	fchargetimer = 0
}

if fcharge == 0 {
	move_cooldown[AT_FSPECIAL] = 6
}

if fcharge < 1 {
	
	move_cooldown[AT_DSPECIAL] = 6
	
}

if fcharge <= 0{
	fcharge = 0
}

if get_gameplay_time() <= 120 && sakura == 0 and taunt_pressed && get_player_color(player) == 5{
	sakura = 1
	sound_play(asset_get("sfx_gem_collect"));
	
	spawn_hit_fx( x , y - 40, shit5 )
	spawn_hit_fx( x + 80, y - 10, shit7 )
    spawn_hit_fx( x - 80, y - 10, shit7 )
    spawn_hit_fx( x, y - 20, shit6 )
    spawn_hit_fx( x + 40, y - 40, shit8 )
    spawn_hit_fx( x - 40, y - 40, shit8 )
}

if get_gameplay_time() == 1 {
	set_attack (AT_TAUNT)
	window = 2
}


if get_gameplay_time() <= 10 {
	 set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
         set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 4 - abs(hsp/2) );
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -3) - abs(vsp) );
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
          set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED, spr_dir * (random_func(7,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
              set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 1 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/1.5) );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));

}


if state == PS_LANDING_LAG or state == PS_IDLE or state == PS_IDLE_AIR{
	drops = 0
}

/// setstock 

if get_player_color(player) == 8 {
	 outline_color = [19, 15, 28]
   if visible {  
   	if !hitpause {
	if get_gameplay_time() % 40 == 0 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 40 == 26{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 40 == 13 {
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
	
	if get_gameplay_time() % 60 == 0 {
   	set_color_profile_slot(get_player_color(player),4, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 60 == 40{
	set_color_profile_slot(get_player_color(player),4, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 60 == 20 {
	set_color_profile_slot(get_player_color(player),4, 160, 195, 250 );	
	}
	
   	}
   	
   	if hitpause {
	if get_gameplay_time() % 8 == 0	 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 8 == 6{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 8 == 4 {
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
   	}
	}
    init_shader();	 
}

if move_cooldown[AT_NSPECIAL_2] == 0 {
with oPlayer if (activated_kill_effect) {
	
  if hit_player_obj == other {
             with other {
             	 sound_play(sound_get("finish"),false,noone,1,.7)	
               sound_play(sound_get("finish"),false,noone,1.4,1.3)	
               move_cooldown[AT_NSPECIAL_2] = 120
             }
   }
}
}

if state == PS_PRATFALL && state_timer = 300 { 
create_hitbox(AT_DAIR,6,x,y)
create_hitbox(AT_DAIR,7,x,y)
state_timer = 1
}
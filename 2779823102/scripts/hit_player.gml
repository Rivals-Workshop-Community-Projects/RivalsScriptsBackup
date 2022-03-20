//
sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,max(.6, hit_player_obj.hitstop*hit_player_obj.hitstop/150), 3 - min(2, 1 + hit_player_obj.hitstop*hit_player_obj.hitstop/150) )

if hit_player_obj.soft_armor = 0 && hit_player_obj.super_armor = 0 {
   style -= my_hitboxID.damage*floor(4/instance_number(oPlayer))
}

if my_hitboxID.hbox_num == 19 && hit_player_obj.state_cat != SC_HITSTUN{
    hit_player_obj.hitstop = 10
    hit_player_obj.hitpause = true 
    hit_player_obj.old_hsp = hit_player_obj.hsp
    hit_player_obj.old_vsp = hit_player_obj.vsp
}

if hit_player_obj.free = false {
    hit_player_obj.y -= 2
}

if my_hitboxID.hbox_num == 2 {
    vfx = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 30,304)
    vfx.pause = 4
}

if my_hitboxID.hbox_num == 4 {
    vfx = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 30,304)
    vfx.pause = 4
}

if my_hitboxID.hbox_num == 10 {
	move_cooldown[AT_NSPECIAL_2] += 60
    vfx = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 30,304)
    vfx.pause = 6
    hit_player_obj.x = my_hitboxID.x
    hit_player_obj.y = my_hitboxID.y 
    create_hitbox(AT_DTILT,11,my_hitboxID.x,my_hitboxID.y)
    my_hitboxID.destroyed = true
    
    
}

if phaseh = 9 && my_hitboxID.hbox_num == 11 {
    sound_play(sound_get("perish"),false,noone,.8,1)
    move_cooldown[AT_NSPECIAL] += 90
        hit_player_obj.invincible = true 
        hit_player_obj.invince_time = 2
        hit_player_obj.hitstop = 56
    if move_cooldown[AT_DSPECIAL] == 0 move_cooldown[AT_DSPECIAL] = 160 
    if move_cooldown[AT_USPECIAL] == 0 move_cooldown[AT_USPECIAL] = 160
    oattack = 0 
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
			hit_player_obj = shortest_id	
	

    create_hitbox(AT_DTILT,14,hit_player_obj.x, room_height/2 - 60)
    sound_play(asset_get("sfx_ice_on_player"),false,noone,1,.6)
    sound_play(sound_get("flash"),false,noone,.7,1.2)    
}
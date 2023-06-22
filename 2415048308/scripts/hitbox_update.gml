if (attack == AT_NSPECIAL && hbox_num == 1){
	if (came_from_dummy){
		if (player_id.dummy.spr_dir == 1){
			spr_dir = 1;
		}
		if (player_id.dummy.spr_dir == -1){
			spr_dir = -1;
		}
	}
	
	draw_xscale = spr_dir;
	if (hitbox_timer < 30 && hitbox_timer > 22){
		hsp = lengthdir_x(5, point_direction(x,y+20,get_closest_enemy().x,get_closest_enemy().y));
        vsp = lengthdir_y(5, point_direction(x,y+20,get_closest_enemy().x,get_closest_enemy().y));
	}
}

/*if (attack == AT_USPECIAL){
	if (instance_exists(obj_article1)){
	vsp = obj_article1.vsp;
	}
	if (instance_exists(obj_article2)){
	vsp = obj_article2.vsp;
	}
}*/
if (attack == AT_FSPECIAL){
	/*vsp = knife_vsp;
	hsp = knife_hsp;*/
	if (has_hit){
		player_id.knife.state = 3;
	}
}
if (attack == AT_USPECIAL){
	vsp = projectile_vsp;
	if (has_hit){
	}
}
if (attack == AT_NSPECIAL && hbox_num == 2){
	/*if hsp < 0{
		spr_dir = -1;
	}*/
	spr_dir = 1;
	draw_xscale = spr_dir;
	proj_angle = darctan2(vsp, -hsp);
	if (was_parried == false){
	if (hitbox_timer < 50){
		var dir = point_direction(x, y, get_closest_enemy().x, get_closest_enemy().y - 12)
		hsp += lengthdir_x(0.3, dir)
		vsp += lengthdir_y(0.3, dir)
	}
	}
	if (hitbox_timer > 50 && was_parried == false){
		sprite_index = sprite_get("nspecial_proj2_off");
	}
	
	/*if (hsp < 0 && hitbox_timer > 50){
		sprite_index = sprite_get("nspecial_proj2-1_off")
	}*/
}

//ass

#define get_closest_enemy()
{
    if (instance_number(oPlayer)) > 1 
    {
        var cur_dist = 9999;
        var cur_plr = noone;
        with (oPlayer) if id != other.player_id 
        {
    
            if (cur_dist > point_distance(x,y,other.x,other.y)) 
            {
                cur_dist = point_distance(x,y,other.x,other.y);
                cur_plr = id;
            }
    
        }
        return cur_plr;
    } else return player_id;
}
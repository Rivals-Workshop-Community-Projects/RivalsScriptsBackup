//neutral special
if (attack == AT_NSPECIAL){
	if (abs(y) > room_height){
		destroyed = true;
	}
	if (abs(x) > room_width){
		destroyed = true;
	}
	if(free){
		vsp = 1000;
	}
	if(hitbox_timer == 18){
		hit_priority = 0;
	}
}

//down special
if (attack == AT_DSPECIAL){
	if(!free){
        destroyed = true;
		if(!was_parried){
			if(instance_exists(player_id.m_lava)){
				instance_destroy(player_id.m_lava);
			}
			player_id.m_lava = instance_create(x-0*spr_dir, y-20, "obj_article1");
			player_id.m_lava.player_id = player_id;
			player_id.m_lava.orig_player_id = player_id;
		}
	}
	if (was_parried){
		instance_destroy(player_id.m_lava);
	}
	if (spr_dir == -1){
		proj_angle = point_direction(x, y, x-hsp, y-vsp);
	}
    if (spr_dir == 1){
		proj_angle = point_direction(x, y, x+hsp, y+vsp);
	}
	//var hitHitbox = false;
//with (pHitBox){
  //if(id != other.id){
    //if(place_meeting(x,y,other)){
      //hitHitbox = true;
	  //other.player = player;
    //}
  //}
//}
//if(hitHitbox){
  //vsp *= -1;
  //hsp *= -1;
//}
}
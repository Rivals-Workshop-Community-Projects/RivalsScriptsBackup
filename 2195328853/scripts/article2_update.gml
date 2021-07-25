//article1_update

steam_timer += 1;
if (get_player_color( player ) != 11){
	if(get_gameplay_time() % 6 == 0){
		if(steam_anim2 == 0){
		    steam_anim += 1;
		    if(steam_anim > 3){
		    	steam_anim2 = 1;steam_anim = 3;
		    }
		}else if(steam_anim2 == 1){
		    steam_anim -= 1;
		    if(steam_anim < 0){
		    	steam_anim2 = 0;steam_anim = 0;
		    }
		}image_index = steam_anim;
	}
}else if (get_player_color( player ) == 11){
	if(get_gameplay_time() % 4 == 0){
		steam_anim += 1;
		if(steam_anim > 5){
			steam_anim = 0;
		}
		image_index = steam_anim;
	}
}

hsp *= 0.95;vsp *= 0.8;

with(asset_get("pHitBox")){
    if(other.hitlockout <= 0 && (((attack != AT_FSPECIAL || attack == AT_FSPECIAL && hbox_num != 2) && other.hitlockout2 <= 0 && player_id == other.player_id) /*|| player_id != other.player_id*/)){
        if(place_meeting(x,y,other)){
        	if(damage > 0 && kb_value > 0){
	        		//if(other != ballhitbox /*&& place_meeting(x,y,other)*/ && player != other.player){
	                other.hitlockout = 20;
	                other.hitlockout2 = 60;
	        		other.spr_dir = spr_dir;
					
		            other.hsp = cos(degtorad(kb_angle))*(kb_value+(kb_scale*2))*spr_dir;
		            if(!other.free && (kb_angle > 180 && kb_angle < 360)){
		            	other.vsp = -sin(degtorad(-kb_angle))*(kb_value+(kb_scale*2));
		            }else{
		            	other.vsp = -sin(degtorad(kb_angle))*(kb_value+(kb_scale*2));
		            }
	                spawn_hit_fx(other.x, other.y, hit_effect);
					sound_play(sound_effect);
	                other.lasthitbox = id;
	            }
        }
    }
}
hitlockout -= 1;
if (instance_exists(lasthitbox)) {
	hitlockout2 -= 1;
}else{
	hitlockout2 -= 10;
}

if (get_player_color( player ) != 11){
	if(get_gameplay_time() % 2 == 0){
		var rand_dir = random_func(1, 359, true);
		spawn_hit_fx((x) + round(lengthdir_x(-25, rand_dir)), y + round(lengthdir_y(-25, rand_dir)), player_id.fx_bluetrail3);
	}
	if(get_gameplay_time() % 4 == 0){
		var rand_dir = random_func(1, 359, true);
		spawn_hit_fx((x) + round(lengthdir_x(35, rand_dir)), y + round(lengthdir_y(35, rand_dir)), player_id.fx_bluetrail3);
	}
}else if (get_player_color( player ) == 11){
    if(get_gameplay_time() % 6 == 0){
    	var rand_dir = random_func(1, 359, true);
    	spawn_hit_fx((x) + round(lengthdir_x(20, rand_dir)), y + round(lengthdir_y(20, rand_dir)), player_id.fx_star_trail);
    }
}

if (instance_exists(steamhitbox)) { //hitbox
    steamhitbox.x = x;steamhitbox.y = y;
    /*if(steamhitbox.was_parried){
        instance_destroy(steamhitbox);
        instance_destroy();
        exit;
    }*/
} else {
	if(steam_timer < steamlifetime-1){
		steamhitbox = create_hitbox(AT_FSPECIAL,2,round(x),round(y))
		steamhitbox.player = current_player;
	}
}

if(steam_timer >= steamlifetime){
	instance_destroy();
    exit;
}
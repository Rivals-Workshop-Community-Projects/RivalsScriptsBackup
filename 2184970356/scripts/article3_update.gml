//article update

// Allows for vertical movement for All Characters / Inifinite Jumps
with (asset_get("oPlayer")){
	if (place_meeting (x, y + 20, other.id)){
		can_jump = true;
		djumps = 0;
		if (vsp >= -6){
			if (state != PS_DOUBLE_JUMP || state_cat != SC_HITSTUN){
				vsp = vsp - 0.6;
			}
		}
		
		if (hsp > -6 || hsp < 6){
			if ((state != PS_DOUBLE_JUMP || state_cat != SC_HITSTUN) && !down_down){	
				hsp = hsp * 1.02;
			}
		}
		
		if (down_down){
			vsp = 5;
		}		
		
		if (down_pressed){
			hsp = 0;
		}
	}
	if ((get_instance_x(other.id) > (get_instance_x(id) - 80) && get_instance_x(other.id) < (get_instance_x(id) + 20)) && get_instance_y(other.id) >= get_instance_y(id) - 60){
		id.player_buff = true;
	}
	else {
		id.player_buff = false;	
	}
}

if (check &&  y < room_height){
	var Wind = instance_create( x, y - 60, "obj_article3");
	Wind.player_id = player_id;
	Wind.player = player;
	check = false;
}

if (y < -60){
	instance_destroy();
	exit;
}

// Destroys cloud if cloud is out too long / another cloud is summoned / if the cloud has been hit 5 times
if (lifeTimer >= 0){
	lifeTimer = lifeTimer + 1;
}

if (lifeTimer >= 600){
	instance_destroy();
	exit;
}

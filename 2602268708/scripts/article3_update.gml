
if (player_id.nspecial_grabbed_player == id){
	spr_dir = player_id.spr_dir;
	if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
		
		var angle = 50;
		var knockback = 8; //get_hitbox_value(player_id.attack, 1, player_id.HG_BASE_KNOCKBACK)
					
		var throw_windtimer = 1;
		var throw_window = 1;
		switch(player_id.attack){
			case AT_DTHROW:
				angle = 270;
				throw_window = 2;
			break;
			case AT_UTHROW:
				angle = 100;
				throw_window = 2;
			break;
			case AT_EXTRA_1:
				angle = 135;
				throw_window = 2;
			break;
			default:
				angle = 50;
				throw_window = 2;
			break;
		}
						
		if (player_id.attack == AT_FTHROW || player_id.attack == AT_DTHROW || player_id.attack == AT_UTHROW || player_id.attack == AT_EXTRA_1) && (player_id.window == throw_window && player_id.window_timer == throw_windtimer){
			player_id.nspecial_grab_timer = 0;
			player_id.nspecial_grabbed_player = noone;
						
			hsp = (knockback * cos(degtorad(angle)) * player_id.spr_dir);
			vsp = (-knockback * sin(degtorad(angle)));
						
			if hsp != 0 // correct face dir
				spr_dir = sign(hsp);
				
			if ("hitbox" in self && instance_exists(hitbox)){}
			else{
				hitbox = create_hitbox(AT_USPECIAL, 2, x, y);
				hitbox.ownerarticle = id;
			}
			if ("hitbox2" in self && instance_exists(hitbox2)){}
			else{
				hitbox2 = create_hitbox(AT_USPECIAL, 1, x, y);
				hitbox2.ownerarticle = id;
			}
		}
	}
	exit;
}
else{
	var chuck_distance = point_distance(player_id.x, player_id.y, x, y);
	if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
		if (player_id.attack == AT_NSPECIAL) && (chuck_distance <= 50 && player_id.nspecial_grabbed_player == noone) && (player_id.window <= 2) && grab_disabletime == 0{
			player_id.nspecial_grab_timer = player_id.nspecial_grab_max_time;
			player_id.nspecial_grabbed_player = id;
			disappear_time = 0;
			disable_hitboxes = false;
			
			if ("hitbox" in self && instance_exists(hitbox))
				hitbox.destroyed = true;
			if ("hitbox2" in self && instance_exists(hitbox2))
				hitbox2.destroyed = true;
			exit;
		}
	}	
	if (grab_disabletime > 0){
		grab_disabletime = max(grab_disabletime-1, 0)
	}
}

var xlast = x;

if (free){
	vsp += grav_speed;
	
	if (!disable_hitboxes){
		if ("hitbox" in self && instance_exists(hitbox)){}
		else{
			hitbox = create_hitbox(AT_USPECIAL, 2, x, y);
			hitbox.ownerarticle = id;
		}
		if ("hitbox2" in self && instance_exists(hitbox2)){}
		else{
			hitbox2 = create_hitbox(AT_USPECIAL, 1, x, y);
			hitbox2.ownerarticle = id;
		}
	}
	else{
		if ("hitbox" in self && instance_exists(hitbox))
			hitbox.destroyed = true;
		if ("hitbox2" in self && instance_exists(hitbox2))
			hitbox2.destroyed = true;
	}
}
else{
	disable_hitboxes = false;
	vsp = 0;
	
	if (hsp > 0)
		hsp = max(hsp - ground_frict, 0)
	else if (hsp < 0)
		hsp = min(hsp + ground_frict, 0)
	
	if (round(hsp) == 0){
		if (cannon_dir > 0)
			cannon_dir = max(cannon_dir - (ground_frict*4), 0)
		else if (cannon_dir < 0)
			cannon_dir = min(cannon_dir + (ground_frict*4), 0)
	}
}

++disappear_time;

if (disappear_time > disappear_time_max){
	if "hitbox" in self && instance_exists(hitbox)
		hitbox.destroyed = true;
	if "hitbox2" in self && instance_exists(hitbox2)
		hitbox2.destroyed = true;
    instance_destroy();
    exit;
}

if ("hitbox" in self && instance_exists(hitbox)){
	hitbox.x = x + hsp + 1;
	hitbox.y = y + vsp - 23;
	hitbox.destroyed = (free) ? false : true;
	/*
	var directionToTarget = point_direction(x, y, x + hsp, y + vsp);

	hitbox.kb_angle = directionToTarget;
	*/
}

if ("hitbox2" in self && instance_exists(hitbox2)){
	var wtf_ang = cannon_dir-90;
	var wtf_fuck = 16;
	var wtf_x = -wtf_fuck * cos(degtorad(wtf_ang));
	var wtf_y = wtf_fuck * sin(degtorad(wtf_ang));

	hitbox2.mask_index = sprite_get("uspecial_barrel_mask"); 
	hitbox2.image_angle = cannon_dir;
	
	hitbox2.x = x + hsp + wtf_x + 1;
	hitbox2.y = y + vsp + wtf_y - 17;
	hitbox2.destroyed = (free) ? false : true;
	/*
	var directionToTarget = point_direction(x, y, x + hsp, y + vsp);

	hitbox2.kb_angle = directionToTarget;
	*/
}

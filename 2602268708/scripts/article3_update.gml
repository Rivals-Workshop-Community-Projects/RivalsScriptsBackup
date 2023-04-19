
depth = player_id.depth + 1;

if (player_id.nspecial_grabbed_player == id){

//update hitbox values to be stronger when thrown
with (player_id) {
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
}

	spr_dir = player_id.spr_dir;
	if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
		
		var angle = 50;
		var knockback = 8;
					
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
				hitbox = create_hitbox(AT_USPECIAL, 1, x, y);
				hitbox.ownerarticle = id;
				hitbox.fx_particles = 2;
			}
		}
	}
	exit;
} else{
	var chuck_distance = point_distance(player_id.x, player_id.y, x, y);
	if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
		if (player_id.attack == AT_NSPECIAL) && (chuck_distance <= player_id.grab_radius && player_id.nspecial_grabbed_player == noone) && (player_id.window <= 2) && grab_disabletime == 0{
			player_id.nspecial_grab_timer = player_id.nspecial_grab_max_time;
			player_id.nspecial_grabbed_player = id;
			disappear_time = 0;
			disable_hitboxes = false;
			
			if ("hitbox" in self && instance_exists(hitbox))
				hitbox.destroyed = true;
			exit;
		}
	}	
	if (grab_disabletime > 0){
		grab_disabletime = max(grab_disabletime-1, 0)
	}
}

var xlast = x;

if (free){

landed = 0;

	vsp += grav_speed;
	
	if (!disable_hitboxes){
		if ("hitbox" in self && instance_exists(hitbox)){}
		else{
			hitbox = create_hitbox(AT_USPECIAL, 1, x, y);
			hitbox.ownerarticle = id;
			hitbox.fx_particles = 2;
		}
	}
	else{
		if ("hitbox" in self && instance_exists(hitbox))
			hitbox.destroyed = true;
	}
} else{
    if landed = 0 {
    sound_play(sound_get("sm64_clink"));
	shake_camera( 6, 10 );
	    with player_id {
		    array_push(phone_dust_query, [other.x + other.hsp*2, other.y, "dash_start", -1]);
			array_push(phone_dust_query, [other.x + other.hsp*2, other.y, "dash_start", 1]);
		}
	landed = 1;
	}
	
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

with player_id {
	if !has_rune("C") {
        other.disappear_time++;
	}
}


if (disappear_time > disappear_time_max){
	if "hitbox" in self && instance_exists(hitbox)
		hitbox.destroyed = true;
    instance_destroy();
    exit;
}

if ("hitbox" in self && instance_exists(hitbox)){
	hitbox.x = x + hsp + 1;
	hitbox.y = y + vsp - 23;
	hitbox.destroyed = (free) ? false : true;
}

if y > get_stage_data(SD_BOTTOM_BLASTZONE_Y){
disappear_time = disappear_time_max+1;
}
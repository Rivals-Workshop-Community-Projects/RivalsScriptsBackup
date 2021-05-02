//Detonate when T&A enter lightning state

if player_id.lightning{
	if state != 4 && state != 5 && state != 2 setState(5);
}



//Enforce cloud limit

else{
	var total_clouds = 0;                             //This gets incremented whenever a new article is created.
	var oldest = -1;                                    //Records the oldest article found's exist_timer. -1 means nothing found yet
	var oldest_obj = noone;                             //Records the oldest article found's ID.
	
	with(asset_get("obj_article1")){ //Change articleX to article1 or etc
	    if (player_id == other.player_id){
	        total_clouds++;
	        if (oldest == -1 || exist_timer > oldest){
	            oldest = exist_timer;
	            oldest_obj = id;
	        }
	    }
	}
	
	with player_id if !snail total_clouds++;
	
	if (total_clouds > player_id.max_clouds && !oldest_obj.dying){
	    oldest_obj.should_die = true;
	}
}



switch(state){
		
	case 10: //USpecial
	case 11: //FSpecial
		sprite_index = (state == 10 ? player_id.spr_cloud_uspecial : player_id.spr_cloud_fspecial);
	
	case 0: //Spawning
		var s_t_max = (state == 11 ? 25 : 20);
		image_index = lerp(0, image_number, state_timer / s_t_max);
		
		if collide() has_been_pushed = true;
		
		if has_been_pushed hsp *= 0.5;
		else hsp *= 0.9;
		if (abs(hsp) < 1) hsp = 0;
		
		vsp *= 0.9;
		if (abs(vsp) < 1) vsp = 0;
		
		screenBorder(s_t_max);
		
		if (state_timer == s_t_max) setState(1);
		break;
		
	case 12: //NSpecial
		sprite_index = player_id.spr_cloud_nspecial;
		var s_t_max = (image_number + 1) * 5;
		image_index = lerp(0, image_number, state_timer / s_t_max);
		
		if (state_timer == 1) has_face_spawned = false;
		
		if (image_index > 4){
			
			if !has_face_spawned{
				instance_create(x, y - 20, "obj_article2");
				has_face_spawned = true;
			}
		
			if collide() has_been_pushed = true;
			
			if has_been_pushed hsp *= 0.5;
			else hsp *= 0.9;
			if (abs(hsp) < 1) hsp = 0;
			
			vsp *= 0.9;
			if (abs(vsp) < 1) vsp = 0;
			
			screenBorder(s_t_max);
			
			x = lerp(x, player_id.x, 0.1);
			y = lerp(y, player_id.y, 0.01);
			
		}
		
		if (state_timer == s_t_max) setState(1);
		break;
		
	case 1: //Idle
		image_index += 0.1;
		x = orig_x + sin(state_timer / 16) * 4;
		y = orig_y + sin(state_timer / 8) * 2;
		hsp *= 0.5;
		vsp *= 0.5;
		if (abs(hsp) < 1) hsp = 0;
		if (abs(vsp) < 1) vsp = 0;
		
		getHit();
		break;
	
	case 2: //Die
		var s_t_max = 28;
		image_index = lerp(0, 7, state_timer / s_t_max);
		hsp = 0;
		vsp = 0;
		if (state_timer == s_t_max){
			instance_destroy();
			exit;
		}
		break;
		
	case 3: //Launched
		var s_t_max = 20;
		image_index = lerp(0, image_number, state_timer / s_t_max);
		
		if collide() has_been_pushed = true;
		
		if has_been_pushed hsp *= 0.5;
		else hsp *= 0.9;
		if (abs(hsp) < 1) hsp = 0;
		
		vsp *= 0.9;
		if (abs(vsp) < 1) vsp = 0;
		
		screenBorder(s_t_max);
		
		if (state_timer == s_t_max) setState(1);
		
		break;
	
	case 4: //c o n s u m e
		dying = true;
		var s_t_max = 20;
		sprite_index = player_id.spr_cloud_spawn;
		image_index = lerp(image_number - 1, -1, state_timer / s_t_max);
		
		hsp = 0;
		vsp = 0;
		
		x = lerp(x, player_id.x, 0.25);
		y = lerp(y, player_id.y, 0.25);
		
		if (state_timer == s_t_max){
			instance_destroy();
			exit;
		}
		break;
		
	case 5: //Explode
		var s_t_max = 20;
		sprite_index = player_id.spr_cloud_explode;
		image_index = lerp(0, image_number, state_timer / s_t_max);
		
		hsp = 0;
		vsp = 0;
		
		if (state_timer == 5) create_hitbox(AT_EXTRA_1, 1, round(x), round(y) - 32);
		
		if (state_timer == s_t_max) setState(2);
		break;
	
	case 6: //Trumpet
	
		var nspecialing = (player_id.attacking && player_id.attack == AT_NSPECIAL_2);
		sprite_index = player_id.spr_cloud_trumpet;
		image_index = player_id.image_index * nspecialing;
		spr_dir = player_id.spr_dir;
		depth = player_id.depth - 1 - cloud_num;
		
		var target_x = player_id.x;
		var target_y = player_id.y;
		
		switch(cloud_num){
			case 0:
				target_x -= 10 * spr_dir;
				target_y -= 80;
				// image_angle = -20 * spr_dir;
				break;
			case 1:
				target_x -= 30 * spr_dir;
				target_y += 10;
				// image_angle = 20 * spr_dir;
				break;
			case 2:
				target_x -= 80 * spr_dir;
				target_y -= 32;
				break;
		}
		
		if (image_index < 2){
			
			var amt = nspecialing ? 0.2 : 0.01;
			
			x = round(lerp(x, target_x, amt));
			y = round(lerp(y, target_y, amt));
			
			if !player_id.attacking setState(2);
			
		}
		
		if (image_index >= image_number) should_die = true;
		
		break;
}



//Clairen plasma field will destroy the article

if (place_meeting(x, y, asset_get("plasma_field_obj")) && state != 2 && state != 4) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    // spawn_hit_fx(floor(x),floor(y),256)
    should_die = true;
}



//Make time progress
if !hitstop{
    state_timer++;
}

exist_timer++;



if should_die && !dying{
	setState(2);
	dying = true;
	image_angle = 0;
}



#define getHit

var true_x = (state == 1) ? orig_x : x;
var true_y = (state == 1) ? orig_y : y;

with pHitBox if "trummel_dont_push" not in self && !(player_id == other.player_id && attack == AT_FSPECIAL) {
	with other if place_meeting(true_x, true_y, other){
		setState(3);
		var ang = get_hitbox_angle(other);
		var str = other.kb_value * 1;
		hsp = lengthdir_x(str, ang);
		vsp = lengthdir_y(str, ang);
	}
}



#define collide

var pushed = false;

with (obj_article1) if (player_id.muno_char_id == other.player_id.muno_char_id && state == 1 && place_meeting(orig_x, orig_y, other)){
	other.hsp = sign(other.x - orig_x) * 10;
	if !abs(other.hsp) other.hsp = 10;
	pushed = true;
}

return pushed;



#define screenBorder(s_t_max)

var border_x = 50;
var border_y = 80;
var clamped_x = clamp(x, border_x, room_width - border_x);
var clamped_y = clamp(y, border_y, room_height - border_y + 40);
var amt = (state_timer == s_t_max) ? 1 : 0.25;
if x != clamped_x{
    hsp = 0;
    x = lerp(x, clamped_x, amt);
}
if y != clamped_y{
    vsp = 0;
    y = lerp(y, clamped_y, amt);
}



#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

if (state == 1){
	x = orig_x;
	y = orig_y;
}
depth = orig_depth;
prev_state = state;
state = new_state;
state_timer = 0;
image_index = 0;
orig_x = x;
orig_y = y;

switch(state){
	case 0:
		sprite_index = player_id.spr_cloud_spawn;
		break;
	case 1:
	case 3:
		sprite_index = player_id.spr_cloud_idle;
		break;
	case 2:
		sprite_index = player_id.spr_cloud_die;
		break;
}

spr_dir = 1;
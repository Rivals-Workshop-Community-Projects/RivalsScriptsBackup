var oob = (y > room_height || x != clamp(x, 0, room_width));
var par = player_id.was_parried;
if oob || par hitbox_timer = length;

if was_parried has_spawned_cloud = true;

switch(attack){
	case AT_USTRONG:
		image_index = floor(image_number * hitbox_timer / length);
		if (image_index > image_number - 3){
			hsp *= 0.5;
			vsp *= 0.5;
			if ("can_no_longer_hit" not in self){
				for (var i = 0; i < 20; i++){
				    can_hit[i] = 0;
				}
				can_no_longer_hit = 1;
				image_xscale = 0;
				image_yscale = 0;
			}
		}
		else{
			var grav = (abs(vsp) < 3) ? 0.5 : 0.8;
			vsp += grav;
			vsp = min(vsp, 10);
			
			if (vsp > 0) hsp *= 0.95;
		}
		if vsp < -5 && hitbox_timer % 10 == 1 && !player_id.phone.phone_settings[player_id.phone.setting_fast_graphics]{
			var hfx = spawnDrop();
			hfx.vsp = -5;
			hfx.hsp = hsp * -.5;
			hfx.x = x + hsp * 5;
			hfx.y = y;
		}
	
	case AT_FSTRONG:
		var touching = place_meeting(x, y, asset_get("par_block"));
		if (hitbox_timer == length || touching) && !was_parried && false{
			var cld = instance_create(x, y + 22, "obj_article1");
			cld.hsp = hsp * 0.5;
			cld.vsp = vsp * 0.5;
			has_spawned_cloud = true;
		}
		if touching{
			instance_destroy();
			exit;
		}
		break;
		
	case AT_DSTRONG:
		var critical = (image_index > image_number - 4);
		
		if ("timer_set" not in self){
			var last_time = player_id.last_charge_frame * length / image_number;
			hitbox_timer = round(last_time - lerp(0, round(last_time), player_id.dstrong_charge / 60));
			
			hsp = -2 * spr_dir;
			vsp = -6;
			
			prev_free = true;
			has_bounced = false;
			
			proj_angle = -60 * spr_dir;
			
			exist_timer = 0;
			
			timer_set = true;
		}
		
		image_index = image_number * (hitbox_timer / length);
		
		if free{
			vsp += 0.5;
			hsp -= 0.025 * sign(hsp);
			if !critical && !oob hitbox_timer--;
			
			if (abs(proj_angle % 360) < 3) proj_angle = 0;
			else proj_angle -= 2 * sign(proj_angle);
			
			if (exist_timer < 20) proj_angle += ease_quadOut(45, 2, exist_timer, 20) * sign(proj_angle);
		}
		
		else{
			proj_angle = 0;
			
			if !has_bounced && prev_free{
				sound_play(asset_get("sfx_metal_hit_weak"));
				vsp = -5;
				hsp = clamp(hsp, -2, 2);
				proj_angle = 10 * spr_dir;
				has_bounced = true;
			}
			
			else{
				if (prev_free == 15) sound_play(asset_get("sfx_mobile_gear_jump"))
				var spd = (player == orig_player ? 4 : 8) * spr_dir; // used to always be 4
				if critical{
					hsp -= 0.5 * sign(hsp);
					if (abs(hsp) < 1) hsp = 0;
				}
				else{
					if prev_free hsp = lerp(hsp, spd, 0.15);
					else{
						hsp = spd;
						has_bounced = false;
					}
				}
				vsp = 0;
			}
		}
		
		prev_free--;
		if free prev_free = 15;
		
		exist_timer++;
		
		
		if (hitbox_timer == length && !was_parried && false){
			var cld = instance_create(x, y + 22, "obj_article1");
			cld.hsp = hsp * 0.5;
			cld.vsp = vsp * 0.5;
			if (vsp == 0) cld.vsp = -3;
			has_spawned_cloud = true;
		}
		
		break;
		
	case AT_DSPECIAL:
		if (!free || has_hit || y >= room_height) && hitbox_timer > 1{
			spawn_hit_fx(x, y + 6, player_id.vfx_rain_splash);
			if (hbox_num == 3 && false){
				var cld = instance_create(x, y + 22, "obj_article1");
				cld.vsp = -4;
			}
			instance_destroy();
			exit;
		}
		if (hitbox_timer % 10) - 1 == 0 && !player_id.phone.phone_settings[player_id.phone.setting_fast_graphics]{
			spawnDrop();
		}
		break;
}



#define spawnDrop


var hfx_x = x + random_func(0, 40, true) - 20;
var hfx_y = y - random_func(0, 20, true);

var hfx = spawn_hit_fx(hfx_x, hfx_y, player_id.vfx_rain_drop);
hfx.trum_manip_id = player_id;
hfx.vsp = 3;

return hfx;
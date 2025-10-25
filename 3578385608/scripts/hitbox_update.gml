if attack == AT_FTILT && hitbox_timer%10 == 0{
	array_copy(can_hit, 0, array_create(array_length(can_hit), 1), 0, array_length(can_hit));
}

if attack == AT_FSTRONG{
	kb_scale = lerp(1, .7, hitbox_timer/length);
	proj_angle = point_direction(0, 0, hsp, vsp) + 90 - 90*spr_dir;
	if hitbox_timer >= 12 image_index = 4;
	player_id.move_cooldown[AT_FSTRONG] = 30;
	if !free || y >= room_height + 100{
		spawn_hit_fx(x, y, hit_effect);
		sound_play(sound_effect);
		instance_destroy(self);
		exit;
	}
}

if attack == AT_NSPECIAL{
	switch hbox_num{
		case 1:
		image_index = kill_me+1;
		proj_angle = -hitbox_timer*10*spr_dir;
		if kill_me+1 hit_effect = [29, 311, 29, 29, 29, 29][kill_me];
		if destroyed || destroyed_next{
			sound_play(sound_get("shatter"));
			switch kill_me{
				case 0: //Liquid Nitrogen
				sound_play(sound_get("steam_release"));
				break;
				case 2: //Superheated Water
				create_hitbox(AT_NSPECIAL, 4, x + 30, y);
				create_hitbox(AT_NSPECIAL, 4, x - 30, y);
				sound_play(asset_get("sfx_waterwarp_start"));
				break;
				case 3: //Hydrofluoric Acid
				var boundl = 0;
				var boundr = 0;
				while boundl < 92 && ground_at_pos(x - boundl, y + 16) boundl++;
				while boundr < 92 && ground_at_pos(x + boundr, y + 16) boundr++;
				create_hitbox(AT_NSPECIAL, 5, x + boundr - 30, y);
				create_hitbox(AT_NSPECIAL, 5, x - boundl + 30, y);
				create_hitbox(AT_NSPECIAL, 5, x + boundr-boundl, y);
				sound_play(asset_get("sfx_waterwarp_start"));
				sound_play(sound_get("steam_release"));
				create_hitbox(AT_NSPECIAL, 3, x, y);
				break;
				case 4: //Phosphine
				var g = create_hitbox(AT_NSPECIAL, 6, x, y);
				g.player = player;
				g.reflected = reflected;
				sound_play(sound_get("steam_release"));
				break;
				case 5: //Fulminated Mercury
				destroy_fx = 261;
				create_hitbox(AT_NSPECIAL, 2, x, y);
				sound_play(asset_get("sfx_mol_norm_explode"));
				break;
			}
		}
		break;
		
		case 4:
		if free hitbox_timer = 0;
		if y > room_height + 500{
			instance_destroy(self);
			exit;
		}
		depth = player_id.depth-1;
		image_index = (hitbox_timer >= 12? (hitbox_timer >= length - 24? 8 + ((hitbox_timer - length + 24)/4): 4 + (id + hitbox_timer/4)%4): hitbox_timer/3);
		if hitbox_timer == length-24 sound_play(sound_get("steam_release"));
		if hitbox_timer == clamp(hitbox_timer, 12, length-24) && !(hitbox_timer%10) spawn_area_effect(player_id.water_steampulse, x, y, 50, 0, 0, id);
		break;
		
		case 5:
		if free hitbox_timer = 0;
		if y > room_height + 500{
			instance_destroy(self);
			exit;
		}
		depth = player_id.depth-1;
		image_index = (hitbox_timer >= 12? (hitbox_timer >= length - 12? 8 + ((hitbox_timer - length + 12)/4): 4 + (id + hitbox_timer/4)%4): hitbox_timer/3);
		if free platcheck = -1;
		if platcheck == -1 platcheck = place_meeting(x, y+1, asset_get("par_jumpthrough"));
		if platcheck && hitbox_timer >= 12 && !(hitbox_timer%6) spawn_area_effect(player_id.acidbubbbles, x, y, 40, 0, 0, id, 0, -1);
		break;
		
		case 6:
		depth = player_id.depth-1;
		vsp = -1;
		image_index = (hitbox_timer >= 8? (hitbox_timer >= length - 16? 10 + ((hitbox_timer - length + 16)/4): 2 + (hitbox_timer/4)%8): hitbox_timer/4);
		if hitbox_timer%10 == 0 array_copy(can_hit, 0, array_create(array_length(can_hit), 1), 0, array_length(can_hit));
		break;
	}
}

#define spawn_area_effect
/// spawn_area_effect(fx, dx, dy, area_width, area_height, angle = 1, seed = 0, hspd = 0, vspd = 0, grav = 0, move_out = 0;)
var fx = argument[0], dx = argument[1], dy = argument[2], area_width = argument[3], area_height = argument[4];
var angle = argument_count > 5 ? argument[5] : 1;
var seed = argument_count > 6 ? argument[6] : 0;
var hspd = argument_count > 7 ? argument[7] : 0;
var vspd = argument_count > 8 ? argument[8] : 0;
var grav = argument_count > 9 ? argument[9] : 0;
var move_out = argument_count > 10 ? argument[10] : 0;;
/*effect ids
0 -vfx_ssj2_lightning
1 -vfx_evo_sparkle
2 -vfx_galick_gun_charge
3 -vfx_ssj2_lightning_small
4 -vfx_ki_charge
*/
var og_x = dx;
var og_y = dy;
dx += random_func(1 + seed, area_width, true) - area_width/2;
dy += random_func(2 + seed, area_height, true) - area_height/2;

var da = angle;

var h = spawn_hit_fx(dx, dy, fx);

h.hsp = hspd;
h.vsp = vspd;
if move_out{
	var am = point_distance(0, 0, hspd, vspd);
	var dir = point_direction(og_x, og_y, dx, dy);
	h.hsp = lengthdir_x(am, dir);
	h.vsp = lengthdir_y(am, dir);
}
h.grav = grav;
h.draw_angle = da;
if dx % 2 == 0 h.depth = depth-1;

#define ground_at_pos(xpos, ypos) //I'm lazy
return position_meeting(xpos, ypos, asset_get("par_block")) || position_meeting(xpos, ypos, asset_get("par_jumpthrough"));
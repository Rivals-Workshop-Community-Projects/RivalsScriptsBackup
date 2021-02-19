//article1_init

if pause_joke >= pause_joke_needed {
sound_play(asset_get("mfx_player_ready"))
pause_joke = 0;
}




//if !surface_exists(shade_surf) shade_surf = surface_create(512,512)

if (attack == AT_FSTRONG or attack == AT_DSTRONG or attack == AT_USTRONG) && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && window == 2 && image_index >= 4 {
	image_index = 4 + (state_timer*0.2) mod 4
}

if sprite_index == sprite_get("idle") && get_player_color(player) == 13 {
	sprite_index = sprite_get("idleG");
	image_index = state_timer * idle_anim_speed;
}

if intro && (state == PS_IDLE or state == PS_SPAWN) {
	sprite_index = sprite_get("intro");
	var plrnum = 5 + (player)
	image_index = (state_timer*introspeed)-plrnum;
	if floor(image_index) == 0 && ((state_timer-1)*introspeed)-plrnum < 0 {

		sound_play(asset_get("sfx_forsburn_reappear_hit"))
		sound_play(sound_get("mollo_pop"))
	}
	if image_index >= image_number-1 {intro = 0;}
	if image_index < 0 {sprite_index = asset_get("empty_sprite"); draw_indicator = false;}
	
	if image_index < 1 {
		aerial_strong_toggle = attack_down;
		brickmode = runeD
	}
} else intro = 0;


if (attack == AT_USPECIAL) && window == 4 {
	spr_angle = point_direction(0,0,hsp,-10)-90
}
if (attack == AT_USPECIAL) && window > 4 {
	spr_angle = lerp(spr_angle,0,0.1)
}
if (attack == AT_USPECIAL) && window == 3 {
	spr_angle = lerp(spr_angle,point_direction(0,0,hsp,-10)-90,0.5)
}

if state == PS_DOUBLE_JUMP && djumps > 1 {
sprite_index = sprite_get("triplejump");
image_index = state_timer/6
}


		if instance_exists(bombins) {
			
			if attack = AT_FSTRONG switch(floor(image_index)) {
				default: break;
				case 3:
					bombins.x = x-22*spr_dir
					bombins.y = y-56
				break;
				case 4:
				case 5:
				case 6:
				case 7:
					bombins.x = x-26*spr_dir
					bombins.y = y-52
				break;
				case 8:
					bombins.x = x-12*spr_dir
					bombins.y = y-66
				break;
				case 9:
					bombins.x = x+22*spr_dir
					bombins.y = y-62
				break;
			}
			if attack == AT_USTRONG switch(floor(image_index)) {
				default: break;
				case 3:
					bombins.x = x-18*spr_dir
					bombins.y = y-46
				break;
				case 4:
				case 5:
				case 6:
				case 7:
					bombins.x = x-18*spr_dir
					bombins.y = y-40
				break;
				case 8:
					bombins.x = x-4*spr_dir
					bombins.y = y-72
				break;
				case 9:
					bombins.x = x+8*spr_dir
					bombins.y = y-86
				break;
			}
			if attack == AT_DSTRONG switch(floor(image_index)) {
				default: break;
				case 2:
					bombins.x = x-8*spr_dir
					bombins.y = y-40
				break;
				case 3:
					bombins.x = x-16*spr_dir
					bombins.y = y-34
				break;
				case 4:
				case 5:
				case 6:
				case 7:
					bombins.x = x-20*spr_dir
					bombins.y = y-30
				break;
				case 8:
					bombins.x = x+10*spr_dir
					bombins.y = y-16
				break;
				case 9:
					bombins.x = x+26*spr_dir
					bombins.y = y-40
				break;

			}
		}
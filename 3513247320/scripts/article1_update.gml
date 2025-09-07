switch article_state{
	case "SPAWN":
		image_index += 1/3;
		if image_index >= 3{
			article_state = "IDLE";
			image_index = 3;
		}
	break;
	case "IDLE":
		image_index += 1/10;
		if image_index >= 5 image_index = 3;
	break;
	case "BOUNCE":
		image_index += 1/4;
		if image_index >= 14{
			article_state = "IDLE";
			image_index = 3;
		}
	break;
	case "DESPAWN":
		hsp = 0;
		vsp = 0;
		
		can_be_grounded = false;
		ignores_walls = true;
		
		image_index += 1/4;
		if image_index >= image_number{
			vsp = pillar_ascent_speed;
			if y < get_stage_data(SD_TOP_BLASTZONE_Y) - 200 && !instance_exists(oTestPlayer){
				instance_destroy(self);
				exit;
			}
			image_index -= 1/4;
		}
	break;
}

//if free && place_meeting(x, y + 2 + vsp, asset_get("par_block")) || place_meeting(x, y + 2 + vsp, asset_get("par_jumpthrough")){
	//var ground = place_meeting(x, y + 2, asset_get("par_block")) || place_meeting(x, y + 2, asset_get("par_jumpthrough"));
	//if instance_exists(ground) y = get_instance_y(ground);
//}

if article_state != "DESPAWN"{
	if free vsp = clamp(vsp + grav, 0, max_fall);
	else vsp = 0;
	
	if article_timer >= article_lifetime || y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) + 200 && !instance_exists(oTestPlayer) {
		article_state = "DESPAWN";
		mask_index = asset_get("empty_sprite");
		image_index = 14;
		sound_play(sound_get("rush_vanish"));
	}
}

if !first_frame_free_bug_fix free = !player_id.uspec_started_grounded;

with oPlayer{
	var interact = "INTERRUPT";
	if "rush_coil_interaction" in self interact = rush_coil_interaction;

	if interact != "IGNORE" && place_meeting(x, y, other) && !hitpause && !other.rush_cooldown[player] &&
	state != PS_SPAWN && state != PS_RESPAWN && state != PS_DEAD &&
	state != PS_PARRY_START && state != PS_PARRY && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD &&
	state != PS_TECH_GROUND && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD && state != PS_WALL_TECH && state != PS_AIR_DODGE{
		//x = other.x;
		y = other.y + -32;
		free = true;
		if interact == "INTERRUPT"{
			attack_end();
			destroy_hitboxes();
			fixed_set_state(free? PS_IDLE_AIR:PS_IDLE);
		}
		hsp = 0;
		vsp = other.free? other.launch_speed_airborne:other.launch_speed_grounded;
		if(other.first_frame_free_bug_fix && !other.free){
			djumps = 0;
			has_airdodge = true;
			has_walljump = true;
		} else if(other.player_id.uspec_started_grounded){
			djumps = 0;
			has_airdodge = true;
			has_walljump = true;
		}
		with other sound_play(sound_get("rush_spring"));
		other.rush_cooldown[player] = 20;
		if other.article_state == "IDLE" with other{
			article_state = "BOUNCE";
			image_index = 4;
		}
	}
}
with orig_player_id if instance_exists(dspec_rock) with dspec_rock if place_meeting(x + hsp, y + vsp, other.uspec_rush){
	//x = other.x;
	y = other.uspec_rush.y + -32;
	free = true;
	hsp = 0;
	vsp = other.uspec_rush.free? other.uspec_rush.launch_speed_airborne:other.uspec_rush.launch_speed_grounded;
	djumps = 0;
	if !other.uspec_rush.free has_airdodge = true;
	if !other.uspec_rush.free has_walljump = true;
	with other.uspec_rush sound_play(sound_get("rush_spring"));
	if other.uspec_rush.article_state == "IDLE" with other.uspec_rush{
		article_state = "BOUNCE";
		image_index = 4;
	}
}

first_frame_free_bug_fix = true;

for (var r = 0; r < array_length(rush_cooldown); r++;) if rush_cooldown[r] rush_cooldown[r]--;
article_timer++;

#define fixed_set_state(state)
{
	set_state(state);
	hurtboxID.sprite_index = free? air_hurtbox_spr:hurtbox_spr;
}
#define fixed_set_attack(attack)
{
	set_attack(attack);
	if free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
	else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}
//article_solid_init

init = 0;
sprite_index = sprite_get("plat_article"); //asset_get("empty_sprite");
mask_index = sprite_get("dspecial_platform_hitbox");
image_index = 0;
spr_dir = 1;
image_xscale = 1;


//can_be_grounded = false;
//ignores_walls = true; //
//free = true;

//these values poll for speed adjustment every x frames.
friction_poll = 0;
gravity_poll = 0;
hsp_poll = 0;
rise_poll = 0;
rise_distance = 0;

plat_hitstop = 0;
plat_hitpause = 0;


hp = 3; //platform becomes unstable when hp falls to 1, and breaks when it falls to zero
hp_threshold = 2; //platform hp stops falling temporarily at this value, until a player lands on it again

being_stood_on_timer = 0;

invul_timer = 40; //above zero when the platform can't take more damage
landed_on = false;
instant_destroy = false;
top_speed = 8;
top_speed_low = 8;
top_speed_high = 12;
time_until_crumble = 60; //when health runs out, this timer begins to tick to 0. at 0, the platform starts crumbling.
crumble = 2; //reduces gradually to zero when crumbling 
plat_hitbox_id = noone; //id of the hitbox attached to this platform when uspecial is used

break_when_not_stood_on = false; //spawn platforms have this set to true.
pillar_lifetime_factor = 1; //pillar lifespan is multiplied by this value

//grab some random seeds for drawing effects.
draw_timer = 0;
draw_timer_decimal = 0;
draw_state = 0;
draw_seed = random_func(5, 10, true) + 50; //180
draw_glow = 50;

time_created = get_gameplay_time();

//if there are more than 3 epinel platforms, find the epinel platform with the least health and destroy it.
var plat_count = 0;
var lowest_health_plat_id = noone;
var plat_tie = 0;

if (instance_number(obj_article_platform) > 3) {
	with (obj_article_platform) {
		if (id == other.id || player_id == noone || player_id.epinel_other_is_epinel <= 0 || hp <= 0) continue;
		
		plat_count++;
		
		//the first platform found is the lowest health platform by default.
		if (lowest_health_plat_id == noone) {
			lowest_health_plat_id = id;
			continue;
		}
		
		//sort by remaining hp.
		if (hp < lowest_health_plat_id.hp) {
			lowest_health_plat_id = id;
			continue;
		}
		else if (hp > lowest_health_plat_id.hp) {
			continue;
		}
		
		//if hp is equal, sort by creation time.
		if (time_created < lowest_health_plat_id.time_created) {
			lowest_health_plat_id = id;
			continue;
		}
		else if (time_created > lowest_health_plat_id.time_created) {
			continue;
		}
		
		//if hp and creation time is equal(?!), let both platforms exist.
		plat_tie = plat_count;
	}
}
//destroy the lowest health plat if there are more than 5 (including this one).
if (plat_count >= 3 && plat_count > plat_tie) {
	with (lowest_health_plat_id) {
		hp = min(hp, 0);
		time_until_crumble = min(time_until_crumble, 0);
		sound_play(asset_get("sfx_kragg_roll_end"));
	}
}


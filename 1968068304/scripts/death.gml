//death.gml

//destroy all platforms belonging to this character
with (obj_article_platform) {
	if (player_id != other.id) continue;
	
	hp = min(hp, 0);
	time_until_crumble = min(time_until_crumble, 0);
	sound_play(asset_get("sfx_kragg_roll_end"));
	break_when_not_stood_on = true;
}

//insta-destroy the rising platforms
with (obj_article2) {
	if (player_id != other.id) continue;
	
	sound_play(asset_get("sfx_kragg_roll_turn"));
	
	with (player_id) {
		spawn_hit_fx( other.x-35, other.y, 193);
		spawn_hit_fx( other.x+35, other.y, 193);
		spawn_hit_fx( other.x, other.y, 193);
	}
	
	instance_destroy();
}

//respawn epinel's solid object in case some other character's code tampered with it
if (epinel_weightless_logic_article == noone || !instance_exists(epinel_weightless_logic_article)) {
	
	//get rid of any of epinel's solid articles that still exist, just to be extra certain
	with (obj_article_solid) {
		if (player_id == other.id) { instance_destroy(); }
	}
	
	//make a new solid article
	epinel_weightless_logic_article = instance_create(floor(room_width / 2), room_height + 10000, "obj_article_solid");
	epinel_weightless_logic_article.player_id = id;
}

//take opponents with epinel on dspecial kamikazes
if (scr_epinel_grabbed_opponent_is_still_grabbed()) { //y > room_height && 
	epinel_grabbed_player_object_id.x = x;
	epinel_grabbed_player_object_id.y = y;
	//sound_play(asset_get("sfx_may_arc_cointoss"));
}

//reset uspecial cooldown
move_cooldown[AT_USPECIAL] = 0;
epinel_heavy_state = 0;

epinel_is_armored = 0;


#define scr_epinel_grabbed_opponent_is_still_grabbed
//returns true if a grabbed opponent still meets all the conditions for being grabbed.
return (
	epinel_grabbed_player_object_id != noone
	&& instance_exists(epinel_grabbed_player_object_id)
	&& epinel_grabbed_player_object_id.hitpause == true
	&& epinel_grabbed_player_object_id.hitstun > 0
	&& epinel_grabbed_player_object_id.invincible == false
);
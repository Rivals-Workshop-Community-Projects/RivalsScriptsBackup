follower_attack_start(attack);

if (attack == AT_USPECIAL) {
    var _use_uspec_plat = noone;
    with (obj_article_platform) {
    	if (player == other.player && player_id == other.id) {
    		if (place_meeting(x, y-2, other) && !other.free && other.y <= y) {
    			_use_uspec_plat = id;
    		}
    	}
    }
    if (instance_exists(_use_uspec_plat) && !free && _use_uspec_plat.state != 2 && _use_uspec_plat.state != 4 && y <= _use_uspec_plat.y) {
        _use_uspec_plat.state = 1;
        _use_uspec_plat.state_timer = 0;
        _use_uspec_plat.vsp = 0;
        uspecial_on_plat = _use_uspec_plat;
        attack = AT_USPECIAL_2;
    }
    
}

#define follower_attack_start(_attack) 
if (weapon_attack_spr[_attack] == noone) return;
if (move_cooldown[_attack] > 0) return;

var _art = instance_create(floor(x), floor(y), "obj_article1");
_art.follower_offset_x = weapon_xoffset[_attack] * spr_dir;
_art.follower_offset_y = weapon_yoffset[_attack];
_art.attack = _attack;
_art.window = weapon_window_min[_attack];
_art.window_timer = 0;
_art.spr_dir = spr_dir;

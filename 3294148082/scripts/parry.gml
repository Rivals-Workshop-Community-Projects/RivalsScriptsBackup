x = hit_player_obj.x+(hit_player_obj.spr_dir*-90)
y = hit_player_obj.y+2

var _i = 0
do {
x = x+(_i*16)
y = hit_player_obj.y+2
_i++
if _i == 8 {
	x = hit_player_obj.x+(hit_player_obj.spr_dir*-20)
}
} until place_meeting(x,y+1,asset_get("par_block")) or  place_meeting(x,y+1,asset_get("par_jumpthrough")) or _i = 8

sound_play(sound_get("SNAP"))
sound_play(sound_get("MAGICTP"))

		if instance_exists(dimentio1) and instance_exists(dimentio2){
        	var _h = instance_create(dimentio1.x,dimentio1.y-40,"obj_article1");
	_h.articletype = "TPSquare"
        	var _h = instance_create(dimentio2.x,dimentio2.y-40,"obj_article1");
	_h.articletype = "TPSquare"
		}
        	var _h = instance_create(x,y-40,"obj_article1");
	_h.articletype = "TPSquare"
	sprite_index = sprite_get("empty")
	state = PS_ATTACK_GROUND
	attack = AT_NSPECIAL
	window_timer = 0
	window = 3
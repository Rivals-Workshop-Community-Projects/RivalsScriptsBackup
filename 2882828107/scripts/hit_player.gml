if my_hitboxID.player_id != self exit;
if my_hitboxID.orig_player_id != self exit;

if (my_hitboxID.attack == AT_DATTACK){
	if (!hit_player_obj.super_armor && hit_player_obj.soft_armor == 0) {
		if (my_hitboxID.hbox_num <= 4){
			hit_player_obj.dattack_drag = id;
		}
	}
}

if (my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num == 1 || has_rune("M"))) {
	if (!hit_player_obj.super_armor && hit_player_obj.soft_armor == 0) {
		hit_player_obj.witch_hazel_id = self;
		hit_player_obj.puffshroom_timer = 30;
	}
}
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
	hit_player_obj.hurt_img = 3;
	var fx_x = (my_hitboxID.x + hit_player_obj.x) / 2;
	var fx_y = (my_hitboxID.y + hit_player_obj.y - hit_player_obj.char_height) / 2;
	jackolantern_effect_but_in_front = spawn_hit_fx( fx_x, fx_y, jackolantern_effect );
	jackolantern_effect_but_in_front.depth = hit_player_obj.depth-1;
}
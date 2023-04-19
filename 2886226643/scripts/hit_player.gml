if (my_hitboxID.attack == AT_JAB){
	jab_cancel = true;
}

if (my_hitboxID.attack == AT_DATTACK && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)){
	dattack_jump = true;
}


if (my_hitboxID.attack == AT_DAIR){
	window = 5;
	window_timer = 0;
}

if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num <= 3){
	destroy_hitboxes();
	window = 6;
	window_timer = 0;
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong3"));
    hurtboxID.sprite_index = sprite_get("fstrong3_hurt");
    x = hit_player_obj.x - 20*spr_dir;
    y = hit_player_obj.y - 15;
}

if (my_hitboxID.attack == AT_USTRONG_2 && my_hitboxID.hbox_num == 1){
	ustrong_grab = true;
}
else {
	ustrong_grab = false;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	x = hit_player_obj.x - 40*spr_dir;
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1){
	fspecial_ex_hit = true;
	x = hit_player_obj.x - 40*spr_dir;
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
	uspecial_hit = true;
}
// code for kamehameha


// if (enemy_hitboxID.attack == AT_FSPECIAL && (enemy_hitboxID.hbox_num == 2) && enemy_hitboxID.orig_player == player){


// jc_object = instance_create( hit_player_obj.x, hit_player_obj.y - 40, "obj_article1" );
// jc_object.jc_buff = true;
// jc_object.jc_fspec_buff = true;
// jc_object.parried = hit_player;
// }

hit_player_obj.trick_timer = 0;
hit_player_obj.trick_stack = 0;

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1{
	
	jc_object.current_owner = hit_player_obj.player;
	jc_object.spr_dir *= -1;
	jc_object.hit_limit = 8;
	jc_object.lifetime = 60*5;
	
	
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num > 1{
	was_parried = true;
	
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1{
	my_hitboxID.hitbox_timer = 0;
	
}
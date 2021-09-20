//if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1) set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);



my_hitboxID.has_hit = true;

if (my_hitboxID.attack == AT_USPECIAL || my_hitboxID.attack == AT_FSPECIAL){
	with obj_article1 if "is_trum_cloud" in self && state == 20 && slowmo_target == other.hit_player_obj{
		x = other.x;
		y = other.y;
	}
}



if my_hitboxID.attack == AT_USTRONG with my_hitboxID{
	sound_play(other.sfx_glass_break, 0, noone, 1.2);
}



if ((my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 3) && "has_spawned_cloud" not in my_hitboxID){
	var cld = instance_create(my_hitboxID.x, my_hitboxID.y + 22, "obj_article1");
	cld.depth = hit_player_obj.depth - 1;
	cld.explode_timer = hit_player_obj.hitstop_full - 6;
	cld.state = 20;
	cld.slowmo_target = hit_player_obj;
	if lightning hit_player_obj.should_make_shockwave = false;
	if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.vsp == 0) cld.vsp = -3;
}



if (my_hitboxID.attack == AT_NSPECIAL){
	nspecial_target = hit_player_obj;
	nspecial_orig_x = hit_player_obj.x;
	
	cloud_count = 0;
	
	sound_play(asset_get("sfx_blow_heavy1"));
    
    with obj_article1 if player_id == other{
    	cloud_num = other.cloud_count;
    	other.cloud_count++;
    	state = 6;
    	state_timer = 0;
    	spawn_hit_fx(x, y, 301);
    }
}



if (my_hitboxID.attack == AT_DSPECIAL_2){
	spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height / 2, 304)
}



if my_hitboxID.type == 1 && lightning{
	lightning = min(lightning + my_hitboxID.damage * 2, lightning_max);
}
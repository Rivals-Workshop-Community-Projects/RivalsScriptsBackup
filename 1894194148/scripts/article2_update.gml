//AR article2_update
//acid lightning
//most of em referencely stolen from guadua
//		ARLightn.dista_y = temp_y;

//->
if (init == 0){
//	var half_y = 0
//	half_y = dista_y / 2;
//	half_y = 80 / 2;
//	y = y + half_y;
	var lighthitbox = create_hitbox( AT_DSPECIAL, 2, x, y);
//	var lighthitbox = instance_create(x-2, y, "pHitBox");
//	lighthitbox.player_id = id;
//	lighthitbox.player = player;
//	lighthitbox.orig_player = player;
//	lighthitbox.attack = "AT_DSPECIAL";
//	lighthitbox.hbox_num = 2;
	lighthitbox.image_yscale = dista_y / 200;
	spawn_hit_fx( x-(3*(spr_dir)), y-(floor(dista_y/2)), 251 );
	light_temp_id = lighthitbox.id
	
	create_hitbox( AT_DSPECIAL, 4, x, y-(floor(dista_y/2)));
	
	//THOSE HANG THE GAME
//	set_hitbox_value( AT_DSPECIAL, 2, HG_HEIGHT, 80);
//	set_hitbox_value( AT_DSPECIAL, 2, image_yscale*200, dista_y );
    init = 1;
}

state_timer++;

var summon_time = 8;
//<-

//if (state == 0){ //entire anim thing
//    image_index = state_timer * 4 / summon_time;
	
//    if (state_timer == 1)){
//		create_hitbox( AT_DSPECIAL, 2, x, y - 40 );
//	}

	if (state_timer == 4 && r_dista_y < 320){
	create_hitbox( AT_DSPECIAL, 3, x, y+((floor(dista_y/2))-15));
	}

//->

    if (state_timer == summon_time){
		spawn_hit_fx( x, y+(floor(dista_y/2)), 151 );
        instance_destroy();
        exit;
    }
	
	if (init == 1 && !instance_exists(light_temp_id)){
		sound_stop(sound_get("lightning"));
		sound_stop(sound_get("lightning2"));
		sound_play(asset_get("sfx_holy_lightning"));
		instance_destroy();
		exit;
	}
	
//}














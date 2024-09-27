//this is barely used for usher herself

//AR article3_update
//acid raindrop/afterimage

//var rainhitvfx = hit_fx_create( sprite_get( "rainhit" ), 6 );
//var rainhitsnd = sound_get("rainhit");
//var acidhitsnd = sound_get("AcidDamage");
//var dingsnd = sound_get("DING");

//fakeparry

if (ar_a3_type == 3){
	if (init == 0){
		sprite_index = asset_get("fx_parry_new")
		image_alpha = 0.5
		image_xscale = 2;
		image_yscale = 2;
		can_be_grounded = false;
		ignores_walls = true;
		depth = 29;
		init = 1;
	}
	if (init == 1){
		fptimer++;
	}
	if (fptimer >= fptimermax){
		instance_destroy();
		exit;
	}
    image_index = 0 + fptimer * 6 / fptimermax;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
}

//rain
if (ar_a3_type == 0){
	
if (get_player_color( player ) == 6){
	sprite_index = sprite_get("rain_jis");
	rainhitvfx = hit_fx_create( sprite_get( "rainhit_jis" ), 6 );
}
else{
	sprite_index = sprite_get("rain");
//	sprite_index = rainsprite;
}

if (init == 0){
    init = 1;
	vsp = 11;
}

if (init==1){
	rain_lifetime++;
}

var stage_y = get_stage_data( SD_Y_POS );
var stage_b = get_stage_data( SD_BOTTOM_BLASTZONE );
if (!free || hit_wall || stage_y + stage_b < y || position_meeting(x,y+14, asset_get("plasma_field_obj"))){
	if (random_func( 2, 3, true ) == 1){
	sound_play(sound_get("rain1"));
	}
	spawn_hit_fx( x, y, rainhitvfx );
	instance_destroy();
	exit;
}

if (rain_lifetime == 28){
	instance_destroy();
	exit;
}

with (asset_get("oPlayer")){
	if (id != other.player_id && place_meeting(x,y,other.id)){
		if (!other.rain_has_hit[player-1]){
			other.rain_has_hit[player-1] = true;
			other.rain_gfx_hit[player-1] = true;
		}
	}
}

if (rain_gfx_hit[0]||rain_gfx_hit[1]||rain_gfx_hit[2]||rain_gfx_hit[3]){
	if (random_func( 1, 2, true ) == 1){
		sound_play(sound_get("rainhit"));
	}
	spawn_hit_fx( x, y, rainhitvfx );
	rain_gfx_hit[0] = false;
	rain_gfx_hit[1] = false;
	rain_gfx_hit[2] = false;
	rain_gfx_hit[3] = false;
}

//if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2){
//    hit_player_obj.rain = hit_player_obj.rain + 1;
//	sound_play(sound_get("rainhit"));
//	destroyed = true
//	if (hit_player_obj.rain == hit_player_obj.rain_max){
//		sound_play(sound_get("AcidDamage"));
//		take_damage( hit_player_obj, -1, 1 );
//		with (hit_player_obj){
//		with (asset_get("oPlayer")){
//		take_damage( player, -1, 2 )
//		spawn_hit_fx( x, y-(char_height/2), 116 );
//		}
//		hit_player_obj.rain = 0
//		}
//	with (my_hitboxID){
//	destroyed = true
//	}
//	my.hitboxID.destroyed = true
//	}
	
}

//AFTERIMAGE AFTERIMAGE
if (ar_a3_type == 1||ar_a3_type == 2){
		sprite_index = asset_get("empty_sprite");
	if (init == 0){
//		sprite_index = sprite_get("fspecial");
//		image_index = 1;
//		sprite_index = asset_get("empty_sprite");
		can_be_grounded = false;
//		ignores_walls = true;
		if (ar_a3_type == 1){
			hsp = spr_dir;
		}
//		if (ar_a3_type == 2){
//			hsp = -1;
//			aitimermax = 4;
//		}
		init = 1;
	}
	if (init==1 && aitimer < aitimermax){
		aitimer++;
	}
	if (aitimer == aitimermax){
		instance_destroy();
		exit;
	}
	
	
	
	
	
	
}


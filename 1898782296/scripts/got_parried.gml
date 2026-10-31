//got_parried

if (my_hitboxID.attack == AT_NSPECIAL){
    if (my_hitboxID.hbox_num > 1){
        exit;
    }
}

if(my_hitboxID.attack == AT_DSPECIAL){
	with (asset_get("obj_article_solid")){
		if (player_id == other.id){
		    state = 3;
	        state_timer = 0;
		}
    }
    free = true;
    vsp = -10;
    state = PS_PRATFALL
}

var random_voice = random_func( 0, 3, true);
if (random_voice < 3){
	voice_cooldown = 20;
   	sound_play(voice_hurt[random_voice+1]);
}

//if(carpet != noone){
	with(asset_get("obj_article_platform")){
		if(player_id == other.id){
			shy_guy_parried = true;
		}
	}
	with(asset_get("obj_article1")){
		if(player_id == other.id){
			state = 1;
			state_timer = 0;
		}
	}
	with(asset_get("obj_article2")){
		if(player_id = other.id){
			if(state < 3){
				state = 3;
				state_timer = 0;
			}
		}
	}
//}
if(carpet == noone){
	var mini = instance_create(x+10*spr_dir, y-14,"obj_article1")
	mini.hsp = -12*spr_dir;
	mini.vsp = -7;
	mini.player_id = id;
	mini.spr_dir = spr_dir;
	carpet = mini;
}
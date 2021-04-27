//article1_update - runs every frame the article exists
//if (replacedcount > maxarticles){
//    shoulddie = true;
//}


//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)




//Make time progress

state_timer++;
player_id.hat_out = true;

/*
with (asset_get("pHitBox")){
	
if (damage > 0 && kb_value > 0){
	
if (other.player_id.runeL == false){

if (place_meeting(x,y,other.id) && other.player != player){
	if !(get_player_team(other.player_id.player ) == get_player_team( player_id.player )){
	if (other.clone_counter = true){
		other.clone_counter_attack = true;
	}
	else{
		other.clone_cooldown = true;
	}
		spawn_hit_fx( x+30, y, 13);
		other.clone_death_sound = true;
		other.shoulddie = true;
    }
}

}
    
if (attack == AT_FSPECIAL && (place_meeting(x,y,other.id) && other.player_id = player_id)){
	
	if (other.clone_counter = false){
		spawn_hit_fx( other.x, other.y-20, 13);
		spawn_hit_fx( player_id.x, player_id.y-20, 13);
		if ((player_id.attack == AT_FSTRONG || player_id.attack == AT_USTRONG || player_id.attack == AT_DSTRONG)
		&& (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR)){
			player_id.strong_max = true;
		}
		player_id.x = other.x;
		sound_play(sound_get("counter_success"));
		if (other.free = true){
			player_id.y = other.y+5;
		}
		if (other.free = false){
			player_id.y = other.y;
		}
		
		other.clone_proj = true;
	}
	if (other.clone_counter = true){
		spawn_hit_fx( other.x, other.y-20, 143);
		other.clone_counter_attack = true;
		other.clone_proj = true;
	}
		
		other.shoulddie = true;
    }
    
if (attack == AT_USPECIAL && (place_meeting(x,y,other.id) && other.player_id = player_id)){
		other.clone_izuna = true;
		sound_play(sound_get("clone_blow"));
		other.shoulddie = true;
    }

}

}
*/

//Hat float up
if (state_timer == 40 && state < 3){
	state = 3;
}

if (state != 2){
	ignores_walls = false; 
}

//Hologram Spawn
if (state_timer > 62 && state <= 3){
	player_id.hat_x = x;
	player_id.hat_y = y;
	player_id.hologram_dir = spr_dir;
	player_id.hologram_live = true;
	player_id.killarticles = false;
	player_id.hat_out = false;
        instance_destroy();
        exit;
}


//State 0: Fall Down 1
if (state == 0){
	sprite_index = sprite_get("hat");
	vsp = 3;
}

//State 1: Thrown Forward
if (state == 1){
	sprite_index = sprite_get("hat");
	if (hsp != 0){
		hsp -= .1*spr_dir;
		vsp = 1;
	}
	if (!free){
		hsp = 0;
	}
}

//State 2: Throw Upward
if (state == 2){
	ignores_walls = true; 
	sprite_index = sprite_get("hat");
	if (vsp < 4){
		vsp += .2;	
	}
}

//State 3: Hologram Start
if (state == 3){
	sprite_index = sprite_get("hat_start");
	image_index += .25;
	if (!free){
		vsp = -3.2;
	}
}

//State 4: Fall Down 1
if (state == 4){
	sprite_index = sprite_get("hat1");
	vsp = 3;
	if (place_meeting(x, y, player_id)){
		if (state_timer > 5){
			spawn_hit_fx( x, y, 194);
			sound_play(asset_get("mfx_chat_received"));
		}
		player_id.hat_on = true;
		player_id.killarticles = false;
		player_id.hat_out = false;
        instance_destroy();
        exit;
	}
}





//Destroy when offstage
var stage_y = get_stage_data( SD_Y_POS );
var stage_xl = get_stage_data( SD_X_POS ) - 400;
var stage_xr = get_stage_data( SD_X_POS ) + 1100;
var stage_b = get_stage_data( SD_BOTTOM_BLASTZONE );
if (stage_y + stage_b < y){
	shoulddie = true;
}

if (stage_xl > x){
	shoulddie = true;
}

if (stage_xr < x){
	shoulddie = true;
}


if (shoulddie == true){
	player_id.killarticles = false;
	player_id.hat_out = false;
    instance_destroy();
    exit;
}




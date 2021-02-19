//article1_update - runs every frame the article exists


//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

//with (asset_get("pHitBox")){
//    if (place_meeting(x,y,other.id) && other.player_id != player_id){
//        other.shoulddie = true;
//        other.hitstop = 10; //Article freeze frames
//        hitpause = true;    //Player freeze frames
//        hitstop = 10;       //Player freeze frames, cont.
//    }
//}



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)




//Make time progress
state_timer++;

// Enemy Enter
//with (oPlayer){
//	if (place_meeting(x,y,other)) {
//	other.launch = true;
//}
//}



if (shoulddie = true){
//	spawn_hit_fx( x, y-30, 143);
    player_id.killarticles = false;
    barrel_hitbox.destroyed = true;
	player_id.move_cooldown[AT_USPECIAL] = 0;
    instance_destroy();
    exit;
}

if (player_id.runeE = false){

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sprite_index = sprite_get("nothing");
	player_id.move_cooldown[AT_USPECIAL] = 59;
    shoulddie = true
    exit;
}
}

/*
with (asset_get("pHitBox")){

	if (attack == AT_NSPECIAL && (place_meeting(x,y,other.id)) && other.player_id = player_id){
    	other.hsp = 6*player_id.spr_dir;
    	other.state_timer = 50;
    }
}

if (state_timer > 100 && hsp > 0){
	hsp -= 1*player_id.spr_dir
}
*/



if (get_player_color(player) == 10){
    for(i = 0; i < 11; i++){
       uses_shader = false; 
    }
}

//State 0: Up
if (state == 0){
	image_index = 0;
	if (state_timer = 45 || player_id.launch_now = true){
		barrel_hitbox = create_hitbox( AT_USPECIAL, 1, x, y-30);
	}
}

//State 1: Up/Right
if (state == 1){
	image_index = 1;
	if (state_timer = 45 || player_id.launch_now = true){
		barrel_hitbox = create_hitbox( AT_USPECIAL, 2, x, y-30);
	}
}

//State 2: Right
if (state == 2){
	image_index = 2;
	if (state_timer = 45 || player_id.launch_now = true){
		barrel_hitbox = create_hitbox( AT_USPECIAL, 3, x, y-30);
	}
}

//State 3: Right/Down
if (state == 3){
	image_index = 3;
	if (state_timer = 45 || player_id.launch_now = true){
		barrel_hitbox = create_hitbox( AT_USPECIAL, 4, x, y-30);
	}
}

//State 4: Down
if (state == 4){
	image_index = 4;
	if (state_timer = 45 || player_id.launch_now = true){
		barrel_hitbox = create_hitbox( AT_USPECIAL, 5, x, y-30);
	}
}

//State 5: Down/Left
if (state == 5){
	image_index = 5;
	if (state_timer = 45 || player_id.launch_now = true){
		barrel_hitbox = create_hitbox( AT_USPECIAL, 6, x, y-30);
	}
}

//State 6: Left
if (state == 6){
	image_index = 6;
	if (state_timer = 45 || player_id.launch_now = true){
		barrel_hitbox = create_hitbox( AT_USPECIAL, 7, x, y-30);
	}
}

//State 7: Left/Up
if (state == 7){
	image_index = 7;
	if (state_timer = 45 || player_id.launch_now = true){
		barrel_hitbox = create_hitbox( AT_USPECIAL, 8, x, y-30);
	}
}

//State 8: Loop
if (state == 8){
	state_timer = 25;
	state = 0;
}

if (barrel_hitbox.destroyed = true){
	player_id.killarticles = false;
    barrel_hitbox.destroyed = true;
	player_id.move_cooldown[AT_USPECIAL] = 90;
    instance_destroy();
    exit;
}

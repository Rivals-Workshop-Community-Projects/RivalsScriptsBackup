if (lifespan > 0){
	lifespan--;
}

time_alive++;
 state_timer++;

if (instance_exists(ghost_box)){
	ghost_box.x = x + hsp;
	ghost_box.y = y + vsp;
}

if (vsp < -8){
	grav = 0.3;
}

if (time_alive > 5 ){
	vsp += grav;
	hsp *= 0.92;
}

spr_dir = hsp > 0 ? 1 : -1;

if (is_boosted){
	sprite_index = sprite_get("throwingstar_boosted"); 
	with (ghost_box){
		kb_value = 7;
		kb_scale = 0.4;
		damage = 7;
		effect = 0;
	}
}

if (lifespan < 1 
|| !free 
|| y > get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS)
|| x < get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE)
|| x > room_width + get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE)){
	
	// spawn_hit_fx(x, y, player_id.fx_shuriken_dissolve);
	// if (ghost_box != noone){
		with (ghost_box){ destroyed = true;}
	// }
	destroyed = true;
	instance_destroy();
	exit;
}

// article2 is the ghost friend
var article2_count = 0;
var article2 = noone;
with(asset_get("obj_article2")){
        if (player_id == other.player_id){ //other.id
            article2_count++;
            article2 = id; // don't put player_id here wtf
        }
    }


if (place_meeting(x, y, asset_get("par_block")) && !has_bounced){
	has_bounced = true;
	// sprite_index = sprite_get("throwingstar_boosted");
	sound_play(player_id.snd_Uair_hit);
	grav = 0.2;
	lifespan = 300;
    image_angle = 0;
	hsp = -3*sign(spr_dir);
	vsp = -7;
}

// if (place_meeting(x, y, article2)){
if (article2 != noone && distance_to_point(article2.x, article2.y) < 16 && !has_bounced && article2.boosting){ // doesn't get detected for some reason? except it does now wtf
	// print("don't hit your friend :(")
	has_bounced = true;
	is_boosted = true;
	sound_play(player_id.snd_Fspecial_hit);
	spawn_hit_fx(x, y, player_id.fx_ghost_hit);
	// grav = 0.1;
	lifespan = 60;
    // image_angle = 90;
	hsp = hsp * -2;
	vsp = vsp * -2;
}

if (hsp == 0 && vsp != 0){
	image_angle = sign(vsp) > 0 ? 90 : 270;
}


// CHECK HIT_PLAYER.GML
// if (place_meeting(x, y, oPlayer) && !place_meeting(x, y, player_id)){
// 	 state = "bounced";
// 	 state_timer = 0;
// }
// if ( state == "bounced" && state_timer == 0){
// 	hsp = -5*sign(hsp);
// 	vsp = -6;
// }

// with (oPlayer){
// 	if (place_meeting(x, y, other) && id != other.player_id){
// 		other.hsp = -5*sign(other.hsp);
// 		other.vsp = -6;
// 	}
	
// }
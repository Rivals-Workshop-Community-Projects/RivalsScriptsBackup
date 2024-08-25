if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 7 ) {
    sound_play(asset_get( "sfx_blow_heavy1" ))
    sound_play(asset_get( "sfx_blow_heavy2" ))
    sound_play(asset_get( "sfx_forsburn_consume_full" ))


}
if (my_hitboxID.attack == AT_DSPECIAL_AIR && my_hitboxID.hbox_num <= 3) {
    sound_play(asset_get( "sfx_blow_heavy1" ))

}
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 6) {
    sound_play(asset_get( "sfx_blow_heavy2" ))

}
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 5) {
    sound_play(asset_get( "sfx_blow_heavy2" ))
    sound_play(asset_get( "sfx_forsburn_consume_full" ))

}
if (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 3) {
    sound_play(asset_get( "sfx_blow_heavy2" ))
    sound_play(asset_get( "sfx_forsburn_consume_full" ))


}
if (my_hitboxID.attack == AT_UTHROW && my_hitboxID.hbox_num == 2|| my_hitboxID.attack == AT_DTHROW || my_hitboxID.attack == AT_FTHROW && my_hitboxID.hbox_num == 2) {
    sound_play(asset_get( "sfx_blow_heavy2" ))
    sound_play(asset_get( "sfx_forsburn_consume_full" ))


}

if (my_hitboxID.attack == AT_DSPECIAL_AIR && my_hitboxID.hbox_num < 3 && get_player_color(player) == 22) {
    //sound_play(sound_get( "sfx_footdive" ))
}

//Throws
if (my_hitboxID.attack == AT_UAIR && attack == AT_UAIR){
    if (my_hitboxID.hbox_num == 1 && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
        	//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbedid)) { grabbedid = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbedid.x, grabbedid.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbedid = hit_player_obj; }
		}
	    window = 4;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (my_hitboxID.attack == AT_NSPECIAL && attack == AT_NSPECIAL){
    if (my_hitboxID.hbox_num == 1 && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
        	
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbedid)) { grabbedid = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbedid.x, grabbedid.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbedid = hit_player_obj; }
		}
		
	    window = 4;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (my_hitboxID.attack == AT_FSPECIAL && attack == AT_FSPECIAL){
    if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
        	//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbedid)) { grabbedid = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbedid.x, grabbedid.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbedid = hit_player_obj; }
		}
	    window = 4;
        window_timer = 0;
        destroy_hitboxes();
        y -= 2;
    }
}

if (my_hitboxID.attack == AT_USPECIAL && attack == AT_USPECIAL){
    if ((my_hitboxID.hbox_num >= 1 && my_hitboxID.hbox_num <= 3) && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)){
       	//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbedid)) { grabbedid = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbedid.x, grabbedid.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbedid = hit_player_obj; }
		}
	    window = 5;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (my_hitboxID.attack == AT_DSPECIAL && attack == AT_DSPECIAL && has_rune("E")){
	speedboost_timer = 60;
}

if (my_hitboxID.attack == AT_FSPECIAL && attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	fspecial_hit = true;
}

if (my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)) {
	hit_player_obj.should_make_shockwave = false;
}

//Apply smoke effect
for (var i = 0; i < array_length(hbox_apply_smoke); i++) {
    var hbox_atk = hbox_apply_smoke[i]
    //Just some checks...
    if (!is_array(hbox_atk))
        continue;
    if (array_length(hbox_atk) <= 1)
        continue;
    //Now apply the debuff
    if (my_hitboxID.attack == hbox_atk[0] && my_hitboxID.hbox_num == hbox_atk[1] && !hit_player_obj.clone) {
        if (!hit_player_obj.smoked) {
            sound_play(sound_get("sfx_ryk_smoked"))
        }
        hit_player_obj.smoked = true;
        hit_player_obj.smoked_id = id;
        hit_player_obj.smoked_timer = smoke_timer_max + (has_rune("B") * 600);
    }
}

//Apply smoke consume
for (var i = 0; i < array_length(hbox_apply_smoke_consume); i++) {
    var hbox_atk = hbox_apply_smoke_consume[i]
    //Just some checks...
    if (!is_array(hbox_atk))
        continue;
    if (array_length(hbox_atk) <= 1)
        continue;
    //Now apply the debuff
    if (my_hitboxID.attack == hbox_atk[0] && attack == hbox_atk[0]  && my_hitboxID.hbox_num == hbox_atk[1]) {
        if (hit_player_obj.smoked && !hit_player_obj.clone) {
        	hit_player_obj.smoked = false;
        	hit_player_obj.manual_flash = 0;
        	hit_player_obj.smoked_timer = 0;
        	hit_player_obj.manual_flash = 0;
        	hit_player_obj.smoked_id = noone;
        	smoke_consumed = noone;
        	var fx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y + 24, smokeconsume_fx_top)
        	fx.depth = hit_player_obj.depth + 1;
        }
    }
}
//haha fune
// if (racism_install && my_hitboxID.attack == AT_FAIR) {
//     hit_player_obj.x = spr_dir * 4000;
// }


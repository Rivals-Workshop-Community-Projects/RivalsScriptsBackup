//Throws
if (my_hitboxID.attack == AT_UAIR && attack == AT_UAIR){
    if (my_hitboxID.hbox_num == 1 && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	    grabbedid.ungrab = 0;
	    window = 4;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (my_hitboxID.attack == AT_NSPECIAL && attack == AT_NSPECIAL){
    if (my_hitboxID.hbox_num == 1 && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	    grabbedid.ungrab = 0;
	    window = 4;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (my_hitboxID.attack == AT_FSPECIAL && attack == AT_FSPECIAL){
    if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	    grabbedid.ungrab = 0;
	    window = 4;
        window_timer = 0;
        destroy_hitboxes();
        y -= 2;
    }
}

if (my_hitboxID.attack == AT_USPECIAL && attack == AT_USPECIAL){
    if ((my_hitboxID.hbox_num >= 1 && my_hitboxID.hbox_num <= 3) && grabbedid == noone && !hit_player_obj.invincible && !hit_player_obj.super_armor && !hit_player_obj.clone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	    grabbedid.ungrab = 0;
	    window = 5;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (my_hitboxID.attack == AT_DSPECIAL && attack == AT_DSPECIAL && has_rune("E")){
	speedboost_timer = 60;
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
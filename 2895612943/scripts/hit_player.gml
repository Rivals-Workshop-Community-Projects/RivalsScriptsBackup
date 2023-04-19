//hit_player.gml

//Find what attack Scratch is using and how much damage it deals
var hit_damage = my_hitboxID.damage;
var hit_attack = my_hitboxID.attack;

if (my_hitboxID.attack == AT_USPECIAL){
    uspecial_target = hit_player_obj;
}

if (my_hitboxID.attack == AT_DSTRONG){
    var lerpam;
    lerpam = [0.2, 0.4]
    if (window_timer <= 12 && window == 3){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+hsp-18*spr_dir, lerpam[0]) //update x
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20+vsp, lerpam[1]) //update y
    } else {
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+hsp+20*spr_dir, lerpam[0]) //update x
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20+vsp, lerpam[1]) //update y
    }
    
}

if (my_hitboxID.attack == AT_USTRONG){
    var lerpam;
    lerpam = [0.3, 0.3]
    if (window == 3){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+hsp, lerpam[0]) //update x
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-70+vsp, lerpam[1]) //update y
        hit_player_obj.go_through = true;
    }
    
}


if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 {
    if(hit_player_obj.clone == false){
		my_hitboxID.in_hitpause = true;
		my_hitboxID.hitpause_timer = 14;
	}
}

if(my_hitboxID.type == 1){
	disk_lockout = disk_lockout_total;
	with(pHitBox){
		if(player == other.player && attack == AT_FSPECIAL && hbox_num == 2){
			destroyed = true;
		}
	}
}

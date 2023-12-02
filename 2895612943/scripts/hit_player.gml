//hit_player.gml

//Find what attack Scratch is using and how much damage it deals
var hit_damage = my_hitboxID.damage;
var hit_attack = my_hitboxID.attack;

/*if (my_hitboxID.attack == AT_USPECIAL){
    uspecial_target = hit_player_obj;
}*/

if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.type == 1){ //ustrong connection assist
    var lerpam;
    lerpam = [0.4, 0.05]
    if (window == 3){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+hsp, lerpam[0]) //update x
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-64+vsp, lerpam[1]) //update y
        hit_player_obj.go_through = true;
    }
    
}

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.type == 1){
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

//old dspec
if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 {
    if(hit_player_obj.clone == false){
		my_hitboxID.in_hitpause = true;
		my_hitboxID.hitpause_timer = 14;
	}
}

//scratch fspec hit lockout on all melee hits
if(my_hitboxID.type == 1){
	disk_lockout = disk_lockout_total;
	with(pHitBox){
		if(player == other.player && attack == AT_FSPECIAL && hbox_num == 2){
			destroyed = true;
		}
	}
}

//bite fspec spinout on-hit when parried
if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.was_parried && my_hitboxID.enemies == 0){
	var temp_dir = disk_obj.spr_dir;
    disk_obj = create_hitbox(AT_FSPECIAL, 3, my_hitboxID.x, my_hitboxID.y);
    var temp_angle = 30;
	var new_hsp, new_vsp;
	new_hsp = lengthdir_x(5,temp_angle) * -temp_dir;
	new_vsp = lengthdir_y(5,temp_angle);
	
	disk_obj.hsp = new_hsp;
	disk_obj.vsp = new_vsp;
}

//assist
if(my_hitboxID.type == 2 && my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_FSPECIAL &&
	my_hitboxID.attack != AT_USPECIAL && my_hitboxID.attack != AT_NSPECIAL){
	
	assist.has_hit = true;
	if(assist != noone){
		assist.hitstop = floor(hit_player_obj.hitstop);
	}
	//disable second hit on lingering moves if the first one hits
	if(my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_FSTRONG){
		if(assist != noone){
			assist.dspec_hitboxes[2] = 1;
			assist.dspec_hitboxes[3] = 1;
		}
	}
	//ustrong lerp
	if(my_hitboxID.attack == AT_USTRONG && assist != noone){
		if (assist.window == 3){
		var lerpam;
    	lerpam = [0.4, 0.05]	
        hit_player_obj.x = lerp(floor(hit_player_obj.x), assist.x+hsp, lerpam[0]) //update x
        hit_player_obj.y = lerp(floor(hit_player_obj.y), assist.y-64+assist.vsp, lerpam[1]) //update y
        hit_player_obj.go_through = true;
    }
	}
}
//
if (attack == AT_NSPECIAL){
    x = player_id.batarang.x+10*player_id.batarang.spr_dir;
    y = player_id.batarang.y;
    
//    if (player_id.batarang.shoulddie == true){
//        destroyed = true;
//    }
    
}

if (attack == AT_DSPECIAL && hbox_num == 1){
    can_hit_self = true;
		for (var i = 0; i < 20; i++) {
			can_hit[i] = (i == player_id.player);
		}
}

if (attack == AT_FSPECIAL){
    if (hbox_num == 1){
        x = player_id.grapple.x+30*player_id.spr_dir;
        y = player_id.grapple.y-30;
    }
    if (hbox_num == 2){
        x = player_id.grapple.x+35*player_id.spr_dir;
        y = player_id.grapple.y-5;
    }
    
}
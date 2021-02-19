var maxlen = 240;
var of = 26*player_id.spr_dir

if attack == AT_NSPECIAL && hbox_num == 1 {
	
	if player_id.weak_charge > 0 {
	maxlen -= 160;
	}
	
	
	for (x = player_id.x; abs(x - player_id.x) < maxlen; x += player_id.spr_dir*10) {
	
		if !position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough")){
			repeat(10){
				x -= player_id.spr_dir;
				if position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) or position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough")) break;
			}
			break;
		}

	}	

}

if attack == AT_NSPECIAL && hbox_num == 2 {
	//>
	if player_id.normal_charge > 0 {
	maxlen -= 80;
	}
	
	
	for (x = player_id.x; abs(x - player_id.x) < maxlen; x += player_id.spr_dir*10) {
	
		if !position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough")){
			repeat(10){
				x -= player_id.spr_dir;
				if position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) or position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough")) break;
			}
			break;
		}

	}	

}

if attack == AT_NSPECIAL && hbox_num == 3 {
	
	if player_id.strong_charge = 1 {
	maxlen = maxlen;
	}
	
	
	for (x = player_id.x; abs(x - player_id.x) < maxlen; x += player_id.spr_dir*10) {
	
		if !position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough")){
			repeat(10){
				x -= player_id.spr_dir;
				if position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) or position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough")) break;
			}
			break;
		}

	}	

}
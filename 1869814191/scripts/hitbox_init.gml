//hitbox_init

//most of this chunk is copy + pasted from mycolich dtilt
//its 3am and ive been losing my sanity trying to figure out how to make this 
//type of move work i dont care anymore

//at the very least please go check out the original mod by giik
//https://steamcommunity.com/sharedfiles/filedetails/?id=1995944345
//theyre part of the official rivals dev team and it is very well deserved

if attack == AT_FSPECIAL {
	hit_state = 0
	hit_timer = 0
	if (hbox_num == 2) for (var i = 0; i < 20; i++) can_hit[i] = false;
}

if (attack == AT_DTILT || attack == AT_DSTRONG) && hbox_num == 1 {
	var maxlen = 160;
	//var maxlen = (attack == AT_DAIR ? 24 : 160);
	var of = 36*player_id.spr_dir;
	while (!position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough"))) || position_meeting(spr_dir?bbox_right:bbox_left,bbox_bottom-2,asset_get("par_block")){
		x -= player_id.spr_dir;
	}	
	if y > room_height {
		destroyed = true;
	} else {
    if (attack == AT_DTILT) sound_play(sound_get("sfx_sans_alert"));
    _hbox = noone;
    bone_active = false;
	}
}/* else if attack == AT_DAIR && hbox_num == 1 {
	if y > room_height {
		destroyed = true;
	} else {
		sound_play(sound_get("sfx_sans_alert"));
		_hbox = noone;
	}
}
*/
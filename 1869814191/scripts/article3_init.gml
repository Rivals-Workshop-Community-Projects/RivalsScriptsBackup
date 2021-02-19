//article1_init

init = 0;

sprite_index = sprite_get("bones");
air_hurtbox_spr = sprite_get("bones");
state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = false;
uses_shader = true;
grounds = 1;
walls = 1;

//spawnpoint = player_id.x+(80*player_id.spr_dir);
spr_dir = player_id.spr_dir;

if (state == 0) { //code borrowed from Mycolich DTilt
    
	var maxlen = 76;
	var of = 50*player_id.spr_dir;
	
	for (x = player_id.x; abs(x - player_id.x) < maxlen; x += player_id.spr_dir*10) {
	
		if (!position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough"))){
			repeat(30){
				x -= player_id.spr_dir;
				if (position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) or position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough"))) break;
			}
			break;
		}

	}	

}

bone_hit_timer = 0;
bone_hit = 2;
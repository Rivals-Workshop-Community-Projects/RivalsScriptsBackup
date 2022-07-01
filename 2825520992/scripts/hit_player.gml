switch my_hitboxID.attack
{
	
    case AT_NSPECIAL:
    if my_hitboxID.hbox_num == 2 {
    	spawn_hit_fx(my_hitboxID.x,my_hitboxID.y,305);
    }
    break;
    case AT_JAB:
    if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,0.8);
     }
    if my_hitboxID.hbox_num == 2 {
         sound_play(sound_get("sfx_hit_sharp1"),false,noone,1.2,1.1);
     }
	if my_hitboxID.hbox_num == 3 {
         sound_play(sound_get("sfx_hit_sharp1"),false,noone,1.2,0.8);
     }
    if my_hitboxID.hbox_num == 4 {
         sound_play(sound_get("sfx_hit_sharp1"),false,noone,1.2,1.3);
     }
     if my_hitboxID.hbox_num == 5 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 6 {
         sound_play(sound_get("sfx_smash_ult_sword_hit_medium"),false,noone,0.7);
         sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.7,0.9);
     }
    break;
    case AT_FTILT:
    case AT_DAIR:
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.7,0.9);
     }
    break;
    case AT_UTILT:
    if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,0.8);
     }
    break;
    case AT_NAIR:
    if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp1"),false,noone,1.2,1.1);
     }
	if my_hitboxID.hbox_num == 2 {
         sound_play(sound_get("sfx_hit_sharp1"),false,noone,1.2,0.8);
     }
    if my_hitboxID.hbox_num == 3 {
         sound_play(sound_get("sfx_hit_sharp1"),false,noone,1.2,1.3);
     }
     if my_hitboxID.hbox_num == 4 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,0.8);
     }
     break;
    case AT_FAIR:
    if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp1"),false,noone,1.2,1.1);
     }
	if my_hitboxID.hbox_num == 2 {
         sound_play(sound_get("sfx_hit_sharp1"),false,noone,1.2,1.1);
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,0.8);
     }
    break;
    case AT_FSTRONG:
    if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.6,0.9);
     }
    break;
    case AT_USTRONG:
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
         sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.7,0.9);
     }
    break;
	case AT_DSTRONG:
	if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_waterhit_medium"),false,noone,0.8);
     }
	if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_waterhit_weak"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_waterhit_heavy"),false,noone,0.8);
     }
    break;
    case AT_FSPECIAL:
	if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_waterhit_weak"),false,noone,0.8);
     }
    if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_waterhit_heavy"),false,noone,0.8);
     }
    if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_waterhit_heavy"),false,noone,0.8);
     }
    if my_hitboxID.hbox_num == 4 {
         sound_play(asset_get("sfx_waterhit_heavy"),false,noone,0.8);
     }
}

//Grabbing opponent
if (my_hitboxID.attack == AT_FSPECIAL){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        //Grabs them on the Right
	        if (my_hitboxID.hbox_num == 1){
	        	parasol_hit = true;
	        	window = 4;
	        	window_timer = 1;
	        	hit_player_obj.x = x;
		        hit_player_obj.y = y - 35;
	        }
	        else {
	        	parasol_hit = false;
	        }
	      
	  }
}

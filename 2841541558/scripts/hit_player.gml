switch my_hitboxID.attack
{
	case AT_JAB:
	 if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.2,1.2);
     }
    break;
    case AT_UTILT:
     if my_hitboxID.hbox_num == 1 {
        sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.2,1.2);
     }
    if my_hitboxID.hbox_num == 2 {
        sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.2,1.2);
     }
    if my_hitboxID.hbox_num == 3 {
        sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.2,1.2);
     }
    if my_hitboxID.hbox_num == 4 {
        sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.2,1.2);
     }
    break;
    case AT_DTILT:
     if my_hitboxID.hbox_num == 3 {
        sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.2,1.2);
     }
    break;
    case AT_FSTRONG:
	 if my_hitboxID.hbox_num == 2 {
         sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.8,0.8);
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,1.2);
         var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), HFX_SHO_SWEET);
    	fx.depth = hit_player_obj.depth - 1;
     }
     break;
     case AT_USTRONG:
	 if my_hitboxID.hbox_num == 3 {
         sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.8,0.8);
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,1.2);
         var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), HFX_SHO_SWEET);
    	fx.depth = hit_player_obj.depth - 1;
     }
     if my_hitboxID.hbox_num == 4 {
         sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.8,0.8);
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,1.2);
         var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), HFX_SHO_SWEET);
    	fx.depth = hit_player_obj.depth - 1;
     }
     break;
    case AT_NAIR:
	 if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp0"),false,noone,1.2,1.2);
         var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), HFX_GEN_SWEET);
    	fx.depth = hit_player_obj.depth - 1;
     }
    break;
    case AT_FAIR:
     if my_hitboxID.hbox_num == 1 {
        sound_play(asset_get("sfx_blow_heavy2"));
		sound_play(asset_get("sfx_burnapplied"));
     }
     if my_hitboxID.hbox_num == 3 {
		sound_play(asset_get("sfx_burnapplied"));
     }
    break;
    case AT_BAIR:
		var extra_boost = (my_hitboxID.hbox_num == 3)*1 //If you are on the finisher, add 2 to final old_vsp
		
		old_vsp -= (1 + extra_boost);
		
		hit_player_obj.x = lerp(hit_player_obj.x,my_hitboxID.x,0.1)
		hit_player_obj.y = lerp(hit_player_obj.y,my_hitboxID.y,0.1)
	break;
	case AT_UAIR:
		var extra_boost = (my_hitboxID.hbox_num == 3)*1 //If you are on the finisher, add 2 to final old_vsp
		
		old_vsp -= (1 + extra_boost);
		
		hit_player_obj.x = lerp(hit_player_obj.x,my_hitboxID.x,0.1)
		hit_player_obj.y = lerp(hit_player_obj.y,my_hitboxID.y,0.1)
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
	case AT_DAIR:
	 if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.8,0.8);
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,1.2);
         var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), HFX_SHO_SWEET);
    	fx.depth = hit_player_obj.depth - 1;
     }
     break;
    /*case AT_DSTRONG:
	 if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_poison_hit_strong"),false,noone,1.2);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_poison_hit_strong"),false,noone,1.2);
     }
    break;*/
    case AT_NSPECIAL:
	 if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_hod_charged_uspecial_hit"),false,noone,1.2);
     }
    break;
	case AT_FSPECIAL:
	 if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("sfx_hit_sharp2"),false,noone,0.8,0.8);
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,1.2);
     }
    break;

}
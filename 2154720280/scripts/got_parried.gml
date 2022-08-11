///
if my_hitboxID.type != 1 {
    
    with (pHitBox) {
  		if player_id == other.id {
  			destroyed = true
  		}
  	}
  	
}




if my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_FAIR{
 
     sound_play(asset_get("sfx_orca_crunch"));
     
	spawn_hit_fx( hit_player_obj.x  , hit_player_obj.y , tauntpar1 )
	
     with (asset_get("oPlayer")) {
	if (player != other.player) {
		take_damage( player, -1 , -2 )
	}
   }
   
}



if (my_hitboxID.attack == AT_DTILT && my_hitboxID.hbox_num == 2){
 
     sound_play(asset_get("sfx_orca_crunch"));
     
	spawn_hit_fx( hit_player_obj.x  , hit_player_obj.y , tauntpar1 )
	
   with (asset_get("oPlayer")) {
	if (player != other.player) {
		take_damage( player, -1 , -2 )
	}
   }
   
}


if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2) {
 
  my_hitboxID.destroyed = true;
 
     sound_play(asset_get("sfx_orca_crunch"));
     
	spawn_hit_fx( hit_player_obj.x  , hit_player_obj.y , tauntpar1 )
	
     with (asset_get("oPlayer")) {
	if (player != other.player) {
		take_damage( player, -1 , -2 )
	}
}

}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 4) {
 
  my_hitboxID.destroyed = true;
 
     sound_play(asset_get("sfx_orca_crunch"));
     
	spawn_hit_fx( hit_player_obj.x  , hit_player_obj.y , tauntpar1 )
	
     with (asset_get("oPlayer")) {
	if (player != other.player) {
		take_damage( player, -1 , -2 )
	}
}

}


if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num > 1) {
 
  my_hitboxID.destroyed = true;
 
     sound_play(asset_get("sfx_orca_crunch"));
     
	spawn_hit_fx( hit_player_obj.x  , hit_player_obj.y , tauntpar1 )
	
     with (asset_get("oPlayer")) {
	if (player != other.player) {
		take_damage( player, -1 , -2 )
	}
}

}


if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
 
  my_hitboxID.destroyed = true;
 
     sound_play(asset_get("sfx_orca_crunch"));
     
	spawn_hit_fx( hit_player_obj.x  , hit_player_obj.y , tauntpar1 )
	
     with (asset_get("oPlayer")) {
	if (player != other.player) {
		take_damage( player, -1 , -2)
	}
}

}
   
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num <= 3 ){
 
  my_hitboxID.destroyed = true;
 
     sound_play(asset_get("sfx_orca_crunch"));
     
	spawn_hit_fx( hit_player_obj.x  , hit_player_obj.y , tauntpar1 )
	
     with (asset_get("oPlayer")) {
	if (player != other.player) {
		take_damage( player, -1 , -2 )

	}
   }
   
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 8){
 
  my_hitboxID.destroyed = true;
 
     sound_play(asset_get("sfx_orca_crunch"));
     
	spawn_hit_fx( hit_player_obj.x  , hit_player_obj.y , tauntpar1 )
	
     with (asset_get("oPlayer")) {
	if (player != other.player) {
		take_damage( player, -1 , -2 )
	}
   }
   
}

my_hitboxID.destroyed = true;
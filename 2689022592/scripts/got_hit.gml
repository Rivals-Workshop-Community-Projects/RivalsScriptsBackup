/// my_hitboxID.attack

with asset_get("oPlayer") {
    
   if char_height != other.char_height && "Tengia_pain_id" in self {

       if Tengia_pain_id == other {
         if Tengia_pain_time > 0 {
              Tengia_pain_time -= other.enemy_hitboxID.damage
         }
       }
       
   }
}

//// Rune stuffs
if has_rune("N") {
	sound_play(asset_get("sfx_blow_heavy1"),false, noone, 1, max(0.6,2 - (hitstop*hitstop/150)))
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, (old_hsp)*2*spr_dir - 2 + random_func(1,5,true) );
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, (old_vsp)*2 - 2 + random_func(2,5,true));
create_hitbox(AT_DSPECIAL,2,x,y - 40)
}


with hit_player_obj {
	if string_count("donyoku", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0 {
			with other {
				take_damage(player,-1,ceil(other.enemy_hitboxID.damage))
			}
	} 
}
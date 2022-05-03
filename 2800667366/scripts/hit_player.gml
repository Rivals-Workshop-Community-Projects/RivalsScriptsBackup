
if my_hitboxID.attack == AT_FTHROW {

  if hit_player_obj.state_cat == SC_HITSTUN {
      spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30, 67)
        sound_play(asset_get("sfx_ori_bash_hit"))
         sound_play(asset_get("sfx_clairen_hit_strong"),false,noone,1,.6)
         
      with hit_player_obj {
          take_damage(player,-1,25)
      }
  }


}
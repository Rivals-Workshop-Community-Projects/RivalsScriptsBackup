/// my_hitboxID.attack
 with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
 }
    
with asset_get("oPlayer") {
    
   if char_height != other.char_height && "Tengia_pain_id" in self {

       if Tengia_pain_id == other {
       if Tengia_pain != 0 {
               	sound_play(asset_get("sfx_waterhit_heavy2"),false, noone, 1, .7)
                sound_play(asset_get("sfx_boss_vortex_end"),false, noone, .8, .8)
           shake_camera(6,6)
           take_damage(player,-1,Tengia_pain)
           with other {
           fx_s = hit_fx_create( sprite_get( "fx_snap" ), 20 );       
           spawn_hit_fx(other.x,other.y - 120, fx_s)
           take_damage(player,-1,floor(other.Tengia_pain*-0.33))    
           fxd = spawn_hit_fx(x, y - 20, fx_d)
           fxd.depth = -15
           }
           Tengia_pain = 0
           Tengia_pain_time = 0
       }
       }
       
   }
}
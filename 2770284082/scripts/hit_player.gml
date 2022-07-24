//

sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,max(.6, hit_player_obj.hitstop*hit_player_obj.hitstop/150), 3 - min(2, 1 + hit_player_obj.hitstop*hit_player_obj.hitstop/150) )

if my_hitboxID.damage > 4 && hit_player_obj.hatstate != 0 && hit_player_obj.hatstate != 2*player*player && my_hitboxID.attack != AT_NSPECIAL && hit_player_obj.hatprotection == 0{
    hit_player_obj.hatstate = 2*player*player
    hitstop += 5
    hit_player_obj.hitstop += 5
    sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1,1.4)
    sound_play(asset_get("sfx_absa_boltcloud"),false,noone,1,1.2)
}

if my_hitboxID.attack == AT_FTHROW {
    old_hsp = 0
}

if my_hitboxID.attack == AT_BAIR {
    hit_player_obj.free = true
}
    
    
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2 {
   move_cooldown[AT_FSPECIAL_2] = 60
}

if my_hitboxID.attack == AT_NAIR {
    if hit_player_obj.state_cat == SC_HITSTUN {
                   	 hit_player_obj.x += floor ((x - hit_player_obj.x)/(5 - my_hitboxID.hbox_num/3)) 
                   	 hit_player_obj.y += floor ((y - hit_player_obj.y)/(5 - my_hitboxID.hbox_num/3)) 
     }
}


if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 1 {
    if hit_player_obj.state_cat == SC_HITSTUN {
                   	 hit_player_obj.x += floor ((x + 30*spr_dir - hit_player_obj.x)/4) 
                   	 hit_player_obj.y += floor ((y - hit_player_obj.y)/6) 
     }
}


if my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num <= 2 or my_hitboxID.hbox_num == 4) {
    
  if hit_player_obj.hatstate == 0  { 
      h3x = spawn_hit_fx(floor(hit_player_obj.x), floor(hit_player_obj.y - hit_player_obj.char_height-10), h3)
    h3x.depth = -6
    sound_play(sound_get("shing"),false, noone, .4, 0.7); hit_player_obj.hatstate = player*player }
    
  if  my_hitboxID.hbox_num == 4 && hit_player_obj.hatprotection == 0 {
    hit_player_obj.hatstate = 2*player*player
  }
  
}



if my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 4 {
   if hit_player_obj.hatstate == 0  {  
       h3x = spawn_hit_fx(floor(hit_player_obj.x), floor(hit_player_obj.y - hit_player_obj.char_height-10), h3)
    h3x.depth = -6
    sound_play(sound_get("shing"),false, noone, .4, 0.7); hit_player_obj.hatstate = player*player }
}

if (my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_USTRONG) && my_hitboxID.damage > 3 {
   if hit_player_obj.hatstate == 0  {  
       h3x = spawn_hit_fx(floor(hit_player_obj.x), floor(hit_player_obj.y - hit_player_obj.char_height-10), h3)
    h3x.depth = -6
    sound_play(sound_get("shing"),false, noone, .4, 0.7); hit_player_obj.hatstate = player*player }
}
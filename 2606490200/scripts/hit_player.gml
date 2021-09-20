///

if my_hitboxID.attack == AT_FSPECIAL && move_cooldown [AT_NAIR] > 0 {
    move_cooldown [AT_NAIR] = 0
    move_cooldown [AT_BAIR] = 105
    fxchad2 = spawn_hit_fx( floor((hit_player_obj.x + x)/2) + 10*spr_dir, floor((hit_player_obj.y + y)/2) - 40, i5) 
   fxchad2.depth = -100
}

if my_hitboxID.attack == AT_FSPECIAL && move_cooldown [AT_BAIR] > 0 {

    spawn_hit_fx( floor((hit_player_obj.x + x)/2) + 10*spr_dir, floor((hit_player_obj.y + y)/2) - 40, 305) 

}


if ltrain < 98 {
    ltrain += my_hitboxID.damage/8
}
if btrain < 98 {
    btrain += my_hitboxID.damage/8
}
if atrain < 98 {
    atrain += my_hitboxID.damage/8
}
if htrain < 98 {
    htrain += my_hitboxID.damage/8
}

if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num > 1 {
    
    fxchad1 = spawn_hit_fx(x,y,npsp)
    fxchad1.depth = -100
}

if my_hitboxID.attack == AT_DSTRONG  {
    
shake_camera(8,8)

}

if my_hitboxID.attack == AT_FSPECIAL  {
    
    hsp = 0
if move_cooldown [AT_NAIR] == 0 && move_cooldown [AT_BAIR] == 0 {
   fxchad2 = spawn_hit_fx( floor((hit_player_obj.x + x)/2) + 10*spr_dir, floor((hit_player_obj.y + y)/2) - 40, i5) 
   fxchad2.depth = -100
shake_camera(8,10)
}

    sound_play(asset_get("sfx_absa_kickhit"))
}



if my_hitboxID.attack == AT_FSTRONG  {
    
sound_play(asset_get("sfx_absa_kickhit"))

}

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num > 1 {
  should_make_shockwave = false   
}

if ltrain < 100 {
if my_hitboxID.attack == AT_DAIR or my_hitboxID.attack == AT_DTILT or my_hitboxID.attack == AT_DSPECIAL or my_hitboxID.attack == AT_DSTRONG {
        
    
    ltrain += my_hitboxID.damage
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 7{
    fxlup = spawn_hit_fx(hit_player_obj.x,y - 120,lup)
    fxlup.depth = -100
    sound_play(asset_get("sfx_coin_collect"))
    ltrain += 15
}

}

if htrain < 100 && hit_player_obj != self {
if my_hitboxID.attack == AT_UAIR or my_hitboxID.attack == AT_UTILT or my_hitboxID.attack == AT_USPECIAL or my_hitboxID.attack == AT_USTRONG {
  
    
    htrain += my_hitboxID.damage
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 6{
    fxhup = spawn_hit_fx(hit_player_obj.x,y - 120,hup)
    fxhup.depth = -100
    sound_play(asset_get("sfx_coin_collect"))
    htrain += 15
}

}

if atrain < 100 && move_cooldown [AT_NAIR] == 0 && move_cooldown [AT_BAIR] == 0{
if my_hitboxID.attack == AT_BAIR or my_hitboxID.attack == AT_FAIR or my_hitboxID.attack == AT_FTILT or my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DATTACK{
        
    
    atrain += my_hitboxID.damage
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 2{
    fxaup = spawn_hit_fx(hit_player_obj.x,y - 120,aup)
    fxaup.depth = -100
    sound_play(asset_get("sfx_coin_collect"))
    atrain += 15
}

}

if btrain < 100 {
if my_hitboxID.attack == AT_NAIR or my_hitboxID.attack == AT_JAB {
 
    
    btrain += my_hitboxID.damage*2
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 1{
    fxbup = spawn_hit_fx(hit_player_obj.x,y - 120,bup)
    fxbup.depth = -100
    sound_play(asset_get("sfx_absa_kickhit"))
    sound_play(asset_get("sfx_coin_collect"))
    btrain += 15
}

}
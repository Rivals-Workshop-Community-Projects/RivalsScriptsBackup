//hit_player

switch my_hitboxID.attack {
    
    case AT_FSTRONG:
    play_wing(3, "trident")
    play_ruby(4, "trident")
    play_bomb(5, "trident")
    break;
    
    case AT_FTILT:
    play_wing(3, "shield")
    play_ruby(4, "shield")
    play_bomb(5, "shield")
    if my_hitboxID.hbox_num != 1 sound_play(sound_get("botw_hit"))
    break;
    
    case AT_FSPECIAL:
    play_wing(2, "shield")
    play_ruby(3, "shield")
    play_bomb(4, "shield")
    sound_play(sound_get("botw_hit"))
    break;
    
    case AT_NAIR:
    play_wing(3, "shield")
    play_wing(4, "shield")
    play_ruby(5, "shield")
    play_ruby(6, "shield")
    play_bomb(7, "shield")
    play_bomb(8, "shield")
    sound_play(sound_get("botw_hit"))
    break;
    
    case AT_BAIR:
    play_wing(3, "trident")
    play_ruby(4, "trident")
    play_bomb(5, "trident")
    break;
    
    case AT_FAIR:
    play_wing(4, "trident")
    play_wing(5, "trident")
    play_wing(6, "trident")
    play_ruby(7, "trident")
    play_bomb(8, "trident")
    break;
    
    case AT_UTILT:
    play_wing(8, "trident")
    play_ruby(9, "trident")
    play_bomb(10, "trident")
    break;
    
    case AT_USTRONG:
    sound_play(asset_get("sfx_ori_energyhit_heavy"))
    break;
    
    case AT_DSPECIAL:
    sound_play(asset_get("sfx_oly_dspecial_hit"))
    break;
    
}
#define play_wing(index, weapon)
if my_hitboxID.hbox_num == index {
    check_hp(weapon, "wing")
}
return;

#define play_ruby(index, weapon)
if my_hitboxID.hbox_num == index {
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, vfx_stock_explosion_large_red)
    sound_play(asset_get("sfx_mol_norm_explode"))
    sound_play(asset_get("sfx_burnapplied"))
    sound_play(asset_get("sfx_zetter_upb_hit"))
    check_hp(weapon, "ruby")
}
return;

#define play_bomb(index, weapon)
if my_hitboxID.hbox_num == index {
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, vfx_stock_explosion_large)
    sound_play(sound_get("explosion"))
    check_hp(weapon, "bomb")
    has_bomb_hit = true
}
return;

#define check_hp(weapon, item)
var item_hp = 100000
if weapon == "trident" {
    fuse_item_hp_trident--
    if fuse_item_hp_trident <= 0 {
        fuse_item_trident = 0 
        fuse_item_timer = 0
    }
    item_hp = fuse_item_hp_trident
}
if weapon == "shield" {
    fuse_item_hp_shield--
    if fuse_item_hp_shield <= 0 {
        fuse_item_shield = 0 
        fuse_item_timer = 0
    }
    item_hp = fuse_item_hp_shield
}
if item_hp == 1 {
    //sound_play(sound_get("botw_weapon_damaged"))
} else if item_hp == 0 && item != "bomb" {
    sound_play(sound_get("botw_weapon_broken"))
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, vfx_energy)
}
if item_hp == 0 {
    if hit_player_obj.burned && hit_player_obj.burnt_id == id {
        //my_hitboxID.effect = 2
        //sound_play(asset_get("sfx_burnconsume"))
    }
}
return;
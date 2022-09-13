//

if soft_armor == 999 {
     sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,1,.8)
        if floor(x)%2 == 0 {
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("flop1"));
        } else {
            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("flop2"));
        }
        
        sound_play(asset_get("sfx_blow_medium3"),false,noone,.8,1)
        take_damage(player,-1,5)
        
        move_cooldown[AT_JAB] = 5
        
        set_attack(AT_FTILT)
        window = 1
        window_timer = 0
        gonnaflop  = false 
        
        take_damage(player,-1, enemy_hitboxID.damage * -1)
        
        if enemy_hitboxID.type == 1 {
            hit_player_obj.has_hit = false 
            hit_player_obj.has_hit_player = false 
        }
        
        take_damage(player,-1, enemy_hitboxID.damage * -1)
}

if parryside != 0 or move_cooldown[AT_UTILT] != 0 {
    
    if hit_player_obj.x < x && parryside == -1 or hit_player_obj.x >= x && parryside == 1 or move_cooldown[AT_UTILT] != 0{
        if parryside != 0 spr_dir = parryside
        sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,1,1.6)
        sound_play(asset_get("sfx_shovel_hit_light2"),false,noone,1,1)
        sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,1,.8)
        set_attack(AT_TAUNT_2)
        hitstop = 0
        window = 1
        window_timer = 0
        hsp = 0
        vsp = 0
        old_vsp = 0
        old_hsp = 0
        if enemy_hitboxID.type == 1 {
           if hit_player_obj.hitpause == true hit_player_obj.hitstop += 30
            hit_player_obj.has_hit = false 
            hit_player_obj.has_hit_player = false 
        }
        take_damage(player,-1, enemy_hitboxID.damage * -1)
        stamina = 150
         force_depth = true 
         depth = -7
    } 
   
} else {

  x += (right_down - left_down)*20
  y -= (up_down - down_down)*20
}
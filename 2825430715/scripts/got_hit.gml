//

if soft_armor == 999 {
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
}

if parryside != 0 {
    
    if hit_player_obj.x < x && parryside == -1 or hit_player_obj.x >= x && parryside == 1{
        sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,1,1.6)
        sound_play(asset_get("sfx_shovel_hit_light2"),false,noone,1,1)
        sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,1,.8)
        hitstop = 5
        set_attack(AT_TAUNT_2)
        window = 1
        window_timer = 0
        hsp = -6*spr_dir
        vsp = 0
        old_vsp = 0
        old_hsp = -6*spr_dir
        if enemy_hitboxID.type == 1 && hit_player_obj.hitpause == true{
            hit_player_obj.hitstop += 30
        }
        take_damage(player,-1, enemy_hitboxID.damage * -1)
        stamina = 150
         force_depth = true 
    depth = -7
    } 
   
}
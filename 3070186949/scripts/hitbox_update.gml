if attack == AT_NSPECIAL {
    
    switch hbox_num {
        case 1:
        break;
        case 2:
            if !was_parried {
                hsp = lerp(hsp, -initial_speed*spr_dir, 0.02)
                
                var threshold_angle = 45
                if spr_dir * sign(hsp) == -1
                {
                    kb_angle = 180 - threshold_angle
                }
                else{
                    kb_angle = threshold_angle
                }
            }
        break;
        case 3:
            if (!free) {
                vsp *= 0.6
            }
        break;
    }
 
 if hitbox_timer == length - 1 {
     spawn_hit_fx(x,y,player_id.record_smash_vfx).hsp = hsp/9;
 }
    
}
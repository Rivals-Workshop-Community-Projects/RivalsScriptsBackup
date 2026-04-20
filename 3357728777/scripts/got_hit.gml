with jab_art {
       state_timer = 0
        instance_destroy(self); 
    
}
dspecial_wrath_delay_timer = 0;


if enemy_hitboxID.damage > 0 && enemy_hitboxID.kb_value > 0{
    if focused_fury == 0{
        wrath_meter-=(enemy_hitboxID.damage * 0.5)
    }else{
        focused_fury_timer-=(enemy_hitboxID.damage * 2)
        focused_fury_delay = 0
    }
}

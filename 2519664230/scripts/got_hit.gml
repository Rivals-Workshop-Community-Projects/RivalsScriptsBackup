test_ID = enemy_hitboxID.type;


if ((attack == AT_FSPECIAL || attack == AT_DTILT) && super_armor == true) {
        var cancel = true;
        
        
            
        if (enemy_hitboxID.type == 2) {
            cancel = false;
        }
        
        if (cancel) {
            attack = AT_FSPECIAL;   
            window = 3;
            window_timer = 0;
            hit_out = true;
            hit_kb = enemy_hitboxID.damage;
        }
}
if (instance_exists(mycat)) {
        //if (my_hitboxID.hbox_num >= mycat.window_hitbox_min && my_hitboxID.hbox_num <= mycat.window_hitbox_max) {
        var p = (get_player_damage(hit_player_obj.player) + my_hitboxID.damage);
        var d = my_hitboxID.damage;
        var w = 1.1;
        var s = my_hitboxID.kb_scale;
        var b = lerp(my_hitboxID.kb_value, my_hitboxID.bkb_final,my_hitboxID. hitbox_timer / my_hitboxID.length);
        
        var hitstun_eq = b * 4 * ((w - 1) * 0.6 + 1) + p * 0.12 * my_hitboxID.kb_scale * 4 * 0.65 * w;
        var hitpause_eq = my_hitboxID.hitpause + p *my_hitboxID.hitpause_growth * 0.05;
        
        mycat.hitstop_max = ceil(hitpause_eq);
            
        mycat.hitpause = ceil(hitpause_eq);
        mycat.hitstun = ceil(hitpause_eq);
        mycat.hitstop = ceil(hitpause_eq);

        mycat.prev_hsp = mycat.hsp;
        mycat.prev_vsp = mycat.vsp;
        
        mycat.has_hit = true;
}

//Apply Status Effects
if (my_hitboxID.attack == AT_NSPECIAL) {
    if (my_hitboxID.hbox_num == 3) {
        hit_player_obj.status_swirlburned = true;
        hit_player_obj.swirlburned_timer = 270;
    }
    if (my_hitboxID.hbox_num == 4) {
        hit_player_obj.status_swirlburned = true;
        hit_player_obj.swirlburned_timer = 180;
    }
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2) {
    with (oPlayer) {
        hitstop += 30;
    }
}
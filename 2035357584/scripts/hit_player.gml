//hit player
//create explosion if grenade hits opponent
if(my_hitboxID.attack == AT_FSPECIAL_G || my_hitboxID.attack == AT_DSPECIAL_G 
    || my_hitboxID.attack == AT_USPECIAL_G || (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1)){
    
    var expl = create_hitbox(AT_EXPLOSION, 1, my_hitboxID.x + ex_x_off_air, my_hitboxID.y);
    if(!runeH && !h_rune){
        expl.player = 0;
    }
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, air_explosion);
    sound_play(sound_get("explosion1"));
    
    if ((runeL || l_rune) && my_hitboxID.attack != AT_FSPECIAL) {
        spawn_cluster = true;
        spawnX = my_hitboxID.x;
        spawnY = my_hitboxID.y;
    }
}
//execute second half of fair_g on hit
else if(my_hitboxID.attack == AT_FAIR_G){
    if (my_hitboxID.hbox_num == 1) {
        fair_g_hit = true;
    }
    if (my_hitboxID.hbox_num == 2) {
        set_attack_value(AT_FAIR_G, AG_HAS_LANDING_LAG, 1);
    }
}
//flag for explosion when hitting with ftilt_g or bair_g sweetspot
//need to set hitpause here due to bad interaction with rock wall aether stage
else if((my_hitboxID.attack == AT_FTILT_G && my_hitboxID.hbox_num == 2) || (my_hitboxID.attack == AT_BAIR_G
        && my_hitboxID.hbox_num == 3)){
    hitpause = true;
    hitstop = 45;
    window_timer = 4;
    trigger = true;
    sound_play(sound_get("click"));
}

//hitpause for explosions, hitpause is lower for Nade than the opponent
if (my_hitboxID.attack == AT_EXPLOSION) {
    var _base_hitpause = 8;
    var _hitpause_scaling = 0.8;
    if (hit_player_obj != self) { //opponent hitpause (normal) 
        hit_player_obj.hitstop = _base_hitpause + _hitpause_scaling * get_player_damage(hit_player_obj.player) * 0.05;
    }
    else { //self hitpause (lower)
        hit_player_obj.hitstop = _base_hitpause + 2;
    }
    hit_player_obj.hitstop_full = hit_player_obj.hitstop;
}

//hit flag for fspecial
if(my_hitboxID.attack == AT_FSPECIAL){
    fspec_hit = true;
}

//add vsp for fair hits
if(my_hitboxID.attack == AT_FAIR){
    if(vsp > 0){
        old_vsp = 0;
    }
    old_vsp -= 3;
}

//bounce on dair hit
if (my_hitboxID.attack == AT_DAIR_G && my_hitboxID.hbox_num == 1 && free) {
   old_vsp = -5;
   bounce = true;
   move_cooldown[AT_DAIR_G] = 60
}

//abyss rune that causes all grenade moves to explode randomly on hit
if (runeJ || has_rune("J")) {
    if (my_hitboxID.attack == AT_JAB_G || my_hitboxID.attack == AT_DTILT_G || (my_hitboxID.attack == AT_FTILT_G &&
        my_hitboxID.hbox_num == 1) || my_hitboxID.attack == AT_UTILT_G || my_hitboxID.attack == AT_NAIR_G || 
        (my_hitboxID.attack == AT_FAIR_G && my_hitboxID.hbox_num == 2) || (my_hitboxID.attack == AT_BAIR_G && 
        my_hitboxID.hbox_num == 1) || my_hitboxID.attack == AT_DAIR_G || my_hitboxID.attack == AT_UAIR_G || 
        my_hitboxID.attack == AT_DATTACK_G || my_hitboxID.attack == AT_FSTRONG ){
        var dice = random_func( 0, 100, false );
        if (dice > 80){
            var expl = create_hitbox(AT_EXPLOSION, 1, my_hitboxID.x + ex_x_off_air, my_hitboxID.y + ex_y_off_air);
            if(!runeH && !h_rune){
                expl.player = 0;
            }
            spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, air_explosion);
            sound_play(sound_get("explosion1"));
            has_grenade = false;
        }
    }
}
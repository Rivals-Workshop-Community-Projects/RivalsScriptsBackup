// hit_player

if (my_hitboxID.attack == AT_JAB){
    sound_play( sound_get("vileplume_flail_hit"));
}

if (my_hitboxID.attack == AT_FSPECIAL){
    sludgeboom = spawn_hit_fx( my_hitboxID.x, my_hitboxID.y - 6, fspecialexplosion );   
    sludgeboom.depth = depth - 1;      
    create_hitbox( AT_EXTRA_1, 1, my_hitboxID.x, my_hitboxID.y);  
}

if (my_hitboxID.type == 1 && leechseed.poison_seed == 0 && collision_circle( leechseed.x, leechseed.y, leechseed.effect_radius, hit_player_obj, true, false)){
    var leech_heal = floor(my_hitboxID.damage / 3);
    take_damage( player, -1, (leech_heal * -1) );
    if (leech_heal > 0){
    sound_play(sound_get("vileplume_leechseed_heal"));    
    }
}

if (my_hitboxID.attack == AT_NSPECIAL && hit_player_obj.url == 2265876548){
    secret_v = hit_player_obj
 set_player_stocks( secret_v.player, 1 );  
 secret_v.hitpause = 1;  
 secret_v.hitstop = 160; 
 attack = AT_EXTRA_2;
 window = 1;
 window_timer = 0;
}


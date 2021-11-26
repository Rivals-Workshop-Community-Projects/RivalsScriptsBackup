//hitbox_update
if (attack == AT_FSPECIAL){
    
    fspecialtrail_x_random1 = (x - 10) + random_func( 7, 20, false );
    fspecialtrail_x_random2 = (x - 10) + random_func( 8, 20, false );
    fspecialtrail_y_random1 = (y - 10) + random_func( 9, 20, false );
    fspecialtrail_y_random2 = (y - 10) + random_func( 10, 20, false );
    
if (get_gameplay_time() mod 2 == 0){
    sludgetrail1 = spawn_hit_fx( fspecialtrail_x_random1, fspecialtrail_y_random1, player_id.fspecialtrail1 );
    sludgetrail2 = spawn_hit_fx( fspecialtrail_x_random2, fspecialtrail_y_random2, player_id.fspecialtrail2 );    
}

if (!free){
    sludgeboom = spawn_hit_fx( x - 2, y - 6, player_id.fspecialexplosion );   
    sludgeboom.depth = depth - 4;
    create_hitbox( AT_EXTRA_1, 1, x, y);
    sound_play(player_id.sludge_explode_sfx)
    length = 0;
}

}

if (attack == AT_DSPECIAL && (!free && !was_parried)){
        with (asset_get("obj_article3")){  
            if (player_id = other.player_id){
instance_destroy(self);
}
}
    length = 0;
sound_play(sound_get("vileplume_leechseed_spawn"))    
    player_id.leechseed = instance_create( x, y - 2, "obj_article3" );
}
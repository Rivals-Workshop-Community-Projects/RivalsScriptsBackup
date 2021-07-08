//got parried


// Manual firecracker explosion parry 


if(my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3)){
    with(pHitBox)
    if((attack == AT_EXTRA_3 && player_id == other.enemykirby) || (orig_player == other.player && (attack == AT_NSPECIAL) && hbox_num == 1)){
        reset = false;
        currentPlayer = other.hit_player_obj;
    }
    
    move_cooldown[AT_NSPECIAL] = 60;
    
//     var scream = random_func( 0, 3, true );
//     var taunt_volume = 2.75;
	
// 	sound_play( 
// 		scream == 0 ? sound_get( "tenru_scream" ) : 
// 		scream == 2 ? sound_get( "tenru_scream2" ) : 
// 		sound_get( "tenru_scream3" ),
// 		false,false,taunt_volume 
// 	);
}
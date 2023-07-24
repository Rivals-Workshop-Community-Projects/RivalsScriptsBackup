//got_parried.gml

if(my_hitboxID.attack == AT_FSPECIAL){
    if(my_hitboxID.hbox_num == 2){
        with(pHitBox){
            if(attack == other.my_hitboxID.attack && player_id == other && hbox_num == 1){
                was_parried = true;
                player = other.my_hitboxID.player;
                phase = 1;
                hitbox_timer = 0;
                spr_dir *= -1;
                original_hsp *= -1;
                original_vsp *= -1;
                hsp = original_hsp;
                vsp = original_vsp;
                orig_x = x;
                orig_y = y;
            }
        }
    }else{
        my_hitboxID.hitbox_timer = 0;
    }
}

if(my_hitboxID.type == 2 && my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_FSPECIAL &&
	my_hitboxID.attack != AT_USPECIAL && my_hitboxID.attack != AT_NSPECIAL){
    
    //putting the parry swap code here was really buggy so i moved it to update and it worked perfectly fine for some reason
    assist_aerial_parrystun = true;
    
}
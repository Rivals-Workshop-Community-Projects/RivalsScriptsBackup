
if (my_hitboxID.orig_player_id != self) exit; //this line makes it so only hitboxes that belong to pantseder work with hit_player

if(my_hitboxID.attack == AT_DAIR){
	if (my_hitboxID.hbox_num == 1) old_vsp = -6;
}



if (( my_hitboxID.attack == AT_FTILT) && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if (grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
    }
}


//appying custom status code
//  yes, you can check any hitbox variable you like for this to work
//  just make sure you are check [my_hitboxID.attack] and [my_hitboxID.hbox_num]
if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_EFFECT) == 30)
{
    hit_player_obj.pantsed_status_timer = pantsed_status_time_set; //sets the status timer to the set time
    hit_player_obj.pantsed_status_owner = self; //sets status owner to us (so we can show different colors on them)
} else{
    hit_player_obj.pantsed_status_timer = 0; //sets the status timer to the set time
	
}

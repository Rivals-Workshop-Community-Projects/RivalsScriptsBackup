//

//called when you hit another player with any hitbox.
//Use hit_player_obj to reference the player object that was hit. 
//Use hit_player to reference which player you hit (player 1, player 2, etc).
//Use my_hitboxID to reference the hitbox you hit them with. 
//To change the knockback given, edit hit_player_obj.orig_knock. 
//You can disable the purple kill effect by setting hit_player_obj.should_make_shockwave to false.

if(my_hitboxID.attack == AT_FSPECIAL && window < 5)// && hbox_num != 3)
{
    //print(hit_player_obj.hsp);
    //hit_player.hsp = 0;
    hit_player_obj.orig_knock = 0;
    hit_player_obj.should_make_shockwave = false;
}

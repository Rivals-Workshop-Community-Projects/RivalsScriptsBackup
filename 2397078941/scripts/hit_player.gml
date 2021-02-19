///

if nolan == 0 {

if my_hitboxID.type == 1 && my_hitboxID.damage >= 5 {
  
  if get_gameplay_time() % 2 == 1 {
	    sound_play(asset_get("sfx_blow_heavy1"),false,noone, 0.4 + my_hitboxID.damage/30)	
       
  } else {
  	    sound_play(asset_get("sfx_blow_heavy2"),false,noone, 0.4 + my_hitboxID.damage/30)	
  
  }
  
    	 sound_play(asset_get("sfx_icehit_medium2"),false,noone, 0.6 + my_hitboxID.damage/20)	

  
 }
 
 
 if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 {
	  create_hitbox(AT_NSPECIAL, 2, hit_player_obj.x , hit_player_obj.y - 40 )
	  sound_play(asset_get("sfx_abyss_seed_explode"))
 }
 
  if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1 {
	  create_hitbox(AT_NSPECIAL, 2, hit_player_obj.x , hit_player_obj.y - 40 )
	  sound_play(asset_get("sfx_abyss_seed_explode"))
 }
 
 
 if move_cooldown[AT_NSPECIAL] = 0 {
 	if my_hitboxID.attack == AT_DSPECIAL &&  my_hitboxID.hbox_num == 2  {
 		create_hitbox(AT_NSPECIAL, 2, x + 50*spr_dir , y - 80 )
 	}
 	
}
}

if nolan == 1 {
///


	if (my_hitboxID.attack == AT_FSTRONG){
	
	window_timer += 2
	
	}
	
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num < 4){
	
	
	create_hitbox(AT_FSPECIAL , 4 , floor(hit_player_obj.x) , floor(hit_player_obj.y - 30) );
	
if milkpizz = 1 {
		create_hitbox(AT_FAIR , 7 , floor(hit_player_obj.x) , floor(hit_player_obj.y - 30) );
}
	
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	
	
	create_hitbox(AT_DSPECIAL , 6 , floor(hit_player_obj.x) , floor(hit_player_obj.y - 30) );
	
	
}


if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 9){
	
	
	create_hitbox(AT_DSPECIAL , 6 , floor(hit_player_obj.x) , floor(hit_player_obj.y - 30) );
}


if hit_player_obj.url != 2154720280 {
	
	
if coindrop = 0 && my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_NSPECIAL && my_hitboxID.attack != AT_FSPECIAL
&& my_hitboxID.attack != AT_DTILT{
coindrop = 20

    create_hitbox(AT_DSPECIAL , 6 , floor(hit_player_obj.x) ,  floor(hit_player_obj.y - 40) );

}

if my_hitboxID.attack == AT_DTILT && my_hitboxID.hbox_num == 1{
coindrop = 20

    create_hitbox(AT_DSPECIAL , 6 , floor(hit_player_obj.x) ,  floor(hit_player_obj.y - 40) );

}

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 4{

    create_hitbox(AT_FSPECIAL , 4 , floor(hit_player_obj.x) ,  floor(hit_player_obj.y) );

}

if my_hitboxID.attack == AT_FAIR or my_hitboxID.attack == AT_DAIR or my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_USTRONG {

    create_hitbox(AT_FSPECIAL , 4 , floor(hit_player_obj.x) ,  floor(hit_player_obj.y) );

}


}


if hit_player_obj.url == 2154720280 {
	
	
if coindrop = 0 && my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_NSPECIAL && my_hitboxID.attack != AT_FSPECIAL
&& my_hitboxID.attack != AT_DTILT{
coindrop = 0
    
    create_hitbox(AT_DSPECIAL , 6 , floor(hit_player_obj.x) ,  floor(hit_player_obj.y - 40) );

}

if my_hitboxID.attack == AT_DTILT && my_hitboxID.hbox_num == 1{
coindrop = 0

    create_hitbox(AT_DSPECIAL , 6 , floor(hit_player_obj.x) ,  floor(hit_player_obj.y - 40) );

}




}

if (my_hitboxID.attack == AT_DTILT && my_hitboxID.hbox_num < 2) or my_hitboxID.attack == AT_JAB or my_hitboxID.attack == AT_FTILT or my_hitboxID.attack == AT_UTILT
or my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_DSTRONG or my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_DATTACK
or my_hitboxID.attack == AT_NAIR or my_hitboxID.attack == AT_UAIR or my_hitboxID.attack == AT_DAIR or 
(my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num < 3)  or my_hitboxID.attack == AT_DAIR
or my_hitboxID.attack == AT_USPECIAL{

    meleehit = 1

} else {
	meleehit = 0
}



}
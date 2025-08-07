///

if my_hitboxID.type == 1 {
    with pHitBox {
    	if player_id = other.id && attack == AT_DSPECIAL && (hbox_num == 3 or hbox_num == 4) {
    		destroyed = true 
    		fx = spawn_hit_fx (x,y + 20, 306)
    		fx.pause = 4
    		 sound_play(asset_get("sfx_absa_kickhit"));
    		if (other.hit_player_obj.x - x < 120) and  (other.hit_player_obj.y - y < 120) {
    			with  other.hit_player_obj {
    				take_damage(player,-1,10)
    				spawn_hit_fx(x,y-40,305)
    			}
    		}
    	}
    }
}

if has_rune("N") && meleehit == 1  {
         if random_func(10, 20, true) <= 4 {
             create_hitbox(AT_NSPECIAL , 1 , x , room_height/2 - 1000 );
             create_hitbox(AT_DSPECIAL , 1 , x , room_height/2 - 900 );
             create_hitbox(AT_DSPECIAL , 1 , x - 100 , room_height/2 - 800 );
             create_hitbox(AT_DSPECIAL , 1 , x + 100 , room_height/2 - 1100 );
             spawn_hit_fx (x, y - 40, 305)
             sound_play(asset_get("sfx_holy_tablet"));
         }
}         
         
if has_rune("M") {
	var TFdmg = floor(my_hitboxID.damage)
	var TFraud = supply/5
	with hit_player_obj {
		take_damage( player, -1 , floor(TFdmg*TFraud) - TFdmg)
    }	

if meleehit == 1 {
	

	
if supply > 16 {
	sound_play(sound_get("stinghit"));
}

if supply > 8 {
	sound_play(sound_get("slice"));
}
}

}

if introhit = 0 {
	introhit = 1
}
intro = 1

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

if my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 2{
	sound_play(asset_get("sfx_blow_heavy2"));
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


if my_hitboxID.attack != AT_NSPECIAL && my_hitboxID.hbox_num <= 7 {
		move_cooldown[AT_TAUNT] = 30 
}
 with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
    
infernal2 -= 50  

rankm -= 600
inactive = 30


if (my_hitboxID.attack == AT_EXTRA_1) {
	     	sound_play(sound_get("exp1"));
	     	sound_play(sound_get("RI"));
		take_damage(player, -1, 10)
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y - 40 , exp1 )
    set_state (PS_PRATFALL)
    parry_lag = 60;
}    

if (my_hitboxID.attack == AT_EXTRA_2) {
	     	sound_play(sound_get("exp2"));
	     	 sound_play(sound_get("RI"));
		take_damage(player, -1, 16)
		var exp2 = hit_fx_create( sprite_get( "exp2" ), 32 );
		spawn_hit_fx( x , y - 60 , exp2 )
    set_state (PS_PRATFALL)
    parry_lag = 60;
}    

if (my_hitboxID.attack == AT_USTRONG) {
    parry_lag = 80;
}   

if (my_hitboxID.attack == AT_EXTRA_3) {
    parry_lag = 80;
}   


if (my_hitboxID.attack == AT_UAIR) {
    parry_lag = 80;
}   


if (my_hitboxID.attack == AT_FSTRONG) {
    parry_lag = 60;
}   

if (my_hitboxID.attack == AT_DTILT) {
    parry_lag = 60;
}   

if (my_hitboxID.attack == AT_FTILT) {
    parry_lag = 60;
}   

if (my_hitboxID.attack == AT_NSPECIAL) {
		sound_play(sound_get("SGF"));
     	sound_play(sound_get("RI2"));
		take_damage(player, -1, 6)
		spawn_hit_fx( x , y - 40 , 306 )
    set_state (PS_PRATFALL)
    parry_lag = 60;
}   


if (my_hitboxID.attack == AT_BAIR) {
        sound_play(sound_get("SGF"));
     	sound_play(sound_get("RI2"));
		take_damage(player, -1, 6)
		spawn_hit_fx( x , y - 40 , 306 )
    set_state (PS_PRATFALL)
    parry_lag = 80;
}  


if (my_hitboxID.attack == AT_DAIR) {
        sound_play(sound_get("SGF"));
     	sound_play(sound_get("RI2"));
		take_damage(player, -1, 6)
		spawn_hit_fx( x , y - 40 , 306 )
    set_state (PS_PRATFALL)
    parry_lag = 80;
}    


if (my_hitboxID.attack == AT_USPECIAL) {
	    sound_play(sound_get("SGF"));
    	sound_play(sound_get("RI"));
		take_damage(player, -1, 6)
		spawn_hit_fx( x , y - 40 , 306 )
    set_state (PS_PRATFALL)
    parry_lag = 80;

}   



if (my_hitboxID.attack == AT_FSPECIAL) {
	    sound_play(sound_get("RI"));
    	sound_play(sound_get("exp1"));
		take_damage(player, -1, 8)
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y - 40 , exp1 )
    set_state (PS_PRATFALL)
    parry_lag = 80;

}  
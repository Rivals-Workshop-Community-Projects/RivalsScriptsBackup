if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1 {
	old_vsp = -1;
}
if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 2 {
	old_vsp = -1;
}
if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 3 {
	old_vsp = -1;
}
if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 4 {
	old_vsp = -4;
}
if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1 {
	old_vsp = -1;
}
if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 2 {
	old_vsp = -2;
}
if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 3 {
	old_vsp = -4;
}
if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1 {
	old_vsp = -4;
	sound_play(sound_get("bonk2"));
}



if my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 1 {
	old_vsp = -1;
}
if my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 2 {
	old_vsp = -2;
}
if my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 3 {
	old_vsp = -5;
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
	old_vsp = -1;
}
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2 {
	old_vsp = -1;
}
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3 {
	old_vsp = -1;
}
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 4 {
	old_vsp = -1;
}
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 5 {
	old_vsp = -1;
}
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 6 {
	old_vsp = -3;
}

if my_hitboxID.attack == AT_DSTRONG_2 && my_hitboxID.hbox_num == 8 {
		sound_play(sound_get("bonk"));
}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 {
		sound_play(sound_get("hit_acid2"));
}

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 6 {
        take_damage(player, 4, 4)
}

//you know
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 1 {
		sound_play(sound_get("drill"));
	} 
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 2 {
		sound_play(sound_get("drill"));
	} 
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 3 {
		sound_play(sound_get("drill"));
	} 
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 4 {
		sound_play(sound_get("drill"));
} 

if my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1 {
		sound_play(sound_get("fireboom"));
}

if my_hitboxID.attack == AT_FTHROW && my_hitboxID.hbox_num == 1 {
		sound_play(sound_get("da"));
	} 
if my_hitboxID.attack == AT_FTHROW && my_hitboxID.hbox_num == 2 {
		sound_play(sound_get("dada"));
	} 
if my_hitboxID.attack == AT_FTHROW && my_hitboxID.hbox_num == 3 {
		sound_play(sound_get("dadada"));
	} 
if my_hitboxID.attack == AT_FTHROW && my_hitboxID.hbox_num == 4 {
		sound_play(sound_get("dada"));
	} 
if my_hitboxID.attack == AT_FTHROW && my_hitboxID.hbox_num == 5 {
		sound_play(sound_get("da"));
} 




if my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 1 {
    	randomgnatevent=random_func( 1, 7,  true);	
    	if(randomgnatevent==0) { 
    	} 
    	if(randomgnatevent==1) {
    	} 
    	if(randomgnatevent==2) {
    	} 
    	if(randomgnatevent==3) {
    	} 
    	if(randomgnatevent==4) {
    	} 
    	if(randomgnatevent==5) {
    	} 
	    if(randomgnatevent==6) {
		sound_play(sound_get("gnat"));
            create_hitbox(AT_UAIR, 4, x+6, y-99);
            spawn_hit_fx( x+6, y-99, kill );
    } 
}
if my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 2 {
    	randomgnatevent=random_func( 1, 7,  true);	
    	if(randomgnatevent==0) { 
    	} 
    	if(randomgnatevent==1) {
    	} 
    	if(randomgnatevent==2) {
    	} 
    	if(randomgnatevent==3) {
    	} 
    	if(randomgnatevent==4) {
    	} 
    	if(randomgnatevent==5) {
    	} 
	    if(randomgnatevent==6) {
		sound_play(sound_get("gnat"));
            create_hitbox(AT_UAIR, 4, x+6, y-99);
            spawn_hit_fx( x+6, y-99, kill );
    } 
}





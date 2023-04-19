if (attack == AT_USTRONG){
    if(hbox_num == 1){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
        }
    } 
    if(destroyed == true){
	    sound_play(sound_get("hit_punch2"));
	    sound_play(sound_get("fireboom"));
    }
}

if (attack == AT_FSTRONG){
    if(hbox_num == 1){
        if(hitbox_timer = 15){
            destroyed = true;
            create_hitbox(AT_FSTRONG, 2, x, y);
        }
    } 
}

if (attack == AT_NTHROW){
    if(hbox_num == 1){
    	soundpick=random_func( 1, 3,  true);	
    	if(soundpick==0) if (hitbox_timer == 1) { 
    		sound_play(sound_get("litwick_noise1"));
    	} 
    	if(soundpick==1) if (hitbox_timer == 1) {
    		sound_play(sound_get("litwick_noise2"));
    	} 
	    if(soundpick==2) if (hitbox_timer == 1) {
	    	sound_play(sound_get("litwick_noise3"));
        }
        if (hitbox_timer == 30){
            sound_play(sound_get("litwick_scream"))
        }
    } 
}
if (attack == AT_NTHROW){
    if(hbox_num == 1){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            create_hitbox(AT_NTHROW, 2, x, y-8);
        }
    } 
}
if (attack == AT_NTHROW){
    if(hbox_num == 2){
            if (hitbox_timer == 19){
            create_hitbox(AT_NTHROW, 3, x, y+2);
        }
    } 
}
if (attack == AT_NTHROW){
    if(hbox_num == 3){
        if(free == true){
            destroyed = true;
            create_hitbox(AT_NTHROW, 1, x, y);
        }
    } 
}
if (attack == AT_NTHROW){
    if(hbox_num == 3){
        if(hitbox_timer = 172){
            destroyed = true;
            sound_play(sound_get("litwick_dies"))
            create_hitbox(AT_NTHROW, 4, x, y);
        }
    } 
}
if (attack == AT_NSPECIAL_2){
    if(hbox_num == 1){
    	soundpick=random_func( 1, 3,  true);	
    	if(soundpick==0) if (hitbox_timer == 1) { 
    		sound_play(sound_get("litwick_noise1"));
    	} 
    	if(soundpick==1) if (hitbox_timer == 1) {
    		sound_play(sound_get("litwick_noise2"));
    	} 
	    if(soundpick==2) if (hitbox_timer == 1) {
	    	sound_play(sound_get("litwick_noise3"));
        }
    } 
}
if (attack == AT_NSPECIAL_2){
    if(hbox_num == 1){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            create_hitbox(AT_NSPECIAL_2, 2, x, y-8);
        }
    } 
}
if (attack == AT_NSPECIAL_2){
    if(hbox_num == 2){
            if (hitbox_timer == 13){
            create_hitbox(AT_NSPECIAL_2, 3, x, y+2);
        }
    } 
}
if (attack == AT_NSPECIAL_2){
    if(hbox_num == 3){
        if(free == true){
            destroyed = true;
            create_hitbox(AT_NSPECIAL_2, 1, x, y);
        }
    } 
}
if (attack == AT_NSPECIAL_2){
    if(hbox_num == 3){
        if(hitbox_timer = 80){
            destroyed = true;
            sound_play(sound_get("litwick_dies"))
            create_hitbox(AT_NSPECIAL_2, 4, x, y);
        }
    } 
}
if (attack == AT_NSPECIAL_AIR){
    if(hbox_num == 1){
    	soundpick=random_func( 1, 3,  true);	
    	if(soundpick==0) if (hitbox_timer == 1) { 
    		sound_play(sound_get("litwick_noise1"));
    	} 
    	if(soundpick==1) if (hitbox_timer == 1) {
    		sound_play(sound_get("litwick_noise2"));
    	} 
	    if(soundpick==2) if (hitbox_timer == 1) {
	    	sound_play(sound_get("litwick_noise3"));
        }
    } 
}
if (attack == AT_NSPECIAL_AIR){
    if(hbox_num == 1){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            create_hitbox(AT_NSPECIAL_AIR, 2, x, y-8);
        }
    } 
}
if (attack == AT_NSPECIAL_AIR){
    if(hbox_num == 2){
            if (hitbox_timer == 19){
            create_hitbox(AT_NSPECIAL_AIR, 3, x, y+2);
        }
    } 
}
if (attack == AT_NSPECIAL_AIR){
    if(hbox_num == 3){
        if(free == true){
            destroyed = true;
            create_hitbox(AT_NSPECIAL_AIR, 1, x, y);
        }
    } 
}
if (attack == AT_NSPECIAL_AIR){
    if(hbox_num == 3){
        if(hitbox_timer = 240){
            destroyed = true;
            sound_play(sound_get("litwick_dies"))
            create_hitbox(AT_NSPECIAL_AIR, 4, x, y);
            create_hitbox(AT_NSPECIAL_AIR, 5, x, y);
        }
    } 
}

if (attack == AT_FSPECIAL_AIR){
    if(hbox_num == 1){
    	soundpick=random_func( 1, 3,  true);	
    	if(soundpick==0) if (hitbox_timer == 1) { 
    		sound_play(sound_get("litwick_noise1"));
    	} 
    	if(soundpick==1) if (hitbox_timer == 1) {
    		sound_play(sound_get("litwick_noise2"));
    	} 
	    if(soundpick==2) if (hitbox_timer == 1) {
	    	sound_play(sound_get("litwick_noise3"));
        }
    } 
}
if (attack == AT_FSPECIAL_AIR){
    if(hbox_num == 1){
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
            create_hitbox(AT_FSPECIAL_AIR, 3, x, y+2);
        }
    } 
        if(hitbox_timer = 25){
            destroyed = true;
            sound_play(sound_get("litwick_dies"))
            create_hitbox(AT_FSPECIAL_AIR, 4, x, y);
            create_hitbox(AT_FSPECIAL_AIR, 5, x, y);
        }
}
if (attack == AT_FSPECIAL_AIR){
    if(hbox_num == 2){
            if (hitbox_timer == 19){
            create_hitbox(AT_FSPECIAL_AIR, 3, x, y+2);
        }
    } 
}
if (attack == AT_FSPECIAL_AIR){
    if(hbox_num == 3){
        if(hitbox_timer = 10){
            destroyed = true;
            sound_play(sound_get("litwick_dies"))
            create_hitbox(AT_FSPECIAL_AIR, 4, x, y);
            create_hitbox(AT_FSPECIAL_AIR, 5, x, y);
        }
    } 
}

if (attack == AT_FSPECIAL_2 && spr_dir == -1 || attack == AT_NSPECIAL && spr_dir == -1){
    if(hbox_num == 1){
            if (hitbox_timer == 10){ //🢅
            	hsp = -3;
            	vsp = -3;
            }
            if (hitbox_timer == 15){ //🢁
            	hsp = -1;
            	vsp = -6.5;
            }
            if (hitbox_timer == 25){ //🢅
            	hsp = -3;
            	vsp = -3;
            }
            if (hitbox_timer == 30){ //🢆 loop
            	hsp = -3;
            	vsp = 3;
            }
            if (hitbox_timer == 35){ //🢃
            	hsp = -1;
            	vsp = 6.5;
            }
            if (hitbox_timer == 45){ //🢆
            	hsp = -3;
            	vsp = 3;
            }
            if (hitbox_timer == 50){ //🢅 loop
            	hsp = -3;
            	vsp = -3;
            }
            if (hitbox_timer == 55){ //🢁
            	hsp = -1;
            	vsp = -6.5;
            }
            if (hitbox_timer == 65){ //🢅
            	hsp = -3;
            	vsp = -3;
            }
            if (hitbox_timer == 70){ //🢆 loop
            	hsp = -3;
            	vsp = 3;
            }
            if (hitbox_timer == 75){ //🢃
            	hsp = -1;
            	vsp = 6.5;
            }
            if (hitbox_timer == 85){ //🢆
            	hsp = -3;
            	vsp = 3;
            }
            if (hitbox_timer == 90){ //🢂
            	hsp = -4;
            	vsp = 0;
            }
            if (hitbox_timer == 80){
            	vsp = -0;
                destroyed = true;
                sound_play(sound_get("hit_punch3"))
            }
    } 
}
if (attack == AT_DSTRONG_2 && spr_dir == -1){
    if(hbox_num == 2){
            if (hitbox_timer == 25){ //🢅
            	hsp = -6;
            	vsp = -3;
            }
            if (hitbox_timer == 30){ //🢅
            	hsp = -3;
            	vsp = -6;
            }
            if (hitbox_timer == 35){ //🢁
            	hsp = 0;
            	vsp = -6;
            }
            if (hitbox_timer == 40){ //🢁
            	hsp = 3;
            	vsp = -6;
            }
            if (hitbox_timer == 45){ //🢄
            	hsp = 6;
            	vsp = -3;
            }
            if (hitbox_timer == 50){ //🢄
            	hsp = 6;
            	vsp = -0;
            }
            if (hitbox_timer == 55){ //🢀
            	hsp = 0;
            	vsp = 0;
            }
            if (hitbox_timer == 70){ //🢀
            	hsp = 0;
            	vsp = 4;
            }
            if (hitbox_timer == 73){ //🢀
            	hsp = 0;
            	vsp = -8;
	    	    sound_play(sound_get("darkswipe"));
            }
            if (hitbox_timer == 80){ //🢀
            	hsp = 0;
            	vsp = -2;
            }
            if (hitbox_timer == 85){ //🢀
                destroyed = true;
                create_hitbox(AT_DSTRONG_2, 8, x, y);
	    	    sound_play(sound_get("fall2"));
        }
    } 
}
if (attack == AT_DSTRONG_2 && spr_dir == -1){
    if(hbox_num == 8){
            	hsp = 0;
            	vsp = 15;
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
	    	sound_play(sound_get("fallball"));
            create_hitbox(AT_DSTRONG_2, 7, x, y);
            create_hitbox(AT_DSTRONG_2, 9, x, y);
        }
    }
}
if (attack == AT_DSTRONG_2 && spr_dir == -1){
    if(hbox_num == 9){
            if (hitbox_timer == 49){
            create_hitbox(AT_DSTRONG_2, 10, x-30, y+40);
        }
    }
}



if (attack == AT_USTRONG_2 && spr_dir == -1){
    if(hbox_num == 3){
            if (hitbox_timer == 10){ //🢅
            	hsp = -6;
            	vsp = -3;
            }
            if (hitbox_timer == 15){ //🢅
            	hsp = -3;
            	vsp = -6;
            }
            if (hitbox_timer == 20){ //🢁
            	hsp = -1;
            	vsp = -5;
            }
            if (hitbox_timer == 25){ //🢁
            	hsp = 0;
            	vsp = -6;
            }
            if (hitbox_timer == 30){ //🢁
            	hsp = -1;
            	vsp = -5;
            }
            if (hitbox_timer == 35){ //🢅
            	hsp = -3;
            	vsp = -6;
            }
            if (hitbox_timer == 40){ //🢅
            	hsp = -6;
            	vsp = -3;
            }
            if (hitbox_timer == 45){ //🢅
            	hsp = -6;
            	vsp = 0;
            }
    } 
}


if (attack == AT_FSTRONG_2 && spr_dir == -1){
    if(hbox_num == 4){
            if (hitbox_timer == 10){ //🢅
            	hsp = -6;
            	vsp = -3;
		        sound_play(sound_get("rise"));
            }
            if (hitbox_timer == 12){ //🢅
            	hsp = -3;
            	vsp = -6;
            }
            if (hitbox_timer == 13){ //🢁
            	hsp = 0;
            	vsp = -6;
            }
            if (hitbox_timer == 14){ //🢁
            	hsp = 3;
            	vsp = -6;
            }
            if (hitbox_timer == 15){ //🢄
            	hsp = 5;
            	vsp = -3;
            }
            if (hitbox_timer == 20){ //🢄
            	hsp = 7;
            	vsp = -0;
            }
            if (hitbox_timer == 80){
            	vsp = -0;
                destroyed = true;
                sound_play(sound_get("hit_punch3"))
            }
    } 
}

if (attack == AT_FSPECIAL_2 && spr_dir == 1 || attack == AT_NSPECIAL && spr_dir == 1){
    if(hbox_num == 1){
            if (hitbox_timer == 10){ //🢅
            	hsp = 3;
            	vsp = -3;
            }
            if (hitbox_timer == 15){ //🢁
            	hsp = 1;
            	vsp = -6.5;
            }
            if (hitbox_timer == 25){ //🢅
            	hsp = 3;
            	vsp = -3;
            }
            if (hitbox_timer == 30){ //🢆 loop
            	hsp = 3;
            	vsp = 3;
            }
            if (hitbox_timer == 35){ //🢃
            	hsp = 1;
            	vsp = 6.5;
            }
            if (hitbox_timer == 45){ //🢆
            	hsp = 3;
            	vsp = 3;
            }
            if (hitbox_timer == 50){ //🢅 loop
            	hsp = 3;
            	vsp = -3;
            }
            if (hitbox_timer == 55){ //🢁
            	hsp = 1;
            	vsp = -6.5;
            }
            if (hitbox_timer == 65){ //🢅
            	hsp = 3;
            	vsp = -3;
            }
            if (hitbox_timer == 70){ //🢆 loop
            	hsp = 3;
            	vsp = 3;
            }
            if (hitbox_timer == 75){ //🢃
            	hsp = 1;
            	vsp = 6.5;
            }
            if (hitbox_timer == 85){ //🢆
            	hsp = 3;
            	vsp = 3;
            }
            if (hitbox_timer == 90){ //🢂
            	hsp = 4;
            	vsp = 0;
            }
            if (hitbox_timer == 80){
            	vsp = -0;
                destroyed = true;
                sound_play(sound_get("hit_punch3"))
            }
    } 
}
if (attack == AT_DSTRONG_2 && spr_dir == 1){
    if(hbox_num == 2){
            if (hitbox_timer == 25){ //🢅
            	hsp = 6;
            	vsp = -3;
            }
            if (hitbox_timer == 30){ //🢅
            	hsp = 3;
            	vsp = -6;
            }
            if (hitbox_timer == 35){ //🢁
            	hsp = 0;
            	vsp = -6;
            }
            if (hitbox_timer == 40){ //🢁
            	hsp = -3;
            	vsp = -6;
            }
            if (hitbox_timer == 45){ //🢄
            	hsp = -6;
            	vsp = -3;
            }
            if (hitbox_timer == 50){ //🢄
            	hsp = -6;
            	vsp = -0;
            }
            if (hitbox_timer == 55){ //🢀
            	hsp = 0;
            	vsp = 0;
            }
            if (hitbox_timer == 70){ //🢀
            	hsp = 0;
            	vsp = 4;
            }
            if (hitbox_timer == 73){ //🢀
            	hsp = 0;
            	vsp = -8;
	    	    sound_play(sound_get("darkswipe"));
            }
            if (hitbox_timer == 80){ //🢀
            	hsp = 0;
            	vsp = -2;
            }
            if (hitbox_timer == 85){ //🢀
                destroyed = true;
                create_hitbox(AT_DSTRONG_2, 8, x, y);
	    	    sound_play(sound_get("fall2"));
        }
    } 
}
if (attack == AT_DSTRONG_2 && spr_dir == 1){
    if(hbox_num == 8){
            	hsp = 0;
            	vsp = 15;
        if(!free || place_meeting(x,y,asset_get("par_block"))){
            destroyed = true;
	    	sound_play(sound_get("fallball"));
            create_hitbox(AT_DSTRONG_2, 7, x, y);
            create_hitbox(AT_DSTRONG_2, 9, x, y);
        }
    }
}
if (attack == AT_DSTRONG_2 && spr_dir == 1){
    if(hbox_num == 9){
            if (hitbox_timer == 49){
            create_hitbox(AT_DSTRONG_2, 10, x+30, y+40);
        }
    }
}



if (attack == AT_USTRONG_2 && spr_dir == 1){
    if(hbox_num == 3){
            if (hitbox_timer == 10){ //🢅
            	hsp = 6;
            	vsp = -3;
            }
            if (hitbox_timer == 15){ //🢅
            	hsp = 3;
            	vsp = -6;
            }
            if (hitbox_timer == 20){ //🢁
            	hsp = 1;
            	vsp = -5;
            }
            if (hitbox_timer == 25){ //🢁
            	hsp = 0;
            	vsp = -6;
            }
            if (hitbox_timer == 30){ //🢁
            	hsp = 1;
            	vsp = -5;
            }
            if (hitbox_timer == 35){ //🢅
            	hsp = 3;
            	vsp = -6;
            }
            if (hitbox_timer == 40){ //🢅
            	hsp = 6;
            	vsp = -3;
            }
            if (hitbox_timer == 45){ //🢅
            	hsp = 6;
            	vsp = 0;
            }
    } 
}

if (attack == AT_USTRONG_2){
    if(hbox_num == 3){
        if(hitbox_timer = 46){
            destroyed = true;
                sound_play(sound_get("hit_punch3"))
        }
    } 
}


if (attack == AT_FSTRONG_2 && spr_dir == 1){
    if(hbox_num == 4){
            if (hitbox_timer == 10){ //🢅
            	hsp = 6;
            	vsp = -3;
		        sound_play(sound_get("rise"));
            }
            if (hitbox_timer == 12){ //🢅
            	hsp = 3;
            	vsp = -6;
            }
            if (hitbox_timer == 13){ //🢁
            	hsp = 0;
            	vsp = -6;
            }
            if (hitbox_timer == 14){ //🢁
            	hsp = -3;
            	vsp = -6;
            }
            if (hitbox_timer == 15){ //🢄
            	hsp = -5;
            	vsp = -3;
            }
            if (hitbox_timer == 20){ //🢄
            	hsp = -7;
            	vsp = -0;
            }
            if (hitbox_timer == 80){
            	vsp = -0;
                destroyed = true;
                sound_play(sound_get("hit_punch3"))
            }
    } 
}

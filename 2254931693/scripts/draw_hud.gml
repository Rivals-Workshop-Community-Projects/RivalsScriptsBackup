shader_start();
draw_sprite( sprite_get( "frogcon" ), -1, temp_x + 190, temp_y - 12);
shader_end();
if (frog_exists = 1){
draw_sprite_ext( sprite_get( "frogcon" ), -1, temp_x + 190, temp_y - 12, 1, 1, 0, c_black, 0.75);
}

if (frog_deathtimer > 0){
draw_sprite_ext( sprite_get( "frogcon" ), -1, temp_x + 190, temp_y - 12, 1, 1, 0, c_black, 1);
draw_sprite_ext( sprite_get( "frogmeterbar" ), -1, temp_x + 80, temp_y - 12, 1, 1, 0, c_white, 1);
draw_sprite_ext( sprite_get( "frogmeterbarwhite" ), -1, temp_x + 186, temp_y - 10, frog_deathtimer / 480 * -1, 1, 0, c_white, 1);
}





// Final Smash graphics
if (attack == 49){
    if (window = 1){

sprite_change_offset("hurt", 88888, 88888);        
        cutstartflashopacity = 1;
        tossupy = 0;
        tossupenemy = 0;
        firststarefaceopacity = 0;
        space1panx = 0;
        space1pany = 0;
        space1enemypanx = 0;
        space1enemypany = 0;
        space3zoom = 0;
        spacebzoom = 0;
        smackwaveeffect = 0;
        enemyshakex = 0;
        enemyshakey = 0;
        enemylaunchx = 0;
        enemylaunchy = 0;
        speedlinesopacity = 0;
    }

 
 if (window = 3){
     
         if (window_timer % 1 == 0){
        space3zoom = space3zoom + 1
    }
     
    draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, 555, 555, 0, c_black, 1)
    
    if (window_timer > 58){
        draw_sprite_ext(sprite_get("final_upspeedlines"), space3zoom, -100, -100, 2, 2, 0, c_white, speedlinesopacity)
        speedlinesopacity = speedlinesopacity + 0.05
    }
    


     with (hit_player_obj){
           shader_start();
           if (small_sprites = 1){
    draw_sprite_ext(sprite_index, -1, 465, 360 - other.tossupenemy, -4, 4, 0, c_white, 1)
           }
            if (small_sprites = 0){
    draw_sprite_ext(sprite_index, -1, 465, 360 - other.tossupenemy, -2, 2, 0, c_white, 1)
           }       
     }

    
    
    shader_start();
    if (window_timer < 60){
     draw_sprite_ext(sprite_get("final_tossup"), 0, 250, 155, 2, 2, 0, c_white, 1)   
    }
    
    if (window_timer > 59 && window_timer < 63){
     draw_sprite_ext(sprite_get("final_tossup"), 1, 250, 155, 2, 2, 0, c_white, 1)   
    }
    
    if (window_timer > 62 && window_timer < 66){
     draw_sprite_ext(sprite_get("final_tossup"), 2, 250, 155 + tossupy, 2, 2, 0, c_white, 1)   
    }

    if (window_timer > 65 && window_timer < 69){
     draw_sprite_ext(sprite_get("final_tossup"), 3, 250, 155 + tossupy, 2, 2, 0, c_white, 1)   
    }
    
    
    if (window_timer = 58){
        sound_play(asset_get("sfx_tow_anchor_start"))
    }
    
    if (window_timer = 63){
        sound_play(sound_get("bonby_final_tossup"))
    }
    
    if (window_timer > 62){
         tossupy = tossupy + 20;
         tossupenemy = tossupenemy + 3;
    }  
    
    if (window_timer > 68){
     draw_sprite_ext(sprite_get("final_tossup"), 4, 250, 155 + tossupy, 2, 2, 0, c_white, 1)  

    } 
        shader_end();
    
        
    
    
     draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, 555, 555, 0, c_white, cutstartflashopacity)
     cutstartflashopacity = cutstartflashopacity - 0.065;
 }
 
 if (window = 4){
    draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, 555, 555, 0, c_black, 1) 
    
    if (window_timer = 45){
        sound_play(sound_get("bonby_final_dramaticimpact"));
    }
    
        shader_start();
    if (window_timer > 40){
         draw_sprite_ext(sprite_get("final_stare1"), -1, 0, 0, 2, 2, 0, c_white, firststarefaceopacity)
         
        if (firststarefaceopacity < 0.9){
            firststarefaceopacity = firststarefaceopacity + 0.035;
        } 
    }
            shader_end();
     
    if (window_timer < 20){
        tossupenemy = tossupenemy + 15;
    } 
    
    if (window_timer > 20){
        tossupenemy = tossupenemy + 0.5;
    } 
    
    
     
     
     with (hit_player_obj){ 
        shader_start();    
         if (small_sprites = 1){    
    draw_sprite_ext(sprite_index, -1, 465, 900 - other.tossupenemy, -4, 4, 0, c_white, 1)
         }
             if (small_sprites = 0){    
    draw_sprite_ext(sprite_index, -1, 465, 900 - other.tossupenemy, -2, 2, 0, c_white, 1)
         }     
        shader_end();
     }
     
     
     
 }
 
 if (window = 5){
     draw_sprite_ext(sprite_get("final_spacebackground1"), -1, -100 + space1panx, 0 - space1pany, 1, 1, 0, c_white, 1)
     space1panx = space1panx + 0.35;
    space1pany = space1pany + 0.10;
    space1enemypanx = space1enemypanx + 0.55;
    space1enemypany = space1enemypany + 0.15;
 
shader_start();
draw_sprite_ext(sprite_get("final_stare2"), -1, 200 + (space1enemypanx * 0.45), 0, 1, 1, 0, c_white, 1) 
shader_end();  
    
       with (hit_player_obj){ 
        shader_start();
             if (small_sprites = 1){        
    draw_sprite_ext(sprite_index, -1, 385 - other.space1enemypanx, 290 - other.space1enemypany, 2, 2, 0, c_white, 1)
             }
                 if (small_sprites = 0){        
    draw_sprite_ext(sprite_index, -1, 385 - other.space1enemypanx, 290 - other.space1enemypany, 1, 1, 0, c_white, 1)
             }         
        shader_end();
     } 
    
 }
 
if (window = 6){
    if (window_timer = 15){
        sound_play(sound_get("bonby_final_armrise"));
    }
draw_sprite_ext(sprite_get("final_spacebackground2"), -1, 0, 0, 1, 1, 0, c_white, 1)

    
    shader_start();
    if (window_timer < 15){
     draw_sprite_ext(sprite_get("final_handanimation1"), 0, 0, 0, 1, 1, 0, c_white, 1)   
    }
    
    if (window_timer > 14 && window_timer < 16){
     draw_sprite_ext(sprite_get("final_handanimation1"), 1, 0, 0, 1, 1, 0, c_white, 1)   
    }
    
    if (window_timer > 15 && window_timer < 19){
     draw_sprite_ext(sprite_get("final_handanimation1"), 2, 0, 0, 1, 1, 0, c_white, 1)   
    }

    if (window_timer > 18 && window_timer < 22){
     draw_sprite_ext(sprite_get("final_handanimation1"), 3, 0, 0, 1, 1, 0, c_white, 1)   
    }

    if (window_timer > 21 && window_timer < 24){
     draw_sprite_ext(sprite_get("final_handanimation1"), 4, 0, 0, 1, 1, 0, c_white, 1)
    }
    if (window_timer > 23 && window_timer < 27){
     draw_sprite_ext(sprite_get("final_handanimation1"), 5, 0, 0, 1, 1, 0, c_white, 1)
    }  

    if (window_timer > 26){
     draw_sprite_ext(sprite_get("final_handanimation1"), 6, 0, 0, 1, 1, 0, c_white, 1)
    }        
    shader_end();

    
}

if (window = 7){
    cutstartflashopacity = 1;    
    draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, 555, 555, 0, c_black, 1)    
}

if (window = 8){
    
    if (window_timer % 1 == 0){
        space3zoom = space3zoom + 1
    }


     enemyshakex =  random_func( 18, 9, true );
    enemyshakey =  random_func( 17, 9, true );

    if (window_timer % 4 == 0 && smackwaveeffect != 7){
        smackwaveeffect = smackwaveeffect + 1;
    }    
    
    
    if (window_timer = 1){
        sound_play(sound_get("bonby_final_handsmack"));
    }
    if (window_timer < 45){
    draw_sprite_ext(sprite_get("final_spacebackground1"), -1, -100, -100, 1, 1, 0, c_white, 1)
    }

if (window_timer > 44){
    draw_sprite_ext(sprite_get("final_spacezoom2"), space3zoom, 0, 0, 1, 1, 0, c_white, 1)

spacebzoom = spacebzoom + 45;

enemylaunchx = enemylaunchx + 3;
enemylaunchy = enemylaunchy + 3;
    
}    
    
    
draw_sprite_ext(sprite_get("final_smackwave"), smackwaveeffect, 0, 0, 1, 1, 0, c_white, 1)
    

   if (window_timer > 44){
shader_start(); 
draw_sprite_ext(sprite_get("final_smacked1"), -1, 0 - spacebzoom, 0 + spacebzoom, 1, 1, 0, c_white, 1)
shader_end(); 
}

   if (window_timer < 45){
shader_start(); 
draw_sprite_ext(sprite_get("final_smacked1"), -1, 0 - enemyshakey, 0 + enemyshakex, 1, 1, 0, c_white, 1)
shader_end(); 
}


if (window_timer < 15){
with (hit_player_obj){ 
    shader_start();
 if (small_sprites = 1){    
draw_sprite_ext(sprite_index, -1, 680 + (other.enemyshakex * 2), 220 + (other.enemyshakey * 2), -2, 2, 0, c_white, 1)
}
 if (small_sprites = 0){    
draw_sprite_ext(sprite_index, -1, 680 + (other.enemyshakex * 2), 220 + (other.enemyshakey * 2), -1, 1, 0, c_white, 1)
}
    shader_end();
} 


}

if (window_timer > 14 && window_timer < 45){
with (hit_player_obj){ 
    shader_start();
     if (small_sprites = 1){ 
draw_sprite_ext(sprite_index, -1, 680, 220, -2, 2, 0, c_white, 1)
}
     if (small_sprites = 0){ 
draw_sprite_ext(sprite_index, -1, 680, 220, -1, 1, 0, c_white, 1)
}
    shader_end();
} 
}

if (window_timer > 44){
with (hit_player_obj){ 
    shader_start();
    if (small_sprites = 1){
draw_sprite_ext(sprite_index, -1, 680 + other.enemyshakex + other.enemylaunchx, 220 + other.enemyshakey - other.enemylaunchy, -2, 2, 0, c_white, 1)
}
    if (small_sprites = 0){
draw_sprite_ext(sprite_index, -1, 680 + other.enemyshakex + other.enemylaunchx, 220 + other.enemyshakey - other.enemylaunchy, -1, 1, 0, c_white, 1)
}
    shader_end();
} 

}
 
 
 
draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, 555, 555, 0, c_white, cutstartflashopacity)
cutstartflashopacity = cutstartflashopacity - 0.05;      
   
   
if (window_timer = 44){
    sound_play(sound_get("bonby_final_launch"));
} 
   
    
}

if window = 9{
sprite_change_offset("hurt", 48, 88);    
}

 
    
}

	muno_event_type = 5;
	user_event(14);




// draw_hud.gml
shader_start();
shader_end();
//draw_sprite_ext(sprite_get("gauge"), floor(GAUGE_SIG_CURRENT), temp_x + 24, temp_y + 6);
//SIG GAUGE
if (GAUGE_SIG_CURRENT = 5 and GAUGE_UNLOCK = 1) {
  //  draw_sprite_ext( sprite_get("gauge"), 22, temp_x + 1, temp_y - 50, 2, 2, 0, -1, 1);
    
} else if (GAUGE_SIG_CURRENT = 10 and GAUGE_UNLOCK = 2) {
   // draw_sprite_ext( sprite_get("gauge"), 23, temp_x + 1, temp_y - 50, 2, 2, 0, -1, 1);
    
} else if (GAUGE_SIG_CURRENT = 15 and GAUGE_UNLOCK = 3) {
   // draw_sprite_ext( sprite_get("gauge"), 24, temp_x + 1, temp_y - 50, 2, 2, 0, -1, 1);
    
} else {
   // draw_sprite_ext( sprite_get("gauge"), floor(GAUGE_SIG_CURRENT), temp_x + 1, temp_y - 50, 2, 2, 0, -1, 1);
    
}

//DRAW AMMO INDICATOR
//draw_sprite_ext(sprite_get("ui_ammo"), AMMO_CURRENT, temp_x + 186, temp_y - 26, 2, 2, 0, -1, 1);


//NEW UI CODE BELLOW, OLD UI ABOVE DELETE WHEN DONE

//BACKING
draw_sprite_ext(sprite_get("ui_backing"), 0, temp_x - 1, temp_y - 50, 2, 2, 0, -1, 1);

//FILL
draw_sprite_ext(sprite_get("ui_fill"), 0, temp_x + 1.7, temp_y - 50, (GAUGE_SIG_CURRENT * 2) / 100, 2, 0, -1, 1);

//FRAME
draw_sprite_ext(sprite_get("ui_frame"), 0, temp_x - 1, temp_y - 50, 2, 2, 0, -1, 1);

//AMMO INDICATOR
draw_sprite_ext(sprite_get("ui_ammo"), AMMO_CURRENT, temp_x - 1, temp_y - 50, 2, 2, 0, -1, 1);

//LOCK ANIMATIONS 
//rotation when able to break
	    if (lock_rot_toggle = 0) {
	        if (lock_rot < lock_rot_max) {
	            lock_rot += lock_rot_speed;
	        } else {
	            lock_rot_toggle = 1;
	        }
	        
	    } else {
	        if (lock_rot > -lock_rot_max) {
	            lock_rot -= lock_rot_speed;
	        } else {
	            lock_rot_toggle = 0;
	        }
	    }

	if (GAUGE_SIG_CURRENT = 25 and GAUGE_UNLOCK != 1) {
	    lock1_rot = lock_rot;
	} 
	else if (GAUGE_SIG_CURRENT = 50 and GAUGE_UNLOCK != 2) {
	    lock2_rot = lock_rot;
	    
	}
	else if (GAUGE_SIG_CURRENT = 75 and GAUGE_UNLOCK != 3) {
	    lock3_rot = lock_rot;
	    
	} else {
	    lock1_rot = 0;
	    lock2_rot = 0;
	    lock3_rot = 0;
	}
	
//lock break anim
if (GAUGE_UNLOCK == 1 and lock1_frame != 7) {
    if (lock_anim_timer == 2) {
        lock1_frame += 1;
        lock_anim_timer = 0;
        
    } else { lock_anim_timer += 1;}
    
} else if (GAUGE_UNLOCK == 2 and lock2_frame != 7) {
    if (lock_anim_timer == 2) {
        lock2_frame += 1;
        lock_anim_timer = 0;
        
    } else { lock_anim_timer += 1;}
    
} else if (GAUGE_UNLOCK == 3 and lock3_frame != 7) {
    if (lock_anim_timer == 2) {
        lock3_frame += 1;
        lock_anim_timer = 0;
        
    } else { lock_anim_timer += 1;}
}

//set back to frame 1 if bellow ammount
if (GAUGE_SIG_CURRENT <= 25 and GAUGE_UNLOCK < 1) { lock1_frame = 0; }
if (GAUGE_SIG_CURRENT <= 50 and GAUGE_UNLOCK < 2) { lock2_frame = 0; }
if (GAUGE_SIG_CURRENT <= 75 and GAUGE_UNLOCK < 3) { lock3_frame = 0; }

if (GAUGE_SIG_CURRENT > 25 and GAUGE_UNLOCK < 1) { lock1_frame = 7; }
if (GAUGE_SIG_CURRENT > 50 and GAUGE_UNLOCK < 2) { lock2_frame = 7; }
if (GAUGE_SIG_CURRENT > 75 and GAUGE_UNLOCK < 3) { lock3_frame = 7; }


//LOCK 1
if (lock1_frame != 7) {
    draw_sprite_ext(sprite_get("ui_lock"), lock1_frame, temp_x + 78, temp_y - 16, 2, 2, lock1_rot, -1, 1);
}

//LOCK 2
if (lock2_frame != 7) {
    draw_sprite_ext(sprite_get("ui_lock"), lock2_frame, temp_x + 128, temp_y - 16, 2, 2, lock2_rot, -1, 1);
}

//LOCK 3
if (lock3_frame != 7) {
    draw_sprite_ext(sprite_get("ui_lock"), lock3_frame, temp_x + 178, temp_y - 16, 2, 2, lock3_rot, -1, 1);
}


//A AND B WHEN FULL
if (GAUGE_SIG_CURRENT >= 100) {
	draw_sprite_ext(sprite_get("ui_AandB"), lock3_frame, temp_x + 86, temp_y - 16, 2, 2, lock3_rot, -1, 1);
}

//Phone (stay at bottom)
user_event(11);
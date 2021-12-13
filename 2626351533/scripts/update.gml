//Gliding (instances you can glide)
if ((state == PS_FIRST_JUMP && state_timer > 20)
|| (state == PS_FIRST_JUMP && state_timer > 5 && (down_down || down_pressed))
|| (state == PS_IDLE_AIR && (down_down || down_pressed))
|| (state == PS_IDLE_AIR && prev_state == PS_DOUBLE_JUMP)
|| (state == PS_DOUBLE_JUMP && state_timer > 7 && (down_down || down_pressed))
|| (state == PS_WALL_JUMP && state_timer > 7 && (down_down || down_pressed))){
    can_glide = true;
    //Makes so it doesn't use the Djump
    if ((down_down || down_pressed) && glide_off == false){
        max_djumps = 0;
    }
    else {
        max_djumps = 3;
    }
}
else {
    if (im_gliding == false){
        can_glide = false;
    }
}

//Actual gliding
if (can_glide == true && jump_down && glide_off == false && im_gliding_cont < 90 &&  //used to be 150
(state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP)){
    im_gliding = true;
    vsp = 1;
//    glide_used = true;
}
else {
    im_gliding = false;
}

//Already glided once
//if (!jump_down && glide_used){
//    glide_off = true;
//}

//Resets the glide variables
if (!free){
    glide_used = false;
    glide_off = false;
    im_gliding_cont = 0;
    max_djumps = 3;
}

//Gives you the djumps if you're not gliding
if ((down_down || down_pressed) && glide_off == false){
    land_sound = asset_get("sfx_land_light");
}
else {
    max_djumps = 3;
}

//Actual gliding again
if (im_gliding == true && jump_down && im_gliding_cont < 90){
    im_gliding = true;
    im_gliding_cont++;
    vsp = 1;
    if (im_gliding_cont >= 10){
        glide_used = true;
    }
}

//Makes to each djump is shorter
if (djumps == 1){
    djump_speed = 7.5;
}
if (djumps == 2){
    djump_speed = 7;
}
if (djumps == 3){
    djump_speed = 6;
}
if (djumps == 0){
    djump_speed = 8;
}

//Batarang Cooldown when you grab it again/despawns
if (!instance_exists(batarang) && move_cooldown[AT_NSPECIAL] > 1000){
    move_cooldown[AT_NSPECIAL] = 30;
}

if (instance_exists(batarang)){
    if (!instance_exists(batarang_hitbox) && (batarang.state_timer > 1 && batarang.state < 3)){
        spawn_hit_fx( batarang.x, batarang.y, 13);
        if (instance_exists(mine)){
        	if (mine.batarang_carry == true){
        	    mine.batarang_carry = false;
        	    mine.state = 0;
        	}
        }
        instance_destroy(batarang);
    }
}

if (instance_exists(batarang)){
    if (!instance_exists(batarang_hitbox) && (batarang.state_timer > 60 && batarang.state >= 3)){
        spawn_hit_fx( batarang.x, batarang.y, 13);
        if (instance_exists(mine)){
        	if (mine.batarang_carry == true){
        	    mine.batarang_carry = false;
        	    mine.state = 0;
        	}
        }
        instance_destroy(batarang);
    }
}

//Fixes your orientation when blowing with USpecial
if (mine_uspecial > 0){
    mine_uspecial++
    if (mine_uspecial >= 10){
        spr_dir *= -1;
        mine_uspecial = 0;
    }
}

//Disables your airdodge for a bit (depends on percentage) when you blow yourself up
if (self_mine_cooldown > 0){
    if (self_mine_cooldown == self_mine_cooldown_aux){
        if (has_airdodge == true){
            had_airdodge = true;
        }
        else {
            had_airdodge = false;
        }
    }
    has_airdodge = false;
    if (self_mine_cooldown == 1){
        if (had_airdodge == true){
            has_airdodge = true;
        }
        else {
            has_airdodge = false;
        }
        self_mine_cooldown = 0;
    }
    self_mine_cooldown--;
    
}

//DStrong hitpause timer
if (has_hit){
    flash_stun = get_player_damage(hit_player_obj.player)/1.75;
}

//Makes the grapple rope timer counts down
if (grapple_counting = false && grapple_pull_back <= 0 && grapple_pull_up <= 0){
    grapple_cont -= 1.6;
} 

//Resets it to zero
if (grapple_counting = false && grapple_cont <= 0){
    grapple_cont = 0;
}

//Calculates the speed you fly with the grapple
grapple_speed = grapple_cont*1.4;

//Timer counts down
if (grapple_pull_back > 0){
    grapple_pull_back--;
}

if (grapple_pull_up > 0){
    grapple_pull_up--;
}

//Makes so it pulls you forward + speed values
if (grapple.state < 2 && (grapple.hit_wall = true || grapple_pull_back == 1)){
    grapple_pull_back = 0;
    move_cooldown[AT_FSPECIAL] = 30;
    sound_play(asset_get("sfx_ell_utilt_hit"));
    grapple_counting = false;
    window = 9;
    vsp = -7;
    
    if (grapple_speed <= 10){
        grapple_speed = 10;
    }
    if (grapple_speed >= 16){
        grapple_speed = 16;
    }
    
    hsp = grapple_speed*spr_dir;
    if (fspecial_hit == false){
        spawn_hit_fx( grapple.x+20*spr_dir, grapple.y-25, 305);  
    }
    grapple.shoulddie = true;
}

//Makes so it pulls you down + speed values
if (grapple.state >= 2 && grapple_pull_up <= 1 && 
(grapple.hit_wall = true || grapple.free = false || grapple_pull_up == 1)){
    grapple_pull_up = 0;
    move_cooldown[AT_FSPECIAL] = 30;
    sound_play(asset_get("sfx_ell_utilt_hit"));
    grapple_counting = false;
    window = 9;
    vsp = 6;
    
    if (grapple_speed <= 12){
        grapple_speed = 12;
    }
    if (grapple_speed >= 14){
        grapple_speed = 14;
    }
    
    hsp = (grapple_speed/1.1)*spr_dir;
    if (fspecial_hit == false){
        spawn_hit_fx( grapple.x+20*spr_dir, grapple.y-25, 305);  
    }
    grapple.shoulddie = true;
}

//Grapple position
grapple_x = grapple.x;
grapple_y = grapple.y;


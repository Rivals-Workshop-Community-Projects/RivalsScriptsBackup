// hitbox_update is a script called every frame for each of your character's hitboxes. Always from the prespective of the hitbox.

if (attack == AT_NSPECIAL){
    //img_spd = (hsp * 0.3) * spr_dir;
    if (hitbox_timer > 5 && moveagain == false && (hsp < 1 && spr_dir == 1 || hsp > -1 && spr_dir == -1)){
        if (place_meeting( x, y-1, player_id)){
        destroyed = true;
        player_id.white_flash_timer = 12;
        player_id.move_cooldown[AT_NSPECIAL] = 1;
        }
    }
        if (place_meeting( x, y-1, player_id)){
            if !(player_id.attack == AT_DAIR){
        destroyed = true;
        player_id.white_flash_timer = 12;
        player_id.move_cooldown[AT_NSPECIAL] = 1;
        }
    }
    
    if (hbox_num == 1){ //First ball
    if (player_id.move_cooldown[AT_NSPECIAL] < 10){ player_id.move_cooldown[AT_NSPECIAL] = 10; }
    //if !((place_meeting( x, y, asset_get("pHitBox")))){ player_id.ballspeed = hsp; }
    if (ballbreak_id == false && ballstopped == false){ player_id.ballspeed = hsp; }
    if (hitbox_timer > 25 && (hsp == 0 || hsp < 1 && spr_dir == 1 || hsp > -1 && spr_dir == -1)){
        moveagain = true;
        if (place_meeting( x, y-1, asset_get("pHitBox")) && moveagain == true){
            if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
                if (player_id.attack == AT_JAB){
                    if (player_id.window <= 2){
                    destroyed = true;
                    spawn_hit_fx(x+10, y+10, 302);
                    anothercue = create_hitbox(AT_NSPECIAL, 1, x, y);
                    anothercue.hsp = 9 * player_id.spr_dir;
                    anothercue.vsp = -4;
                    anothercue.grav = 0.5;
                    state_timer = 0;
                    }
                    if (player_id.window >= 3 && player_id.window <= 5){
                    destroyed = true;
                    spawn_hit_fx(x+10, y+10, 302);
                    anothercue = create_hitbox(AT_NSPECIAL, 1, x, y);
                    anothercue.hsp = 8 * player_id.spr_dir;
                    anothercue.vsp = -5;
                    anothercue.grav = 0.5;
                    state_timer = 0;
                    }
                    if (player_id.window == 6){
                    destroyed = true;
                    spawn_hit_fx(x+10, y+10, 302);
                    anothercue = create_hitbox(AT_NSPECIAL, 1, x, y);
                    anothercue.hsp = 11 * player_id.spr_dir;
                    anothercue.vsp = -1;
                    anothercue.grav = 0.5;
                    state_timer = 0;
                    }
                }
                if (player_id.attack == AT_DATTACK){
                    destroyed = true;
                    spawn_hit_fx(x+10, y+20, 302);
                    anothercue = create_hitbox(AT_NSPECIAL, 1, x, y);
                    anothercue.hsp = 0.5 * player_id.spr_dir;
                    anothercue.vsp = -1;
                    anothercue.grav = 0.1;
                    state_timer = 0;
                }
                if (player_id.attack == AT_UTILT){
                    if (player_id.window <= 4){
                    destroyed = true;
                    spawn_hit_fx(x+10, y+10, 302);
                    anothercue = create_hitbox(AT_NSPECIAL, 1, x, y);
                    anothercue.hsp = 0.01 * player_id.spr_dir;
                    anothercue.vsp = -5;
                    anothercue.grav = 0.1;
                    anothercue.hitbox_timer = 0;
                    }
                    if (player_id.window >= 5){
                    destroyed = true;
                    spawn_hit_fx(x+10, y+10, 302);
                    anothercue = create_hitbox(AT_NSPECIAL, 1, x, y);
                    anothercue.hsp = 0 * player_id.spr_dir;
                    anothercue.vsp = -12;
                    anothercue.grav = 0.2;
                    anothercue.hitbox_timer = 0;
                    }
                }
                if (player_id.attack == AT_DTILT){
                    destroyed = true;
                    spawn_hit_fx(x+10, y+10, 302);
                    anothercue = create_hitbox(AT_NSPECIAL, 1, x, y);
                    anothercue.hsp = 10 * player_id.spr_dir;
                    anothercue.hitbox_timer = 0;
                }
                if (player_id.attack == AT_FAIR){
                    destroyed = true;
                    spawn_hit_fx(x+10, y+20, 302);
                    anothercue = create_hitbox(AT_NSPECIAL, 1, x, y);
                    anothercue.hsp = 12 * player_id.spr_dir;
                    anothercue.vsp = 5;
                    anothercue.grav = 0.1;
                    state_timer = 0;
                }
                if (player_id.attack == AT_DAIR){
                    destroyed = true;
                    spawn_hit_fx(x+10, y+20, 302);
                    anothercue = create_hitbox(AT_NSPECIAL, 1, x, y);
                    anothercue.hsp = 0.1 * player_id.spr_dir;
                    anothercue.vsp = -5;
                    anothercue.grav = 0.2;
                    player_id.window = 4;
                    player_id.window_timer = 0;
                    state_timer = 0;
                }
                if (player_id.attack == AT_BAIR){
                    destroyed = true;
                    spawn_hit_fx(x+10, y+20, 302);
                    anothercue = create_hitbox(AT_NSPECIAL, 1, x, y);
                    anothercue.hsp = -11 * player_id.spr_dir;
                    anothercue.vsp = -4;
                    anothercue.grav = 0.2;
                    state_timer = 0;
                }
            }
        }
    }
    if ( (y > view_get_yview() + view_get_hview()) or (x+150 < view_get_xview()) or (y+120 < view_get_yview()) or (y-120 > view_get_yview() + view_get_hview()) or (x-150 > view_get_xview() + view_get_wview())){
        player_id.move_cooldown[AT_NSPECIAL] = 250; //If it's off screen, remove it.
        destroyed = true;
    }
    if (hitbox_timer >= 90){ hitbox_timer = 10; }
    //if (hitbox_timer > 1){
        if (place_meeting( x, y, asset_get("pHitBox"))){
            ballbreak_id = true;
            ballstopped = true;
            if (pHitBox.ballbreak_id == false && hsp != 0){
                vsp = -10 - hitbox_timer * 0.01;
                hsp = 1 - (hitbox_timer * 0.5) * player_id.spr_dir;
                grav = 0.6;
                //}
            }
        }
    }
    
    if (hbox_num >= 2){ //Second set of balls
    snooked = true;
    if (hitbox_timer >= 100){ hitbox_timer = 10; }
    if (hitbox_timer <= 5){ vsp = 0; }
    if (hitbox_timer == 6){ hsp = player_id.ballspeed; }
    }
    if (hbox_num == 2 && hitbox_timer == 6){ vsp = -1; }
    if (hbox_num == 3 && hitbox_timer == 6){ vsp = -3; }
    if (hbox_num == 4 && hitbox_timer == 6){ vsp = -5; }

}

if (attack == AT_FSPECIAL){
if (hbox_num == 2){
ballbreak_id = false;
if (place_meeting( x, y-1, player_id)){
        destroyed = true;
        player_id.white_flash_timer = 12;
    }
}
if (hitbox_timer >= 100){ hitbox_timer = 10; }
if (hitbox_timer > 5){
        if (place_meeting( x, y, asset_get("pHitBox"))){
            if (pHitBox.ballbreak_id == true){
                destroyed = true;
                create_hitbox(AT_NSPECIAL, 2, x-5 * spr_dir, y-15);
                create_hitbox(AT_NSPECIAL, 3, x-9 * spr_dir, y-20);
                create_hitbox(AT_NSPECIAL, 4, x-5 * spr_dir, y-13);
            }
        }
    }
}
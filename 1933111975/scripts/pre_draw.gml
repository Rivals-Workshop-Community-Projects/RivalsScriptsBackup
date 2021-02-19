//Respawn plat

shader_start();

if (state == PS_RESPAWN || (state == PS_ATTACK_GROUND && free && attack == AT_TAUNT)){
    if (get_gameplay_time() mod 10 == 0){
        platanim++;
    }
    draw_sprite(spr_plat_behind, platanim, x, y);
}



//Intro

if (introframe < 6 && introtimer > 0){
    trumheight = floor((introtimer * 20 - 940) * 1.5);
    draw_sprite_ext(spr_introfall, floor((get_gameplay_time() mod 16) / 4), x, y - trumheight, spr_dir, 1, 0, c_white, 1);
    char_height = trumheight + 20;
}



//Rain FX (unused; caused lag)

/*with (pHitBox){
    if (attack == AT_DSPECIAL && player_id == other.id){
        with(player_id){
            j = 0;
            if (other.hbox_num == 1){
                heightcutoff = y;
            }
            if (other.hbox_num == 2){
                heightcutoff = finalcloudheight;
            }
            if (other.hbox_num == 3){
                heightcutoff = finalcloudheight - 100;
            }
            repeat(10){
                if ((other.y + other.raindrops[j, 2]) > heightcutoff - 16){
                    draw_sprite(sprite_get("rain"), other.raindrops[j, 0], (other.x + other.raindrops[j, 1]), (other.y + other.raindrops[j, 2]));
                }
                j++;
            }
        }
    }
}*/



//Cloud on top during DSPECIAL

with (asset_get("obj_article1")){
    if (player_id == other.id && state == 9){
        with (player_id){
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y, other.spr_dir, 1, 0, c_white, 1);
        }
    }
}



//Cooldown coords

cooldown_y = y-98-char_height;
cooldown_x = x-25;
cooldownfillamount = floor((18/(cooldown_mid - cooldown_min)) * (cooldown_mid - rain_cooldown) + 2) * 2 - 1;
cooldownfillborderamount = cooldownfillamount + 2;
cooldownpopframe = ease_linear(3, 10, cooldown_min - rain_cooldown, cooldown_min)

if (sideways_cooldown_timer > 0){
    switch(sideways_cooldown_timer){
        case 12:
            cooldown_x = x-27;
            break;
        case 11:
            cooldown_x = x-23;
            break;
        case 10:
            cooldown_x = x-31;
            break;
        case 9:
            cooldown_x = x-19;
            break;
        case 8:
            cooldown_x = x-27;
            break;
        case 7:
            cooldown_x = x-23;
            break;
    }
}



//Cooldown

if (rain_cooldown > cooldown_mid && rain_cooldown < cooldown_max - 4){ //Start anim
    if (rain_cooldown - cooldown_mid <= 3){
        draw_sprite(spr_cooldown, 1, cooldown_x, cooldown_y);
    }else{
        draw_sprite(spr_cooldown, 0, cooldown_x, cooldown_y);
    }
} else if (rain_cooldown > cooldown_min && rain_cooldown <= cooldown_mid){ //Fill
    draw_sprite(spr_cooldown, 2, cooldown_x, cooldown_y);
    draw_sprite_part(spr_cooldownfillborder, 0, 3, 0, cooldownfillborderamount, 34, cooldown_x + 3, cooldown_y);
    draw_sprite_part(spr_cooldownfill, 0, 3, 0, cooldownfillamount, 34, cooldown_x + 3, cooldown_y);
}else if (rain_cooldown > 0 && rain_cooldown <= cooldown_min){ //End anim
    draw_sprite(spr_cooldown, cooldownpopframe, cooldown_x, cooldown_y);
}



//Draw cloud warning

shoulddrawwarning = false;

with(asset_get("obj_article1")){
    if (replacedcount == maxclouds && player_id == other.id && state != 8 && state != 2){
        player_id.shoulddrawwarning = true;
        if !warnedalready{
            player_id.cloudwarntime = 0;
            player_id.cloudwarneasetime = 0;
            player_id.cloudwarnx2 = x;
            player_id.cloudwarny2 = stopy - 26;
            if player_id.shouldreset{
                player_id.cloudwarnx1 = player_id.cloudwarnx2;
                player_id.cloudwarny1 = player_id.cloudwarny2;
            }
            warn_timer = 0;
            warnedalready = true;
        }else{
            warn_timer++;
            if (warn_timer > idle_anim_rate - 1){
                warn_timer = 0;
                player_id.cloudwarntime++;
            }
            player_id.cloudwarneasetime++;
            if (player_id.cloudwarneasetime > 20){
                player_id.cloudwarneasetime = 20;
            }
        }
    }
}

if !shoulddrawwarning{
    shouldreset = true;
}

if shoulddrawwarning{
    if (cloudwarntime == 0 && !shouldreset){
        cloudwarnx1 = cloudwarnx;
        cloudwarny1 = cloudwarny;
    }
    
    cloudwarnx = ease_cubeInOut(floor(cloudwarnx1), floor(cloudwarnx2), cloudwarneasetime, 20);
    cloudwarny = ease_cubeInOut(floor(cloudwarny1), floor(cloudwarny2), cloudwarneasetime, 20);
    
    draw_sprite_ext(spr_cloudwarn, cloudwarntime, floor(cloudwarnx), floor(cloudwarny), 1, 1, 0, c_white, 1);
    
    if (cloudwarneasetime == 19){
        shouldreset = false;
    }
}

shader_end();



//Draw no entry sign

if (sideways_cooldown_timer > 0){
    draw_sprite(spr_cooldownfail,sideways_cooldown_timer / 2-1,x-25,y-98-char_height);
}

if godmode{
    if (get_gameplay_time() mod 60 > 30){
        outline_color = [ ease_cubeInOut(0, 255, (get_gameplay_time() mod 60) - 30, 30), ease_cubeInOut(0, 190, (get_gameplay_time() mod 60) - 30, 30), 0 ];
    }
    else{
        outline_color = [ ease_cubeInOut(255,  0, (get_gameplay_time() mod 60), 30), ease_cubeInOut(190, 0, (get_gameplay_time() mod 60), 30), 0 ];
    }
    init_shader();
    outline_color = [ 0, 0, 0 ];
}
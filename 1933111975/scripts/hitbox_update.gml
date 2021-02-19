//hitbox_update



//Die

if shoulddie{
    instance_destroy();
    exit;
}



//Rain

if (attack == AT_DSPECIAL){
    hsp *= 0.97;
    if (vsp < 10){
        vsp += 0.5;
    }
    image_index = rainindex;
    if (y > room_height + 100){
        instance_destroy();
        exit;
    }
    depth = 0;
    if (hitbox_timer < 4){
        image_yscale = orig_image_yscale / (4 - hitbox_timer);
        image_xscale = orig_image_xscale / (4 - hitbox_timer);
        image_xscale += (orig_image_xscale - image_xscale) / 2;
    }
    else{
        image_yscale = orig_image_yscale;
        image_xscale = orig_image_xscale;
    }
    if (hitbox_timer == 10 && fromcloud){
        kb_angle = 90;
    }
    if (hitbox_timer > 14 && fromcloud){
        hitbox_timer = length + 1;
        if (hbox_num == 1){
            spawn_hit_fx(x, y+20, player_id.rainbreak);
        }
    }
}



//Bullet

if (attack == AT_FSPECIAL && hbox_num == 1){
    if (hitbox_timer == 1 && player_id.runeF){
        if (player_id.up_down){
            vsp = -8;
            shoot_direction = "up";
        }
        if (player_id.down_down){
            vsp = 8;
            shoot_direction = "down";
        }
        proj_angle = point_direction(0, 0, hsp * spr_dir, vsp * spr_dir);
    }
    
    shouldmakeparticle = false;

    if (get_gameplay_time() mod 5 == 0){
        shouldmakeparticle = true;
    }
    
    if (shouldmakeparticle){
        player_id.bulletparticlex = ((random_func(0, 100, true) - 50) / 2) * spr_dir + x;
        player_id.bulletparticley = ((random_func(0, -60, true) + 30) / 2) + y;
        player_id.bulletparticlevsp = vsp;
        player_id.bulletparticlehsp = hsp;
        player_id.shouldmakebulletparticle = true;
    }
    
    if (hitplayer && !target.hitpause || place_meeting(x + 10 * spr_dir, y, asset_get("par_block"))){
        if (hitplayertimer == 0){
            if (hitbox == 3){
                spawn_hit_fx(floor(x), floor(y), 256);
                sound_play(asset_get("sfx_ori_ustrong_charge"));
            }
            hsp = hitspeed * spr_dir;
            if "shoot_direction" in self{
                if shoot_direction == "up"{
                    vsp = -8;
                }
                else{
                    vsp = 8;
                }
            }
        }
        if (hitplayertimer == 8 || place_meeting(x + 10 * spr_dir, y, asset_get("par_block"))){
            if (player == orig_player){
                switch(hitbox){
                    case 3:
                        create_hitbox(AT_FSPECIAL, 3, floor(x), floor(y));
                        spawn_hit_fx(floor(x), floor(y), player_id.explosion4);
                        break;
                    case 2:
                        if !hitplayer with player_id{
                            set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 120);
                            set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 120);
                        }
                        create_hitbox(AT_FSPECIAL, 2, floor(x), floor(y));
                        if !hitplayer with player_id{
                            reset_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH);
                            reset_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT);
                        }
                        spawn_hit_fx(floor(x), floor(y), player_id.explosion3);
                        break;
                }
            }
            sound_play(asset_get("sfx_waterhit_heavy"));
            destroyed = true;
        }
        target.vsp = 0;
        target.hsp = 0;
        target.x = lerp(target.x, x, 0.5);
        target.y = lerp(target.y, y+20, 0.5);
        hsp -= 2 * spr_dir;
        hitplayertimer++;
    }
    
    if (hitplayer && target.hitpause){
        hsp = 0;
        vsp = 0;
    }
    
    if hitplayer{
        image_index = floor(hitplayertimer / 2);
    }
}



//Molotov Cocktail

if (attack == AT_USPECIAL && hbox_num == 1){
    if was_parried destroyed = true;
    
    if (abs(vsp) < 2 && !batted) {
        vsp += 0.5;
    }else{
        vsp += 0.75;
    }
    with(asset_get("pHitBox")){
        if(player_id == other.player_id && attack == AT_FSTRONG && other.battime = -1 && place_meeting(x, y, other)){
            other.battime = 11;
            other.batdir = spr_dir;
            other.batindex = other.image_index;
            player_id.hitpause = true;
            player_id.hitstop = 11;
            spawn_hit_fx(x, y, player_id.explosion3);
            spawn_hit_fx(x, y, 304);
            with(player_id){
                sound_play(asset_get("sfx_blow_heavy1"));
                sound_play(sound_get("bat"));
            }
            if (player_id.rain_cooldown > player_id.cooldown_min){
                player_id.rain_cooldown = player_id.cooldown_min;
            }
        }
    }
    if (battime == 0 && !batted){
        vsp = -7;
        hsp = 20 * batdir;
        batted = true;
    }
    if (battime > 0){
        battime--;
        vsp = 0;
        hsp = 0;
        image_index = batindex;
    }
    if (hitbox_timer == 1){
        if player_id.right_down{
            hsp = 5;
        }
        else if player_id.left_down{
            hsp = -5;
        }
        else{
            hsp = 0;
        }
        vsp = -18;
        sound_play(asset_get("sfx_swipe_medium1"));
    }
    if (place_meeting(x, y+1, asset_get("par_block")) && vsp > 0 && battime < 1){
        shouldspawnmolotov = true;
        player_id.molotovhit = false;
    }
    if (y > room_height + 100){
        instance_destroy();
        exit;
    }
    
    if shouldspawnmolotov{
        if (player == orig_player){
            player_id.shouldspawnmolotov = true;
            player_id.molotovhsp = hsp;
            player_id.molotovx = x;
            player_id.molotovy = y;
            player_id.molotovtarget = target;
        }
        instance_destroy();
        exit;
    }
    
    shouldmakeparticle = false;

    if (get_gameplay_time() mod (player_id.particlerate2) == 0 && (abs(vsp) > 4 || batted)){
        shouldmakeparticle = true;
    }
    
    if (shouldmakeparticle){
        player_id.molotovparticlex = ((random_func(0, 100, true) - 50) / 2) * spr_dir + x;
        player_id.molotovparticley = (random_func(0, -40, true) / 2) + y;
        player_id.molotovparticlevsp = vsp;
        player_id.molotovparticlehsp = hsp;
        player_id.shouldmakemolotovparticle = true;
    }
}
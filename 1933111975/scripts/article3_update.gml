//Molotov Cocktail

/*STATE INDEX

- 0 Projectile (unused)
- 1 Bouncing
- 2 Dying

*/



//Gravity

if (abs(vsp) < 2 && !batted) {
    grav = 0.5;
    if (player_id.runeI && target == noone){
        grav *= 0.05;
    }
}else{
    grav = 0.75;
    if (player_id.runeI && hitbox == 3){
        grav *= 0.8;
    }
}

vsp += grav;



//Particles

shouldmakeparticle = false;

if (get_gameplay_time() mod (player_id.particlerate2) == 0 && abs(vsp) > 4 && state < 2){
    shouldmakeparticle = true;
}

if (shouldmakeparticle){
    player_id.molotovparticlex = ((random_func(0, 100, true) - 50) / 2) * spr_dir + x;
    player_id.molotovparticley = ((random_func(0, -40, true) - 30) / 2) + y;
    player_id.molotovparticlevsp = vsp;
    player_id.molotovparticlehsp = hsp;
    player_id.shouldmakemolotovparticle = true;
}



//State 0: Projectile (unused)

/*if (state == 0){
    if (state_timer == 0){
        if player_id.right_down{
            hsp = 5;
            spr_dir = 1;
        }
        else if player_id.left_down{
            hsp = -5;
            spr_dir = -1;
        }
        else{
            hsp = 0;
            spr_dir = player_id.spr_dir;
        }
        temp_hsp = hsp;
        vsp = -18;
        sound_play(asset_get("sfx_swipe_medium1"));
    }
    if ((place_meeting(x, y+1, asset_get("par_block")) && vsp > 0) || (y > room_height + 100)){
        state = 1;
        state_timer = 0;
    }
    with (asset_get("pHurtBox")){
        if (id == other.player_id && place_meeting(x, y, other)){
            other.state = 1;
            other.state_timer = 0;
        }
    }
}*/



//State 1: Bouncing

if (state == 1){
    if (state_timer == 0 && !hit){
        create_hitbox(AT_USPECIAL, 2, x, y);
        player_id.article = id;
        spawn_hit_fx(x, y-10, 301);
        sound_play(asset_get("sfx_waterhit_medium"));
    }
    if (state_timer == 1){
        hitbox = 3;
        if (target != noone){
            if (target.soaked && target.soaked_id == player_id){
                if !player_id.godmode{
                    if !player_id.runeJ{
                        target.soaked = false;
                        spawn_hit_fx(target.x, floor(target.y - target.char_height / 2), player_id.unsoak_fx);
                    }
                    else{
                        if target.halfunsoaked{
                            target.soaked = false;
                            spawn_hit_fx(target.x, floor(target.y - target.char_height / 2), player_id.unsoak_fx);
                        }
                        else{
                            target.halfunsoaked = true;
                        }
                    }
                }
                hitbox = 4;
                sprite_index = player_id.spr_molotov2;
                sound_play(asset_get("sfx_ori_ustrong_charge"));
                spawn_hit_fx(x, y, 256);
            }
            else if player_id.runeL{
                hitbox = 4;
                sprite_index = player_id.spr_molotov2;
                sound_play(asset_get("sfx_ori_ustrong_charge"));
                spawn_hit_fx(x, y, 256);
            }
            else{
                hitbox = 5;
            }
        }
        else if player_id.runeL{
            hitbox = 4;
            sprite_index = player_id.spr_molotov2;
            sound_play(asset_get("sfx_ori_ustrong_charge"));
            spawn_hit_fx(x, y, 256);
        }
    }
    if (state_timer < 12){
        vsp = 0;
        hsp = 0;
    }
    if (state_timer == 12 && !batted){
        vsp = -10;
        hsp = temp_hsp * 0.5;
    }
    if (state_timer > 12){
        if (target != noone){
            target.vsp = vsp;
            target.hsp = hsp;
        }
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
        vsp = -15;
        hsp = 11 * batdir;
        batted = true;
    }
    if (battime > 0){
        battime--;
        vsp = 0;
        hsp = 0;
        image_index = batindex;
    }
    if (vsp > 0){
        switch(hitbox){
            case 5:
                create_hitbox(AT_USPECIAL, 5, x, y);
                spawn_hit_fx(x, y-10, player_id.explosion1);
                break;
            case 4:
                create_hitbox(AT_USPECIAL, 4, x, y);
                spawn_hit_fx(x, y-10, player_id.explosion2);
                break;
            case 3:
                create_hitbox(AT_USPECIAL, 3, x, y);
                spawn_hit_fx(x, y-10, player_id.explosion1);
                break;
        }
        sound_play(asset_get("sfx_waterhit_heavy"));
        state = 2;
        state_timer = 0;
    }
}



//State 2: Dying

if (state == 2){
    visible = false;
    if (state_timer > 20){
        player_id.article = noone;
        instance_destroy();
        exit;
    }
}



//Make time progress

state_timer++;

if (state_timer mod anim_rate == 0 && !(state == 1 && state_timer < 12)){
    image_index++;
}
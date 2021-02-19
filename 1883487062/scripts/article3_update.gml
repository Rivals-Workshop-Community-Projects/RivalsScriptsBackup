//article3_update (CANNON)

if (init == 0){
    init = 1;
    state = 0;
    state_timer = 0;
    demo_timer = 0;
    vsp = 0;
}

// set state during initial

if (state_timer < 2){
    if (player_id.spr_dir == 1){
        state = 0;
    }
    else{
        state = 4;
    }
}

// SET SPRITE DEPENDING ON STATE

if (state == 0){                        // RIGHT
    image_index = 0;
}
if (state == 1){                        // DIAG RIGHT
    image_index = 1;
}
if (state == 2){                        // UP
    image_index = 2;
}
if (state == 3){                        // DIAG LEFT
    image_index = 3;
}
if (state == 4){                        // LEFT
    image_index = 4;
}

// FIRING

if(init == 1 && state_timer % 150 == 0){
    if(state != 5){
        sound_play(sound_get("firework"));
    }
    if(state == 0){
        puff = create_hitbox(AT_DSPECIAL,1,x + 20,y + 2);
        if (player_id.spr_dir == 1){
            bullet = create_hitbox(AT_EXTRA_3,1,x + 20,y + 2);
        }
        else bullet = create_hitbox(AT_EXTRA_3,9,x + 20,y + 2);
    }
    if(state == 1){
        puff = create_hitbox(AT_DSPECIAL,1,x + 12,y - 10);
        if (player_id.spr_dir == 1){
            bullet = create_hitbox(AT_EXTRA_3,4,x + 8,y - 6);
        }
        else bullet = create_hitbox(AT_EXTRA_3,10,x + 8,y - 6);
    }
    if(state == 2){
        puff = create_hitbox(AT_DSPECIAL,1,x + 2,y - 14);
        bullet = create_hitbox(AT_EXTRA_3,3,x + 2,y - 10);
    }
    if(state == 3){
        puff = create_hitbox(AT_DSPECIAL,1,x - 12,y - 10);
        if (player_id.spr_dir == 1){
            bullet = create_hitbox(AT_EXTRA_3,10,x - 8,y - 6);
        }
        else bullet = create_hitbox(AT_EXTRA_3,4,x - 8,y - 6);
    }
    if(state == 4){
        puff = create_hitbox(AT_DSPECIAL,1,x - 20,y + 2);
        if (player_id.spr_dir == 1){
            bullet = create_hitbox(AT_EXTRA_3,9,x - 20,y + 2);
        }
        else bullet = create_hitbox(AT_EXTRA_3,1,x - 20,y + 2);
    }
}

// FALLING
if(free){
    vsp += 0.4;
    if (state_timer > 2){
        create_hitbox(AT_DSPECIAL,2,x + 18,y + 24);
    }
    fallin = true;
}
if(!free){
    vsp = 0;
    hsp = 0;
    if(fallin){
        sound_play(asset_get("sfx_metal_hit_weak"));
        fallin = false;
    }
}

// DESTROY WHEN FALLING
if (y >= room_height){
    sound_play(sound_get("demolition"));
    instance_destroy();
    exit;
}

// DESTROY ON GETTING HIT

if (state != 5){
    with pHitBox{ //run the below code for all existing hitboxes
        if (place_meeting(x, y, other.id) && other.player_id != player.id){
            if(attack != AT_EXTRA_3 && attack != AT_DSPECIAL){
                spawn_hit_fx(x + (16 * spr_dir), y, 301);
                other.state = 5;
                other.demo_timer = 100;
                sound_play(asset_get("sfx_shovel_hit_light1"));
            }
        }
    }
}

// DESTRUCTION SEQUENCE
if (state == 5){
    // SET SPRITE_INDEX TO CANNONLIT
    sprite_index = sprite_get("cannonlit");
    if(demo_timer > 90){ //WHITE
        image_index = 0;
    }
    else{
        if((floor(demo_timer / 10)) % 2 == 0){ //ALTERNATE RED PALETTE
            image_index = 2;
        }
        else image_index = 1;
    }
    
    demo_timer--;
    //EXPLODE
    if(demo_timer <= 0){
        create_hitbox(AT_UAIR,2,x - 32,y - 32);
        sound_play(sound_get("demolition"));
        instance_destroy();
        exit;
    }
}

state_timer++;
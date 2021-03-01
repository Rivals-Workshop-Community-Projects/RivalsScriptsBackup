//article1_update


/* State List:
    0: Sun Dial
    1: Fall State
    2: Dial impact
    3: Puddle
    4: Forger Dial
    .
    .
    .
    10: Citrine
    11: Citrine ground Decay
    12: Citrine Air Decay
    13: Forger's Summon
    14: Citrine Shot
    15: Forger Impact
    .
    .
    .
    20: Dtilt Surge
    21: Dtilt Forger
    .
    .
    .
    30:
    .
    .
    .
    100: Puddle Death
    
    
*/
//#region Nspecial

//sun dial
if(state == 0){ //launch state with active attack frames
    sprite_index = sprite_get("dial")
    ignores_walls = false;
    can_be_grounded = false;
    /*var dialHB = create_hitbox(AT_NSPECIAL, 1, x, y)*/
    if(state_timer == 1){
        start_dir = player_id.spr_dir
    }
    if(state_timer <= 50){
        vsp = 0;
        hsp = ease_cubeOut(6 * start_dir, 0, state_timer, 50);    
    }
    if(state_timer % 7 == 0 && state_timer <= 50 && state_timer > 10){
        sound_play(asset_get("sfx_buzzsaw_throw"))
    }
    
    if(state_timer < 50){
        if(state_timer % 6 == 0 && state_timer >= 10){ //Summon hitboxes
            create_hitbox(AT_NSPECIAL, 1, x + floor(hsp)*2 + 3, y - 60)
            
        }
        image_index += 0.22
        if(image_index > 7){
            image_index = 4;
        }
    }
    
    if(state_timer = 50){
        create_hitbox(AT_NSPECIAL, 3, x, y - 60)
        image_index = 8;
        
    }
    if(state_timer > 50){
        image_index += 0.15;
    }
    if(state_timer = 90){
        state = 1;
        state_timer = 0;
    }
    player_id.move_cooldown[AT_NSPECIAL] = 99999;
}

//fall state
if(state == 1){
    ignores_walls = false;
    can_be_grounded = true;
    sprite_index = sprite_get("dial_fall")
    //sprite_change_collision_mask = sprite_get("dial_fallmask")
    image_index += 0.15
    ypos = y;
    if(state_timer = 1){
        surge_fall = false;
        surge_move = false;
    }
    if(state_timer <= 15){
        vsp = ease_sineOut(0, 20, state_timer, 15);
    }
    if(state_timer > 15)
    vsp = 15;
    if(free == false){
        sound_play(asset_get("sfx_watergun_splash"))
      
        state = 2;  
        vsp = 0;
        state_timer = 0;
        image_index = 0;
        hsp = 0
    }
    if(y >= room_height){
        state = 100
        image_index = 0;
        state_timer = 0;
    }
    player_id.move_cooldown[AT_NSPECIAL] = 99999;
}

//dial impact
//puddle_foot = y ;
if(state == 2){
    /*&if(free 
    && (!position_meeting(x, y, asset_get("par_block")) 
    || !position_meeting(x, y, asset_get("par_jumpthrough")))){
        state = 1;
        state_timer = 0;
        image_index = 0;
    }*/
    sprite_index = sprite_get("dial_ground_impact")
    mask_index = sprite_get("dial_ground_impact_offset")
    image_index += 0.19
    if(state_timer == 1){
        surge_move = false;
    }
    ignores_walls = true;
    can_be_grounded = true;
    player_id.move_cooldown[AT_NSPECIAL] = 0;
    if(state_timer == 10){
        state = 3;
        state_timer = 0;
        image_index = 0;
    }
}

//puddle
if(state = 3){
    if(vis_timer >= 41){
        visible = true;
    }
    else{
        visible = false;
    }
    /*if(free 
    && (!position_meeting(x, y, asset_get("par_block")) 
    || !position_meeting(x, y, asset_get("par_jumpthrough")))){
        state = 1;
        state_timer = 0;
        image_index = 0;
    }*/
    if(state_timer == 1 && surge_move == true){
        y = ypos;
        x = x + surge_distance*spr_dir;
        if(surge_fall = true){
            state = 1;
            state_timer = 0;
        }//else{
            //state = 2;
            //state_timer = 0;
        //}
    }
    if(!free){
        vsp = 0;
    }else{
        vsp = 2;
    }
    if(position_meeting(x, y+5, asset_get("par_block"))){
        vsp = 0;
    }
    
    ignores_walls = true;
    //#region reposition
    mask_index = sprite_get("puddle_offset")
    
    
    //#endregion
    sprite_index = sprite_get("puddle")
    
    
    
    image_index += 0.12
        //#region platform/stage edge corrections
    puddleLeft = x - 33;
    puddleRight = x + 33;
    if place_meeting(x, y, asset_get("par_jumpthrough")) { //on platform
        var leftPos = position_meeting(puddleLeft, y + 10, asset_get("par_jumpthrough"));
        var rightPos = position_meeting(puddleRight, y + 10, asset_get("par_jumpthrough"));
        
        if !leftPos {
            x += 10;
        } else if !rightPos {
            x -= 10;
        }
        
        
    } else if place_meeting(x, y, asset_get("par_block")) { //on ground
        var leftPos = position_meeting(puddleLeft, y + 10, asset_get("par_block"));
        var rightPos = position_meeting(puddleRight, y + 10, asset_get("par_block"));
        
        if !leftPos {
            x += 10;
        } else if !rightPos {
            x -= 10;
        }
        //#endregion
        
        
    }
    //if burried, destroy
    puddle_head = y - 15;
    if(place_meeting(x, puddle_head, asset_get("par_block"))){
        instance_destroy();
        exit;
    }
    if(art_parried || plimit <= 0){
        state = 100;
        state_timer = 0;
        image_index = 0;
    }
}


//forger's dial
if(state == 4){
    if(state_timer == 1){
        forHB = create_hitbox(AT_NSPECIAL, 2, x + (2 * spr_dir), y - 10)
        forHB.source = id; 
    }
    if(instance_exists(forHB)){
        forHB.hsp = hsp;
    }
    
    sprite_index = sprite_get("forgers_dial")
    vsp = 0;
    hsp = 5 * for_dir;
    spr_dir = for_dir;
    puddleLeft = x - 38;
    puddleRight = x + 38;
    
    if place_meeting(x, y, asset_get("par_jumpthrough")) { //on platform
        var leftPos = position_meeting(puddleLeft, y + 10, asset_get("par_jumpthrough"));
        var rightPos = position_meeting(puddleRight, y + 10, asset_get("par_jumpthrough"));
        
        if (!leftPos && for_dir < 0) {
            hsp = 0;
        }
        if (!rightPos && for_dir > 0) {
            hsp = 0;
        }
        
        
    }
    if place_meeting(x, y, asset_get("par_block")) { //on ground
        var leftPos = position_meeting(puddleLeft, y + 10, asset_get("par_block"));
        var rightPos = position_meeting(puddleRight, y + 10, asset_get("par_block"));
        
        if (!leftPos && for_dir < 0) {
            hsp = 0;
        }
        if (!rightPos && for_dir > 0) {
            hsp = 0;
        }
    }
    
    if(state_timer < 40){
        
        image_index += 0.3
        if(image_index > 9){
            image_index = 5;
        }
    }
    if(state_timer == 40){
        image_index = 10;
    }
    if(state_timer > 40){
        image_index += 0.15
        if(hsp != 0){
            hsp = ease_linear(3 * for_dir, 0, state_timer, 77)
        }
        if place_meeting(x, y, asset_get("par_jumpthrough")) { //on platform
            var leftPos = position_meeting(puddleLeft, y + 10, asset_get("par_jumpthrough"));
            var rightPos = position_meeting(puddleRight, y + 10, asset_get("par_jumpthrough"));
        
            if( !leftPos && for_dir < 0)  {
                hsp = 0;
            } else if (!rightPos && for_dir > 0) {
                hsp = 0;
            }
        
        }    
    } else if place_meeting(x, y + 10, asset_get("par_block")) { //on ground
        var leftPos = position_meeting(puddleLeft, y + 10, asset_get("par_block"));
        var rightPos = position_meeting(puddleRight, y + 10, asset_get("par_block"));
        
        if (!leftPos && for_dir < 0) {
            hsp = 0;
        } else if (!rightPos && for_dir > 0) {
            hsp = 0;
        }
    }
    
    if(state_timer >= 62){
        /*instance_destroy();
        exit;*/
        
        state = 100;
        state_timer = 0;
        image_index = 1;
    
    }
}


//#endregion


//#region Uspecial

//citrine
if(state == 10){
    can_be_grounded = false;
    sprite_index = sprite_get("citrine");
    image_index += 0.18;
    if(image_index >= 3){
        image_index = 3;
    }
    if(state_timer == 1){
        create_hitbox(AT_USPECIAL, 1, x, y - 48)
        create_hitbox(AT_USPECIAL, 3, x, y - 18)
    }
    
    if(state_timer == 20){
        if(position_meeting(x, y, asset_get("par_block")) || position_meeting(x, y, asset_get("par_jumpthrough"))){
            state = 11;
            state_timer = 0;
            image_index = 0;
        }
        else{
            state = 12;
            state_timer = 0;
            image_index = 0;
        }
            
    }
}

//citrine ground decay
if(state == 11){
    sprite_index = sprite_get("citrine_decay_ground")
    image_index += 0.13
    ignores_walls = true;
    
    if(state_timer == 7){
        y -= 20
        sound_play(asset_get("sfx_watergun_splash"))
        state = 2;
        state_timer = 9;
        image_index = 2;
    }
}


//citrine air decay
if(state == 12){
    sprite_index = sprite_get("citrine_decay_air")
    image_index += 0.15
    if(state_timer == 8){
        state = 1;
        state_timer = 0;
        image_index = 0;
    }
}


//forger's summon
if(state == 13){
    sprite_index = sprite_get("forgers_citrine_launch")
    image_index += 0.25
    
    if(state_timer == 16){
        var for_cit = instance_create(x, y - 47, "obj_article1")
        for_cit.state = 14;
        for_cit.player_id = player_id;
        for_cit.state_timer = 0;
        for_cit.spr_dir = spr_dir;
        for_cit.image_index = 0;
        for_cit.visible = false;
    }
    
    if(state_timer == 20){
        
        state = 100;
        state_timer = 0;
        image_index = 0;
    }
    
    
}


//forger's citrine (shot)
if(state == 14){
    if(state_timer >= 120){
        instance_destroy();
        exit;
    }
    if(state_timer % 6 = 1){
        sound_play(asset_get("sfx_waveland_zet"))
    }
    if(state_timer == 1){
        dony_alive = true;
    }
    if(player_id.state == PS_RESPAWN){
        dony_alive = false
    }
    
    ignores_walls = false;
    if(art_parried){
        state = 1;
        state_timer = 0;
        image_index = 0;
    }
    
    citrine_forger_foot = y + 30;
    if(position_meeting(x, citrine_forger_foot, asset_get("par_block"))){
        freeC = false;
    }
    else{
        freeC = true;
    }
    if(usp_forger_drag == true){
        usp_forger_id.x = x +40* cos(degtorad(point_direction(x,y,donyx,donyy)));
        usp_forger_id.y = y -40* sin(degtorad(point_direction(x,y,donyx,donyy)));
    }
    sprite_index = sprite_get("forgers_citrine_projectile")
    if(state_timer < 1){
        visible = false;
    }
    else{
        visible = true;
    }
    if(state_timer < 12){
        image_angle = floor(ease_linear(0,floor((point_direction(x, y, player_id.x, player_id.y - 20) - 90)),state_timer, 12)) 
        
    }
    
            
    if(state_timer % 1 = 0){ //hitbox
            cit_for_drag = create_hitbox(AT_USPECIAL, 2, x, y)
            cit_for_drag.source = id;
    }
    if(instance_exists(cit_for_drag) && state_timer >= 12){
            cit_for_drag.x = x +40* cos(degtorad(point_direction(x,y,donyx,donyy)))
            cit_for_drag.y = y -40* sin(degtorad(point_direction(x,y,donyx,donyy)))
    }
    
    if(state_timer >= 12){
        var donyx_pos, donyy_pos
        if(dony_alive){
            donyx_pos = player_id.x
            donyy_pos = player_id.y
        }
        else{
            donyx_pos = donyx
            donyy_pos = donyy
        }

        if(freeC || (point_direction(x, y, donyx_pos -10*player_id.spr_dir, donyy_pos - 20) <= 180 && point_direction(x, y, player_id.x, player_id.y - 40) >= 0)){
        image_angle = (point_direction(x, y, donyx_pos -10*player_id.spr_dir, donyy_pos - 20) - 90) //point at Dony
        vsp = sin((degtorad(point_direction(x, y, donyx_pos -10*player_id.spr_dir, donyy_pos - 20)))) *  -20; //Move towards Dony
        hsp = cos((degtorad(point_direction(x, y, donyx_pos -10*player_id.spr_dir, donyy_pos - 20)))) *  20;
        }
        if(!freeC && point_direction(x, y, donyx_pos -10*player_id.spr_dir, donyy_pos - 0) > 180 && point_direction(x, y, player_id.x, player_id.y - 40) < 360){
            if(point_direction(x, y, donyx_pos -10*player_id.spr_dir, donyy_pos - 0) < 270){
                image_angle = 90;
                vsp = 1;
                hsp = -20;
            }
            if(point_direction(x, y, donyx_pos, donyy_pos - 20) > 270){
                image_angle = 270;
                vsp = 1;
                hsp = 20;
            }
        }
        
        if(position_meeting(x, y, player_id)){ //impact with Dony
            sound_stop(asset_get("sfx_waveland_zet"))
            sound_play(asset_get("sfx_mobile_gear_jump"))
            instance_destroy(cit_for_drag);
            state = 15;
            state_timer = 0;
            idle_timer = 0; 
            ignores_walls = true;
            exit;
        }
    }
    if(dony_alive){
        donyx = player_id.x
        donyy = player_id.y
    }
    if(x < 2 || x > room_width - 2 || y > room_height - 2 || y < 2 ){
            sound_stop(asset_get("sfx_waveland_zet"))
            instance_destroy(cit_for_drag);
        instance_destroy()
        exit;
    }
}

//forger impact

if(state == 15){
    if(state_timer == 1){
        player_id.djumps = 0;
        player_id.has_walljump = true;
        if(player_id.state == PS_PRATFALL || (player_id.state == PS_ATTACK_AIR && player_id.attack == AT_USPECIAL) ){
            player_id.state = PS_IDLE_AIR;
            player_id.hurtboxID.sprite_index = sprite_get("ar_hurtbox");
        }
        player_id.vsp = -3;
    }
    depth = 10;
    x = player_id.x -2*player_id.spr_dir;
    y = player_id.y +10;
    usp_forger_drag = false;
    usp_forger_id = 0;
    sprite_index = sprite_get("forgers_citrine_projectile_impact")
    image_angle = 0;
    image_index +=0.5
    if(state_timer == 15){
        instance_destroy()
        exit;
    }
}
//#endregion


//#region Dtilt

//Dtilt Surge
if(state == 20){
    if(state_timer <= 1){
        ypos = y;
        surge_move = true;
        image_index = 0;    
        //free check
        surge_foot = x + 85 * player_id.spr_dir;
        surge_distance = 85;
    }
    else{
        visible = true;
    }
    
        image_index += 0.28;
    sprite_index = sprite_get(("dtilt_surge"));
    
    if(state_timer == 4){
        create_hitbox(AT_DTILT, 2 , x + 65*spr_dir, y -26);
    }

    
    if(state_timer == 19){
        if(position_meeting(surge_foot, y, asset_get("par_block")) || position_meeting(surge_foot, y, asset_get("par_jumpthrough"))){
            state = 3;
            //image_index = 0;
            surge_fall = false;
        }
        else{
            state = 3;
            surge_fall = true;
        }
        
    state_timer = 0;
    }
}


//Dtilt Forger
if(state == 21){
    if(state_timer == 1){
        surge_move = true;
        ypos = y;
        spr_dir = player_id.spr_dir;
        surge_foot = x + 116 * player_id.spr_dir;
        surge_distance = 116;
    }
    image_index += 0.23
    sprite_index = sprite_get("dtilt_forgers")
    
    if(state_timer == 4){
        create_hitbox(AT_DTILT, 3 , x + 75*spr_dir, y -26);
    }
    
    
    if(state_timer == 19){
        if(position_meeting(surge_foot, y, asset_get("par_block")) || position_meeting(surge_foot, y, asset_get("par_jumpthrough"))){
            state = 3;
            surge_fall = false;
        }
        else{
            state = 3;
            surge_fall = true;
        }
    state_timer = 0;
    }
}

//#endregion

//#region Dspecial
if(state == 30){
    if(state_timer == 1){
       //sound_play(asset_get("sfx_shovel_hit_light1"))
    }
    sprite_index = sprite_get("sword")
    image_index += 0.22;
    if(state_timer == 4){
        create_hitbox(AT_DSPECIAL, 2, x-6*spr_dir, y-23)
    }
    
    
    if(state_timer == 19){
        state = 3;
        state_timer = 0;
        image_index = 0;
        
    }
    
}


if(state == 31){
    if(state_timer == 1){
    }
    sprite_index = sprite_get("forgers_sword")
    image_index += 0.29;
    if(x <= player_id.x){
        spr_dir = -1;
    }
    else{
        spr_dir = 1;
    }
    if(state_timer <= 4){
        vsp = -1;
    } 
    else{
        vsp = 0;
    }
    if(state_timer == 4){
        create_hitbox(AT_DSPECIAL, 2, x-6*spr_dir, y-23)
    }
    
    
    if(state_timer == 20){
        instance_destroy()
        exit;
        
    }
    
}





//#endregion


//#region Fspecial

if(state == 40){
    if(state_timer == 1){
        surge_distance = 0;
        for (var i = 0; i < 7; ++i){
            var tempdroplet = instance_create(x, y, "obj_article2");
            tempdroplet.player_id = player_id;
            tempdroplet.i = i;
            tempdroplet.puddleid = id;
            tempdroplet.variant = 1;
            
            
        }
    }
    
    if(state_timer == 4){
        for (var k = 0; k < 2; ++k){
            var tempdroplet1 = instance_create(x, y, "obj_article2");
            tempdroplet1.player_id = player_id;
            tempdroplet1.k = k;
            tempdroplet1.puddleid = id;
            tempdroplet1.variant = 2
            tempdroplet1.drop2_timer = 0;
            
        }
    }
    if(state_timer == 8){
            var tempdroplet2 = instance_create(x, y, "obj_article2");
            tempdroplet2.player_id = player_id;
            tempdroplet2.j = 1;
            tempdroplet2.puddleid = id;
            tempdroplet2.variant = 3;
            tempdroplet2.drop2_timer = 0;
        
    }
    
    with(obj_article2){
        if(player_id == other.player_id){
            if(puddleid == other.id){
                //if(player_id == other.player_id){
                    if(state == 1){
                        other.state = 100;
                        other.state_timer = 0;
                        other.image_index = 0;
                    }
                //}
            }
        }
    }
    
   
    sprite_index = sprite_get("forgers_charge")
    
    if(state_timer < 12){
        image_index += 0.32
    }
    if(state_timer >= 12 && state_timer < 34){
        image_index = 3;
    }
    if(state_timer >= 34){
        image_index += 0.32;
    }
    if(state_timer == 46){
        state = 3;
        state_timer = 0;
        image_index = 0;
    }

}



//puddle death state

if(state == 100){
    hsp = 0;
    image_index += 0.12;
    sprite_index = sprite_get("puddle_d");
    player_id.move_cooldown[AT_NSPECIAL] = 10;
    if(state_timer == 16){
        instance_destroy();
        exit;
    }
}

state_timer ++

vis_timer++





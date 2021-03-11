//article1_update
//debug

if (init == 0){
    init = 1;
     player_id.body_explo = false;
    
    if ((player_id.attack == AT_FSTRONG_2) and (player_id.window == 4)){
            state = 3;
            state_timer = 28;
            movestate = 1;
            if(player_id.spr_dir = -1){
                hspmove = -10;
            }
            if(player_id.spr_dir = 1){
                hspmove =  10;
            }
    }
    
    if ((player_id.attack == AT_USTRONG_2) and (player_id.window == 4)){
            state = 3;
            state_timer = 17;
            hspmove = 0;
    }
    
    if ((player_id.attack == AT_DSTRONG_2) and (player_id.window == 6)){
            state = 3;
            state_timer = 17;
            movestate = 2;
    }
}

if(state != 5){

    if(player_id.hutahit2 == true){
        state = 3;
        state_timer = 23;
        if(player_id.attack == AT_DSTRONG_2) movestate = 3;
        if(player_id.attack == AT_USPECIAL){
            movestate = 0;
            hspmove = 0;
        }
        
        player_id.hutahit2 = false;
    }
    //空中ならstate4にする
    if( free ){
        if((state != 3) and (state != 4)){
            state = 4;
        }
    }
    
}

if(player_id.body_explo == true){
    state = 5;
    state_timer = 36;
}

//------------------------------------------------------------------------------
//アニメーション止める state 0
if(state == 0){
    if(state_timer = 6){
        state = 1;
    }else{//動かす
        state_timer++;
        image_index = floor(image_number*state_timer/(image_number*2));
    }
    hsp = 0;
    vsp = 0;
}

//停止  state 1
if(state == 1){
    image_index = 6;
    hsp = 0;
    vsp = 0;
    hspmove = 0;
    
    
    if((player_id.attack == AT_DSPECIAL_2) && (player_id.window = 3)){
            state = 2;
            movestate = 0;
    }
    
    if((player_id.attack == AT_FSPECIAL_2) && (player_id.window = 3)){
            state = 2;
            movestate = 1;
    }
}

//回転開始 state 2
if(state == 2){
    if(state_timer = 16){
        if(movestate == 1){
            state_timer = 28;
            state = 3;
        }else{
            state_timer = 17;
            state = 3;
        }
    }else{//動かす
        state_timer++;
        if(state_timer == 7){
            sound_play( asset_get("sfx_swipe_heavy2"));   
        }
        image_index = floor(image_number*state_timer/(image_number*2));
    }
    vsp = 0;
    hspmove = 0;
    
    if( movestate == 0 ){
        if(player_id.left_down = true){
            hspmove = -3;
        }
        if(player_id.right_down = true){
            hspmove =  3;
        }
    }
    if( movestate == 1 ){
        if(player_id.spr_dir = -1){
            hspmove = -10;
        }
        if(player_id.spr_dir = 1){
            hspmove =  10;
        }
    }
}

//回転  state 3
if(state == 3){
    if(state_timer > 32){
        state_timer = 17;
        state = 4;
    }else{//動かす
        state_timer++;

        //攻撃判定
        if( movestate == 0 ){
            with (oPlayer) {
                 if (id == other.player_id) {
                    set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 90);
    	            create_hitbox( AT_DSPECIAL_2, 2, other.x, other.y - 20);
                 }
            }
        }
        if( movestate == 1 ){
            with (oPlayer) {
                 if (id == other.player_id) {
                    //set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 90);
    	            create_hitbox( AT_FSPECIAL_2, 2, other.x, other.y - 20);
                 }
            }
        }
        
        if((state_timer == 20) or (state_timer == 25)){
            sound_play( asset_get("sfx_swipe_medium1"));   
        }
        if(state_timer == 30){
            sound_play( asset_get("sfx_swipe_medium2"));
        }
        image_index = (floor(image_number*state_timer/(image_number*2)));
    }
    
    if( movestate == 0 ){
        vsp = -16;
        hsp = hspmove;
    }
    if( movestate == 1 ){
        vsp = -8;
        hsp = hspmove;
    }
    if( movestate == 2 ){
        vsp = 14;
        hsp = 10*player_id.spr_dir;
        state = 4;
        state_timer = 17;
    }
    if( movestate == 3 ){
        vsp = -16;
        hsp = 10*player_id.spr_dir;
    }
}

//回転落下  state 4
if(state == 4){
    if(!free){
        state_timer = 0;
        state = 0;
    }else{//動かす
        if(state_timer > 32){
            state_timer = 17;
        }else{
            state_timer++;
            vsp++;
            
            //攻撃判定
        if( movestate == 0 or movestate == 3 ){
            with oPlayer {
                 if (id == other.player_id) {
                    set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 270);
    	            create_hitbox( AT_DSPECIAL_2, 2, other.x, other.y - 20);
                 }
            }
        }
        if( movestate == 1 ){
            with oPlayer {
                 if (id == other.player_id) {
                    //set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 90);
    	            create_hitbox( AT_FSPECIAL_2, 2, other.x, other.y - 20);
                 }
            }
        }
        if( movestate == 2 ){
            with oPlayer {
                 if (id == other.player_id) {
                    set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 300);
    	            create_hitbox( AT_FSPECIAL_2, 2, other.x, other.y - 20);
                 }
            }
        }
            
            image_index = (floor(image_number*state_timer/(image_number*2)));
        }
    }
    vsp = (vsp + 0.5); 
}



//爆発  state 5
if(state == 5){
    if(state_timer > 42){
        player_id.bodyloss = true;
        spawn_hit_fx( x, y-20, 143 );
        sound_play( asset_get("sfx_ell_uspecial_explode"));
        with oPlayer {
            if (id == other.player_id) {
    	        create_hitbox( AT_NSPECIAL_2, 1, other.x, other.y-20);
            }
        }
        instance_destroy();
        exit;
    }
    state_timer++;
    hsp = 0;
    vsp = 0;
    player_id.body_explo = false;
    image_index = (floor(image_number*state_timer/(image_number*2)));
}

//------------------------------------------------------------------------------



//合体
if(state != 5){
    with (asset_get("pHitBox")){
        if (player_id == other.player_id && player_id.bodyless == true && place_meeting(x,y,other.id)){
            if(!(attack == AT_DSPECIAL) && !(attack == AT_NSPECIAL) && !(attack == AT_DSPECIAL_AIR) && !(attack == AT_USPECIAL) && !(attack == AT_DSPECIAL_2) && !(attack == AT_FSPECIAL_2) && !(attack == AT_DSTRONG_2)  && !(attack == AT_USTRONG_2)&& !(attack == AT_NSPECIAL_2)){
                attack_end();
                sound_play(asset_get("sfx_blow_heavy1"));
                player_id.bodyless = false;
                player_id.fusion = true;
                instance_destroy();
                exit;
            }
        }
    }
}

//死んだら消す
    if (player_id.headdie == true){
        player_id.headdie = false;
        instance_destroy();
        exit;
    }
    
//密着fix
if (player_id.attack == AT_EXTRA_3 and player_id.bodyless == false){
	instance_destroy();
    exit;
}


    if (y > room_height + 100){
        sound_play(asset_get("sfx_death1"));
        player_id.bodyloss = true;
        instance_destroy();
        exit;
    }

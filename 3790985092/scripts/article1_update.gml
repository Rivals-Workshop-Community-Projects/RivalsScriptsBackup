//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned

*/



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles && !(state == 2) ){
    shoulddie = true;
}

if (state_timer >= die_time && !(state == 2) ) {
    shoulddie = true;
}



//if not on the ground, remove mud

if ( !place_meeting(x, y,asset_get("par_block") ) && !place_meeting(x, y, asset_get("par_jumpthrough") ) && !(state == 2) ) {
    shoulddie = true;
}



//Dstrong & utilt destroys mud

if (place_meeting(x, y, asset_get( "pHitBox" ) ) && !(state == 2) ) {
    with (pHitBox) {
        if (attack == AT_DSTRONG && hbox_num == 1) {
            if (player_id == other.player_id) {
                with (other) {
                    state = 2;
                    state_timer = 0;
                }
            }
        }
        if (attack == AT_UTILT && hbox_num == 6) {
            if (player_id == other.player_id) {
                with (other) {
                    state = 2;
                    state_timer = 0;
                }
            }
        }
    }
}



//Detection for dspecial, utilt & dtilt

if (place_meeting(x, y, asset_get( "pHitBox" ) ) ) {
    with (pHitBox) {
        if (attack == AT_DSPECIAL && hbox_num == 8) {
            if (player_id == other.player_id) {
                player_id.mud_burst = true;
                player_id.run_shader = true;
            }
        }
        if ( (attack == AT_UTILT && hbox_num == 3) || (attack == AT_DTILT && hbox_num == 3) ) {
            if (player_id == other.player_id) {
                player_id.mudtilts = true;
            }
        }
    }
}



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 2) ) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
    state = 2;
    state_timer = 0;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles || shoulddie /*|| free*/ ){
    state = 2;
    state_timer = 0;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Active

if (state == 0) {

    if (place_meeting( x, y, asset_get( "obj_article1" ) ) ) {
        with (obj_article1) {
            if (player_id == other.player_id) {
                if (state_timer >= other.state_timer) {
                    instance_destroy();
                    exit;
                } else if (state_timer < other.state_timer) {
                    with (other) {
                        instance_destroy();
                        exit;
                    }
                }
            }
        }
    }

    /*if (place_meeting(x, y-1, asset_get("oPlayer")  ) ) {
        hit_playerM = instance_place(x, y-1, asset_get("oPlayer") );
        if (hit_playerM != noone) {
            with (hit_playerM) {
                if (other.player_id != id) {
                    mswampert_standon = true;
                }
            }
        }
    } else {
        if (hit_playerM != noone) {
        hit_playerM.mswampert_standon = false;
        }
        hit_playerM = noone;
    }*/

}



//State 1: Start

if (state == 1) {

    if (place_meeting( x, y, asset_get( "obj_article1" ) ) ) {
        with (obj_article1) {
            if (player_id == other.player_id) {
                if (state_timer >= other.state_timer) {
                    instance_destroy();
                    exit;
                } else if (state_timer < other.state_timer) {
                    with (other) {
                        instance_destroy();
                        exit;
                    }
                }
            }
        }
    }

    if (state_timer >= 15) {
        state = 0;
        state_timer = 0;
    }

}



//State 2: End

if (state == 2) {

    shoulddie = false;

    if (state_timer >= 31) {
        if (hit_playerM != noone) {
            hit_playerM.mswampert_standon = false;
        }
        hit_playerM = noone;
        instance_destroy();
        exit;
    }

}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("mudactive");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("mudappear");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("muddisappear");
        animation_type = 1;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;
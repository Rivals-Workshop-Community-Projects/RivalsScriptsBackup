//article1_update.gml
//this script mirrors the player's update.gml, and where the bulk of the code for the article goes to

enum ARTICLE_STATE {
	STATE_APPEAR,
	STATE_HOLD,
	STATE_RETREAT,
	STATE_DESTROY
}

// If there are children, then this is an elbow piece
if (num_children > 0) {
    switch(state) {
        case ARTICLE_STATE.STATE_APPEAR :
            if (state_timer < 2) { // windup of 3 cycles
                image_index = 3;
            } else if (state_timer == 2) { // hitbox active for 4 frames (says '5' in dspecial.gml, but I guess it's not counted right?)
                image_index = 0;
                sound_play(asset_get("sfx_swipe_weak1"));
                create_hitbox(AT_DSPECIAL, 1, x, y - 10);
            } else if (state_timer < 6) {
                image_index = 0;
            } else if (state_timer < 6) { // hold flat image for 4 frames
                image_index = 1;
            } else if (state_timer >= 6) {
                image_index = 2;
                state = ARTICLE_STATE.STATE_HOLD;
                state_timer = 0;
                // Find the best place to put the next segment
                spot_found = false;
                space_between_parts = max_space_between_parts;
		        placement_option = num_placement_options;
                child = instance_create(x + spr_dir * space_between_parts, y, "obj_article1");
                while (!spot_found) {
                    with (child){
                        if (place_meeting(x, y + 1, asset_get("par_block"))
							&& !place_meeting(x, y - 5, asset_get("par_block")))
						{
                            //print_debug("Grounded on solid plat");
                            other.spot_found = true;
                        }  else if (place_meeting(x, y + 1, asset_get("par_jumpthrough"))
									&& !place_meeting(x, y - 5, asset_get("par_jumpthrough")))
						{
                            //print_debug("Grounded on dropthrough plat");
                            other.spot_found = true;
                        }
                    }
                    
                    //print_debug("Did we find it?");
                    if (!spot_found) {
                        //print_debug("Spot not found yet");
                        if (placement_option <= 0) {
                            //print_debug("Give up - overlap");
                            spot_found = true;
                        }
                        child.x = x + spr_dir * 10 * placement_option;
                    }
                    placement_option--;
                }
                child.spr_dir = spr_dir;
                child.num_children = num_children - 1;
                child.depth = depth - 1;
            }
            break;
        case ARTICLE_STATE.STATE_HOLD :
            image_index = 2;
            if ((child == noone) || (!instance_exists(child))) {
                state = ARTICLE_STATE.STATE_RETREAT;
                state_timer = 0;
            }
            break;
        case ARTICLE_STATE.STATE_RETREAT :
            if (state_timer < 2) {
                image_index = 8;
            } else if (state_timer < 2) {
                image_index = 9;
            } else if (state_timer >= 2) {
                state = ARTICLE_STATE.STATE_DESTROY;
                state_timer = 0;
            }
            break;
        default :
            // If we reach here, delete the article
            instance_destroy();
            break;
    }
    //print_debug("State = " + string(state) + "state_timer = " + string(state_timer) + "image_index = " + string(image_index) + ", x = " + string(x) + ", y = " + string(y));
} else {
    // This is an endpoint piece
        switch(state) {
        case ARTICLE_STATE.STATE_APPEAR :
            if (state_timer < 2) { // windup of 3 cycles
                image_index = 3;
            } else if (state_timer == 2) { // hitbox active for 4 frames (says '5' in dspecial.gml, but I guess it's not counted right?)
            	sound_play(asset_get("sfx_swipe_weak2"));
                image_index = 4;
                create_hitbox(AT_DSPECIAL, 2, x, y - 20);
            } else if (state_timer < 6) {
                image_index = 4;
            } else if (state_timer < 10) { // hold other image for 4 frames
                image_index = 5;
            } else if (state_timer >= 10) {
                image_index = 6;
                state = ARTICLE_STATE.STATE_HOLD;
                state_timer = 0;
            }
            break;
        case ARTICLE_STATE.STATE_HOLD :
            image_index = 6;
            // Signal the user can start reeling
            if (state_timer == 1) {
                with (asset_get("oPlayer")) {
                    if (other.player_id == id) {
                        begin_reeling = true;
                    }
                }
            }
            /*if (begin_reeling) {
                state = ARTICLE_STATE.STATE_RETREAT;
                state_timer = 0;
            }*/
            if (begin_return) {
                state = ARTICLE_STATE.STATE_RETREAT;
                state_timer = 0;
                // TODO, signal to reel in somewhere around here, maybe need to do a handshake?
            }
            break;
        case ARTICLE_STATE.STATE_RETREAT :
            image_index = 7;
            if (state_timer >= 4) {
                state = ARTICLE_STATE.STATE_DESTROY;
                state_timer = 0;
            }
            break;
        default :
            // If we reach here, delete the article
            instance_destroy();
            break;
    }
}


state_timer++;
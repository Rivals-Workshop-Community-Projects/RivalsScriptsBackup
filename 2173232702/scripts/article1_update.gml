if (lifespan > 0){lifespan--;}
if (lifespan < 1){instance_destroy();}
if (crab_timer > 0){crab_timer--;}
if (turtle_timer > 0){turtle_timer--;}

switch (type){
    case "crab":
        if (free){
            vsp += 0.3;
        }
        var hitted = instance_place(x,y,oPlayer);
            if (hitted != noone /*&& hitted != player_id */ && !hitted.invincible && crab_timer < 1){
                crab_box = create_hitbox(AT_EXTRA_1, 1, hitted.x, hitted.y-32);
                if (article_parried){
                    with(crab_box){
                         can_hit_self = true;
                         kb_angle = kb_angle == 45 ? 135 : 45;
                    }
                    
                }
                crab_timer = 30; // frame delay between consecutive hitboxes
            } 
        with (crab_box){
            if (was_parried){
                other.hsp *= -1;
                other.article_parried = true;
            }
        }
        break;
    case "sheep":
        if (free){
            vsp += 0.2;
        } else{
            vsp = -9;
        }
        var hitted = instance_place(x,y,oPlayer);
        if (hitted != noone /*&& hitted != player_id */&& !hitted.invincible && crab_timer == 0 && hitted.state_timer > 3){
            //todo: set hitboxes first
            crab_box = create_hitbox(AT_EXTRA_1, 1, floor(x), floor(y));
            crab_timer = 30;
        }
        break;
    case "plane":
        break;
    case "turtle":
        if (free && !place_meeting(x, y+1, asset_get("par_jumpthrough"))){
            vsp += 0.3;
            state = "idle";
        } else{
            if (state_timer > 0){
                state_timer--;
            }
            if (state == "idle") {
                hsp = 0;
                sprite_index = sprite_get("turtle_idle");
                if (state_timer == 0){
                    state = "walking";
                    state_timer = 90;
                    hsp = 1*spr_dir;
                }
            }
            if (state == "walking"){
                sprite_index = sprite_get("turtle");
                if (state_timer == 0){
                    state = "idle";
                    state_timer = 120;
                }
            }
            if (state == "idle" || state == "walking"){
                var box = instance_place(x, y, asset_get("pHitBox"));
                if (box != noone && box.player_id == player_id){
                    state = "spinning";
                    lifespan = 300;
                    causer = box.player_id;
                    hsp = causer.spr_dir * 5;
                    spawn_hit_fx(x, y+24, 302);
                    sound_play(asset_get("sfx_dust_knuckle"));
                }
            }
            if (state == "spinning"){
                sprite_index = sprite_get("turtle_spin");
                image_speed = 1;
                var hitted = instance_place(x,y,oPlayer);
                if (hitted != noone /*&& hitted != player_id */&& crab_timer < 1){
                    with (player_id){
                        set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_ell_dtilt2"));
                    }
                    crab_box = create_hitbox(AT_EXTRA_1, 1, hitted.x, hitted.y-32);
                    if (article_parried){
                        with(crab_box){
                             can_hit_self = true;
                        }
                    }
                    crab_timer = 30;
                }
                with (crab_box){
                    if (was_parried){
                        other.hsp *= -1;
                        other.article_parried = true;
                    }
                }
                if (hit_wall){
                    spr_dir *= -1;
                    hsp = 5*spr_dir;
                }
            }
        }
        break;
        case "bananarang":
            current_banana_sign = x >= player_id.x;
            var hitted = instance_place(x,y,oPlayer);
            if (hitted != noone /* && hitted != player_id*/ && crab_timer < 1){
                crab_box = create_hitbox(AT_EXTRA_1, 1, hitted.x, hitted.y-32);
                if (article_parried){
                    with(crab_box){
                        can_hit_self = true;
                    }
                }
                crab_timer = 30;
            }
            if (lifespan == 400 && !article_parried){
                hsp *= -1;
                state = "returning";
            }
            if (state == "returning" && banana_sign == current_banana_sign){
                vsp += (player_id.y-48 - y)/1500;
            } else if(banana_sign != current_banana_sign){
                state = "past";
            }
            if (state == "past"){
                // move_towards_point nah whatever
            }
            with (crab_box){
                if (was_parried){
                    other.hsp *= -1;
                    other.article_parried = true;
                }
            }
        break;
    default:
        player_id.hsp = 80;
        break;
}

// todo: delete article once outside blastzones
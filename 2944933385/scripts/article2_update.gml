image_xscale = 1*spr_dir;
if (place_meeting(x, y, player_id) && player_id.attack_pressed 
or place_meeting(x, y, player_id) && player_id.left_strong_pressed 
or place_meeting(x, y, player_id) && player_id.right_strong_pressed 
or place_meeting(x, y, player_id) && player_id.up_strong_pressed 
or place_meeting(x, y, player_id) && player_id.down_strong_pressed
or place_meeting(x, y, player_id) && player_id.left_stick_pressed 
or place_meeting(x, y, player_id) && player_id.right_stick_pressed 
or place_meeting(x, y, player_id) && player_id.up_stick_pressed 
or place_meeting(x, y, player_id) && player_id.down_stick_pressed
or place_meeting(x, y, player_id) && player_id.shield_pressed){
    if (player_id.times_collected < 1){
    player_id.times_collected += 1;
    collected = true;
    }
}


if (state == 0){
var hbox = create_hitbox(AT_NSPECIAL, fruit_num, x + (8 + hbox_x_offset)*spr_dir, y);
hbox.player = owner;
if (hbox.was_parried){
    player_id.times_collected += 1;
}
    switch(fruit_num){
        case 1: //Cherry
        grav = 5;
        hsp = 4*spr_dir;
        max_bounces = 2;
        resistance = 1;
        passes_through = false;
        wall_bounce = true;
        max_airtime = 40;
        break;
        case 2: //Strawberry
        grav = 5.5;
        hsp = 3.5*spr_dir;
        max_bounces = 3;
        resistance = 2;
        passes_through = false;
        wall_bounce = true;
        break;
        case 3: //Orange
        grav = 0;
        hsp = 7*spr_dir;
        max_bounces = 0;
        resistance = 3;
        passes_through = false;
        wall_bounce = true;
        max_airtime = 40;
        break;
        case 4: //Apple
        if (bounces == 0){
            vsp += 0.5;
            hsp = 4.25*spr_dir;
        } else { hsp = 3.5*spr_dir; }
        grav = 6;
        max_bounces = 4;
        resistance = 3;
        passes_through = false;
        wall_bounce = true;
        max_airtime = 100;
        hbox_x_offset = -4;
        break;
        case 5: //Melon
        if (state_timer < 2){
            vsp = -2.5;
        }
        hbox_x_offset = -6;
        grav = 0.5;
        hsp = 3.75*spr_dir;
        max_bounces = 1;
        resistance = 4;
        passes_through = false;
        wall_bounce = true;
        max_airtime = 120;
        break;
        case 6: //Galaxian
        if (state_timer == 1 && looped == false){
            sound_play(galaxian_sound);
        }
        grav = 0;
        hsp = 6*spr_dir;
        max_bounces = 0;
        resistance = 2;
        passes_through = true;
        wall_bounce = false;
        max_airtime = 100;
        if (state_timer == 20 && looped == false){
            loop_point_x = x;
            loop_point_y = y;
            state = 1;
            state_timer = 0;
        }
        if (looped){
            vsp = -4;
        }
        image_angle = darctan2(-vsp*spr_dir, hsp*spr_dir) - 90*spr_dir;
        break;
        case 7: //Bell
        if (state_timer < 15){
            if (state_timer < 10){
            vsp = -5;
            }
            if (state_timer >= 10){
                vsp = -3;
            }
            hsp = 4*spr_dir;
            grav = 0;
        } 
        if (state_timer >= 20){
            if (state_timer == 20){
            vsp = 5;
            }
            hsp = 0;
            grav = 5;
        }
        hbox_x_offset = -8;
        max_bounces = 4;
        resistance = 3;
        resistance = 3;
        passes_through = false;
        wall_bounce = true;
        max_airtime = 120;
        break;
        case 8: //Key
        grav = 0;
        hsp = 15*spr_dir;
        image_angle -= 45*spr_dir;
        max_bounces = 0;
        resistance = 6;
        passes_through = true;
        wall_bounce = true;
        max_airtime = 30;
        if (hit_wall){
            vsp = -4;
        }
        hbox_x_offset = 8;
        break;
    }
    if (airtime >= max_airtime){
        should_die = true;
    }
    if (hit_wall){
        airtime -= 10;
        spr_dir *= -1;
        hsp *= -1;
    }
    if (vsp < grav){
        vsp += .5;
    }
    if (!free && bounces < max_bounces){
        vsp = -grav;
        bounces += 1;
    }
    if (!free && bounces >= max_bounces){
        should_die = true;
    }
    if (free && state_timer >= max_airtime){
        should_die = true;
    }
    //if !parried{
    with asset_get("pHitBox"){
        if (place_meeting(x, y, other)){
            if (player != other.owner && hit_priority >= other.resistance){
                sound_play(sound_effect);
                spawn_hit_fx(x, y, hit_effect);
                with other{
                    should_die = true;
                }
            }
        }
    }
    //}
    var tramp = player_id.trampoline;
    if (instance_exists(tramp) && max_bounces > 0){
            airtime = 0;
    if (place_meeting(x, y, tramp) && tramp.bounces < 2 && tramp.state == 1){
            vsp = tramp.bounce_vsp;
            if (fruit_num == 4 && bounces == 0){
            bounces += 1;
            }
        	tramp.bounces += 1;
        	tramp.state = 2;
        	tramp.state_timer = 0;
        	sound_play(player_id.tramp_jump);
    }
    if (place_meeting(x, y, tramp) && tramp.bounces == 2 && tramp.state == 1){
        	tramp.break_tramp = true;
    }
    }
    /*if (place_meeting(x, y, (asset_get("oPlayer")))){
        with (asset_get("oPlayer")){
            if (player != other.player_id.player){
                with other{
                    if (!passes_through){
                        state = 2;
                        state_timer = 0;
                    }
                }
            }
        }
    }*/
}

if (state == 1){ //Galaxian ONLY
hsp = 0;
vsp = 0;
var hbox = create_hitbox(AT_NSPECIAL, fruit_num, x + (8 + hbox_x_offset)*spr_dir, y);
hbox.player = owner;
    if (state_timer < 6){
        if (x != loop_point_x + 32*spr_dir && y != loop_point_y - 32){
        x += 6*spr_dir;
        y -= 6;
        }
        if (image_angle != 0){
            image_angle += 18*spr_dir;
        }
    }
    if (state_timer >= 6 && state_timer < 11){
        if (x != loop_point_x && y != loop_point_y - 64){
        x -= 6*spr_dir;
        y -= 6;
        }
        if (image_angle != 90*spr_dir){
            image_angle += 18*spr_dir;
        }
    }
    if (state_timer >=11  && state_timer < 16){
        if (x != loop_point_x - 32*spr_dir && y != loop_point_y - 32){
        x -= 6*spr_dir;
        y += 6;
        }
        if (image_angle != 180*spr_dir){
            image_angle += 18*spr_dir;
        }
    }
    if (state_timer >= 16 && state_timer < 21){
        if (x != loop_point_x && y != loop_point_y){
        x += 6*spr_dir;
        y += 6;
        }
        if (image_angle != 270*spr_dir){
            image_angle += 18*spr_dir;
        }
        if (state_timer == 20){
            looped = true;
            state = 0;
            state_timer = 0;
        }
    }
}

if (state == 2){ //stops at enemies
    image_angle = 0;
    hsp = 0;
    if (state_timer < 10){
    vsp = -3.5;
    } else {
        vsp = -1;
    }
    if (state_timer >= 35){
        should_die = true;
    }
}

if (free == true){
    airtime ++;
}

if (should_die){
    sound_stop(galaxian_sound);
    spawn_hit_fx(x, y, 144);
    player_id.fruit_num = 1;
    player_id.times_collected = 0;
    instance_destroy();
    exit;
}

if (collected){
    sound_stop(galaxian_sound);
    hbox.destroyed = true;
    sound_play(sound_get("sfx_fruit"));
    spawn_hit_fx(x, y, 305);
    player_id.fruit_num = fruit_num;
    var fruit_score = hit_fx_create( sprite_get( "score_" + string(fruit_num + 1) ), 30 );
    spawn_hit_fx(x, y - 16, fruit_score);
    score.spr_dir = 1;
    instance_destroy();
    exit;
}

state_timer ++;
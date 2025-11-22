//updating the hitbox

state_timer ++

if (attack == AT_TAUNT){
    if (free == false){
        image_index += 0.2;
        if (state_timer == 1){
            player_id.teeth_count += 1;
        }
        if (state_timer == 2){
            sound_play(sound_get("teeth_up"), false, noone, (1.1 - player_id.teeth_count / 12) * 0.4, 0.75 );
        }
        if (state_timer == 3){
            player_id.teeth_count -= 1;
        }
        if (state_timer == 5){
            created_hitbox = create_hitbox(AT_TAUNT, 1, x + 24 * spr_dir, y);
            created_hitbox.spr_dir = spr_dir;
            created_hitbox.pre_time = pre_time + 1;
            created_hitbox.player = player;
            if (pre_time == 0){
                created_hitbox = create_hitbox(AT_TAUNT, 1, x + 24 * spr_dir * -1, y);
                created_hitbox.spr_dir = spr_dir * -1;
                created_hitbox.pre_time = pre_time + 1;
                created_hitbox.player = player;
            }
        }
        if (pre_time == 0){
            draw_xscale = 0;
        } else{
            sprite_index = sprite_get("groundteeth");
        }
    } else{
        hitbox_timer = 0;
        draw_xscale = 0;
        state_timer = 0;
        image_index = 0;
        free_dur ++
        if (free_dur > 2){
            destroyed = true;
        }
    }
    if (player != orig_player || was_parried == true || reflected == true){
        created_fx = spawn_hit_fx(x, y, player_id.vfx_teethbreak);
        created_fx.depth = depth - 2;
        created_fx.spr_dir = spr_dir;
        destroyed = true;
        if (instance_exists(created_hitbox)){
            created_hitbox.destroyed = true;
        }
    }
}


if (attack == AT_DSPECIAL){
    through_platforms = 100
    if (state_timer == 1){
        hsp = lengthdir_x(7, point_direction(0, 0, player_id.right_down - player_id.left_down, -1.75));
        vsp = lengthdir_y(7, point_direction(0, 0, player_id.right_down - player_id.left_down, -1.75) + player_id.vsp);
    }
    if (hooped_up == 1){
        state = 2;
        hooped_up = 2;
    }
    if (free == false){
        grabber = noone;
        created_hitbox = create_hitbox(AT_TAUNT, 1, x, y);
        created_hitbox.player = player;
        created_fx = spawn_hit_fx(x, y, player_id.vfx_yorick_land);
        created_fx.depth = depth - 1;
        created_fx.spr_dir = spr_dir;
        sound_play(sound_get("teeth_splat"));
        if (state == 0){
            destroyed = true;
        } else{
            vsp = -10;
            length += 60;
            state -= 1;
        }
    } else
        if (position_meeting(x, y, pHitBox)){
            with (pHitBox){
                if (attack == AT_BAIR && hbox_num == 1 && player_id == other.player_id ){
                    if (place_meeting(x, y, other)){
                        other.grabber = player_id
                    }
                }
            }
        }
        if (position_meeting(x, y, obj_article1) && vsp > 0){
            with (position_meeting(x, y, obj_article1)){
                if (variable_instance_exists(player_id, "is_balcone")){
                    if (other.hooped_up == 0){
                        other.hooped_up = 1;
                        other.vsp = -10;
                        other.hsp = 0;
                        sound_play(asset_get("sfx_bounce"), false, false, 1, 3);
                    }
                }
            }
        }
    }
    if (grabber != noone){
        if (grabber.attack == AT_BAIR && grabber.attacking_now != 0){
            if (floor(grabber.image_index) == 1){
                x = grabber.x + -101 * grabber.spr_dir;
                y = grabber.y + -28;
            }
            if (floor(grabber.image_index) == 2){
                x = grabber.x + -76 * grabber.spr_dir;
                y = grabber.y + -27;
            }
            if (grabber.attacking_now == 3){
                x = grabber.x + 42 * grabber.spr_dir;
                y = grabber.y + 29;
                hsp = 7 * grabber.spr_dir;
                vsp = 3;
                grabber = noone;
            } else{
                hsp = 0;
                vsp = 0;
            }
        } else{
            grabber = noone;
        }
    }

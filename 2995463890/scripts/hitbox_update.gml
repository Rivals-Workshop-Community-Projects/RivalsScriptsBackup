switch attack {
    case AT_NSPECIAL:
        switch hbox_num {
            case 1:
                
                var current_direction = point_direction(0,0, hsp, vsp)
                var threshold_angle = 60
                
                var up_check = current_direction >= threshold_angle and current_direction <= 180 - threshold_angle
                var down_check = current_direction >= threshold_angle + 180 and current_direction <= 360 - threshold_angle
                
                if up_check or down_check {
                    kb_angle = 90
                }
                else {
                    if spr_dir * sign(hsp) == -1
                    {
                        kb_angle = 180 - threshold_angle 
                    }
                    else{
                        kb_angle = threshold_angle
                    }
                }
                
                update_points();
                
                if (hitbox_timer % spawn_interval) == 0 and (abs(hsp) + abs(vsp)) > 0.2 {
                    create_point();
                }
                
                //print(get_state_name(bullet_state))
                //kb_angle = clamp(proj_angle, 60, 120)
                switch (bullet_state) {
                    case PS_IDLE:
                    player_id.move_cooldown[AT_NSPECIAL] = 2;
                    if (instance_exists(player_id) and !was_parried) {
                        dir = player_id.up_down - player_id.down_down
                        
                        if (dir != 0)
                        {
                            var easing = dir * spr_dir;
                            bullet_curve_easing = lerp(bullet_curve_easing, abs(easing), bullet_curve_ease_factor)
                            
                            var difference = easing * bullet_curve_intensity
                            
                            proj_angle = lerp(proj_angle, proj_angle + difference, bullet_curve_easing);
                            
                            var spd = point_distance(0,0,hsp,vsp) * spr_dir;
                            hsp = lengthdir_x(spd, proj_angle);
                            vsp = lengthdir_y(spd, proj_angle);
                        }
                        else
                        {
                            bullet_curve_easing = lerp(bullet_curve_easing, 0, bullet_curve_ease_factor)
                        }
                    }
                    break;
                    case PS_FROZEN:
                        hitbox_timer = 0;
                        frozen_bullet_timer += 1;
                        if !player_id.joy_pad_idle {
                            frozen_bullet_new_angle += 0.666*angle_difference(player_id.joy_dir, frozen_bullet_new_angle)
                        }
                        
                        if frozen_bullet_timer >= frozen_bullet_max_time {
                            player_id.window = 3;
                            player_id.window_timer = 0;
                            bullet_state = PS_DEAD
                            var spd = 18;
                            var new_angle = frozen_bullet_new_angle;
                            proj_angle = new_angle;
                            frozen_bullet_hsp = lengthdir_x(spd, frozen_bullet_new_angle);
                            frozen_bullet_vsp = lengthdir_y(spd, frozen_bullet_new_angle);
                            hsp = frozen_bullet_hsp
                            vsp = frozen_bullet_vsp
                            sound_play(asset_get("sfx_ori_grenade_launch"),false,noone,1,1.1)
                            player_id.move_cooldown[AT_NSPECIAL] = 20;
                            if spr_dir == -1 draw_xscale *= -1;
                            
                        }
                    break;
                    case PS_DEAD:
                        if !was_parried {
                            hsp = frozen_bullet_hsp
                            vsp = frozen_bullet_vsp
                        }
                    break;
                    case PS_ATTACK_AIR: // homing
                        if instance_exists(player_id.bottle_obj) {
                            var dir = point_direction(x, y, player_id.bottle_obj.x, player_id.bottle_obj.y)
                            
                            // var new_angle = proj_angle + (0.3*angle_difference(proj_angle,dir))
                            // print(new_angle)
                            hsp = lerp(hsp, lengthdir_x(22, dir), hitbox_timer / 100 )
                            vsp = lerp(vsp, lengthdir_y(22, dir), hitbox_timer / 100 )
                            
                            proj_angle = point_direction(0,0,hsp,vsp) + (180*(spr_dir == -1));
                        }
                        else {
                            bullet_state = PS_IDLE
                        }
                    break;
                }
                
                var should_create_trail_obj = false;
                
                if (!free) {
                    sound_play(asset_get("sfx_flare_razer"),false,noone,0.7,1.2)
                    sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8)
                    destroyed = true;
                    with spawn_hit_fx(x,y,player_id.gun_directional_hfx) {
                        spr_dir = 1;
                        draw_angle = clamp(round(point_direction(0,0,dcos(other.average_dir), dsin(other.average_dir)) / 10) * 10, 40 , 140 );
                        //print(draw_angle)
                    }
                    
                    should_create_trail_object = true;
                }
                else if current_direction > 1
                {
                    average_dir = lerp(average_dir, current_direction, 0.8);
                }
                
                if destroyed or hitbox_timer == length {
                    move_cooldown[AT_NSPECIAL] = 30;
                    with player_id {
                        var storage = create_hitbox(AT_NSPECIAL, 3, -1290, -290)
                        storage.bullet_points = other.bullet_points
                    }
                }    
            break;
            case 2:
            spr_dir = 1;
            break;
            case 3:
            update_points();
            
            if ds_list_size(bullet_points) == 0 {
                destroyed = true
            }
            break;
        }
    break;
    case AT_FSPECIAL:
        if hbox_num == 2
        {
            player_id.bottle_backup_position = [x,y];
        
            with (pHitBox) {
                if player_id == other.player_id and attack == AT_NSPECIAL and place_meeting(x,y, other) {
                    other.destroyed = true;
                    with player_id {
                        var storage = create_hitbox(AT_NSPECIAL, 3, -1290, -290)
                        storage.bullet_points = other.bullet_points
                    }
                    
                    if !other.was_parried {
                        destroy_self();
                        if (other.can_create_puddle) {
                            with instance_create(other.x,other.y-10, "obj_article1")
                            {
                                vsp = 1;
                            }
                        }
                    }
                }
            }
            
            if !free {
                destroy_self();
                with player_id {
                    if other.was_parried break;
                    
                    if (other.can_create_puddle)
                    {
                        with instance_create(other.x,other.y-10, "obj_article1")
                        {
                            vsp = 1;
                        }
                    }
                    
                    create_hitbox(AT_FSPECIAL, 3, other.x, other.y)
                }
            }
        }
    break;
}

#define update_points()

for (var i = 0; i < ds_list_size(bullet_points); i++) {
    bullet_points[| i].width = lerp(bullet_points[| i].width, 0, width_decay);
    bullet_points[| i].alpha -= alpha_decay;
    
    if bullet_points[| i].alpha <= 0 {
        ds_list_delete(bullet_points, i);
    }
}

#define destroy_self()
sound_play(asset_get("sfx_ice_shatter"))
with player_id {
    sound_play(sound_get("sfx_bottle_break"))
    sound_play(sound_get("sfx_water_hit"))
}
destroyed = true;

#define create_point()
var new_point = {
    pos_x : x,
    pos_y : y,
    angle : proj_angle,
    alpha : initial_alpha,
    width : draw_width
};

ds_list_add(bullet_points, new_point);

if ds_list_size(bullet_points) > max_points {
    ds_list_delete(bullet_points, 0);
}

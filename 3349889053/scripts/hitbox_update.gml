switch attack {
    case AT_USPECIAL:
        if hbox_num == 3 and !free {
            sound_play(asset_get("sfx_kragg_rock_shatter"),false,noone,1.0);
            spawn_hit_fx(x,y+(sprite_height/2),player_id.tombstone_landfx);
            with player_id {
                create_hitbox(AT_USPECIAL, 4, floor(other.x), floor(other.y+(other.sprite_height/2)) - 20)
            }
            destroyed_next = true;
        }
    break;
    case AT_EXTRA_3:
    if instance_exists(player_id.minion_obj) {
        x = player_id.minion_obj.x + (position_to_follow.x * player_id.minion_obj.spr_dir) + player_id.minion_obj.hsp;
        y = player_id.minion_obj.y + position_to_follow.y + player_id.minion_obj.vsp;
        in_hitpause = player_id.minion_obj.hitstop > 0
    }    
    break;
    case AT_FSPECIAL:
        turn_failsafe_timer = max(0, turn_failsafe_timer - 1)
        if hitbox_timer mod 2 == 0 {
            var angle = point_direction(0,0,hsp,vsp) + (180*(spr_dir == -1));
            var _x = floor(lengthdir_x(20,angle-90))
            var _y = floor(lengthdir_y(20,angle-90))
            var flame = spawn_hit_fx(floor(x + hsp + (random_func(4, _x * 2, true) - _x)), floor(y + vsp + (random_func(5, _y * 2, true) - _y)), player_id.decay_particles)
            flame.draw_angle = angle
            var part_speed = random_func(5, 2, false)
            var part_direction = random_func(9, 360, true)
            flame.hsp = lengthdir_x(part_speed, part_direction)
            flame.vsp = lengthdir_y(part_speed, part_direction)
        }
        
        turn_cooldown = max(0, turn_cooldown-1)
        if !(hsp == 0 and vsp == 0){
            proj_angle = point_direction(0,0,hsp,vsp) + (180*(spr_dir == -1) )
        }
        
        var spd = point_distance(0,0,hsp,vsp)
        
        if grounded {
            var dir = projectile_direction
            var spd = point_distance(0,0,hsp,vsp)
            
            var size = 20;
            var dimensions = {
                x : x + lengthdir_x(size, dir - (90*spr_dir)),
                y : y + lengthdir_y(size, dir - (90*spr_dir)),
            }
            
            var wall_hit = place_meeting(x + hsp, y-2, asset_get("par_block"))
            
            if wall_hit {
                rising_timer = rising_max_time
                projectile_direction += (90*spr_dir)
                hsp = lengthdir_x(spd, projectile_direction)
                vsp = lengthdir_y(spd, projectile_direction)  
                turn_cooldown = 2;
                if turn_failsafe_timer != 0 {
                    turn_failsafe += 1;
                }
                turn_failsafe_timer = turn_failsafe_max
                hitbox_timer = min(length, hitbox_timer + turn_cost)
            }
            else if (!place_meeting(dimensions.x, dimensions.y, asset_get("par_block")) and
            !place_meeting(dimensions.x, dimensions.y, asset_get("par_jumpthrough"))) and
            turn_cooldown == 0 {
                rising_timer = rising_max_time
                print("should turn here")
                var leeway = 4;
                x += lengthdir_x(leeway, dir);
                y += lengthdir_y(leeway, dir);
                dir -= (90*spr_dir)
                projectile_direction = dir;
                
                hsp = lengthdir_x(spd, dir);
                vsp = lengthdir_y(spd, dir)
                turn_cooldown = 2;
                if turn_failsafe_timer != 0 {
                    turn_failsafe += 1;
                }
                turn_failsafe_timer = turn_failsafe_max
                hitbox_timer = min(length, hitbox_timer + turn_cost)
            }
        } else {
            var ground_hit = place_meeting(x, y + 2 + vsp, asset_get("par_block"))
            var plat_hit = !freemd and !free
            var wall_hit = place_meeting(x + hsp, y-2, asset_get("par_block"))
            
            if plat_hit {
                print("HIT A PLATFORM")
                grounded = true;
                hsp = lengthdir_x(spd, projectile_direction)
                vsp = lengthdir_y(spd, projectile_direction)                  
            } else if wall_hit {
                print("HIT A WALL")
                grounded = true;
                projectile_direction += (90*spr_dir)
                hsp = lengthdir_x(spd, projectile_direction)
                vsp = lengthdir_y(spd, projectile_direction)                      
            } else if ground_hit {
                print("HIT GROUND")
                grounded = true;
                hsp = lengthdir_x(spd, projectile_direction)
                vsp = lengthdir_y(spd, projectile_direction)
                rising_timer = 0;
                rising_end_position = y - 8;
            }
        }
        
        if rising_timer != -1 and rising_timer < rising_max_time {
            y = lerp(y, rising_end_position, 0.25)
        }
        if (hitbox_timer >= length - 1) or turn_failsafe > 2 {
            var dissipation = spawn_hit_fx(x, y, player_id.fspecial_proj_die)
            dissipation.draw_angle = proj_angle;
            dissipation.spr_dir = spr_dir; //may need to be changed to just 1
            dissipation.hsp = hsp * 0.1;
            dissipation.vsp = vsp * 0.1;
            dissipation.depth -= 20; 
            destroyed_next = true
            
        }
        
        
        // var dir = projectile_direction
        // var spd = point_distance(0,0,hsp,vsp)
        
        // var size = 60;
        // var dimensions_front = {
        //     x : x + lengthdir_x(5, dir + (90*spr_dir)),
        //     y : y + lengthdir_y(5, dir + (90*spr_dir)),
        // }
        // if place_meeting(dimensions.x, dimensions.y, asset_get("par_block")) {
        //     if !grounded grounded = true;
            
        //     print("should turn up here")
        //     var leeway = 4;
        //     x += lengthdir_x(leeway, dir);
        //     y += lengthdir_y(leeway, dir);
        //     projectile_direction = 90;
            
        //     hsp = lengthdir_x(spd, projectile_direction);
        //     vsp = lengthdir_y(spd, projectile_direction)
        //     turn_cooldown = 2;
        // }        
        
        // if grounded {
            // var dir = projectile_direction
            // var spd = point_distance(0,0,hsp,vsp)
            
            // var size = 60;
            // var dimensions = {
            //     x : x + lengthdir_x(size, dir - (90*spr_dir)),
            //     y : y + lengthdir_y(size, dir - (90*spr_dir)),
            // }
            // if !place_meeting(dimensions.x, dimensions.y, asset_get("par_block")) and turn_cooldown == 0 {
            //     print("should turn here")
            //     var leeway = 4;
            //     x += lengthdir_x(leeway, dir);
            //     y += lengthdir_y(leeway, dir);
            //     dir -= (90*spr_dir)
            //     projectile_direction = dir;
                
            //     hsp = lengthdir_x(spd, dir);
            //     vsp = lengthdir_y(spd, dir)
            //     turn_cooldown = 3;
                
            // }
    
        // }
    
        // var wall_hit = place_meeting(x + hsp, y + vsp, asset_get("par_block"));
        // if (!free or wall_hit) and !grounded {
        //     grounded = true;
            
        //     if !free {
        //         print("HIT THE GROUND-----------------------------")
        //         var spd = point_distance(0,0,hsp,vsp)
        //         hsp = lengthdir_x(spd, projectile_direction)
        //         vsp = lengthdir_y(spd, projectile_direction)
                
        //         // x += lengthdir_x(2, projectile_direction + (90*spr_dir))
        //         // y += lengthdir_y(2, projectile_direction + (90*spr_dir))
        //     }
        // }
        
        print(projectile_direction)

    break;
}
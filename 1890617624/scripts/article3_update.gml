// Initialize
if !init{
    golden = player_id.golden
    
    switch(type){
        case "willowisp":
            sprite_index = asset_get("empty_sprite")
            mask_index = sprite_get("willowisp_mask")
            break;
        
        case "soulsiphon":
            sprite_index = asset_get("empty_sprite")
            mask_index = sprite_get("willowisp_mask")
            break;
        
        case "fries":
            x += round(lengthdir_x(50, angle));
            y += round(lengthdir_y(50, angle));
            init_x = x;
            init_y = y;
            sprite_index = sprite_get("fry_projectiles");
            image_index = random_func(5, 2, true);
            image_angle = random_func(6, 3, true) * 90;
            uses_shader = true;
            break;
        
        case "hamburger_gib":
            vsp = -12 - random_func(12 + sprite,4,true);
            hsp = -5 + random_func(16 + sprite,10,true);
            sprite_index = sprite_get("hamburger_gibs");
            image_index = sprite;
            image_angle = angle;
            gravity = 1;
            break;
            
        case "ronald_girl":
            sprite_index = sprite_get("ronald_girl");
            mask_index = sprite_get("idle_hitbox")
            image_index = sprite;
            x -= 410 * spr_dir;
            y -= 400;
            image_index = 1;
            uses_shader = true;
            stage_x = get_stage_data( SD_X_POS );
            stage_y = get_stage_data( SD_Y_POS );
            
            break;
    }
    
    init = true;
}

if hitstop > 0 and array_find_index(exceptions, type) == -1{
    return;
}

switch(type){
    case "willowisp":
        if !has_hit{
            v_alpha = clamp(timer * 0.1,0,1)
            if timer == 10{
                sound_play(sound_get("willowisp"))
            }
            if timer >= 30{
                move_to_enemy(20 + (golden * 20))
            }
            if timer >= 500 and !golden{
                has_hit = true;
                timer = 0;
                return;
            }
            if test_collision(0, 0){
                has_hit = true;
                timer = 0;
                create_hitbox(AT_DTHROW, 1, x, y);
            }
        } else{
            v_alpha = clamp(1 - timer * 0.1,0,1)
            if timer >= 30{
                instance_destroy();
                return;
            }
        }
        
        break;
        
    case "soulsiphon":
        if !has_hit{
            if timer >= 40{
                move_to_enemy(8)
                if test_collision(0, 0){
                    has_hit = true;
                    timer = 0;
                    create_hitbox(AT_DTHROW, 2, x, y);
                    sound_play(sound_get("soulsiphonexplode"))
                }
            }
        } else{
            if timer >= 40{
                instance_destroy();
                return;
            }
        }
        
        break;
    
    case "fries":
        
        switch(state){
            case "active":
                if timer != 0 and !projectile{
                    var fry_time = timer * 0.5
                    x = init_x + round(lengthdir_x(fry_time, angle));
                    y = init_y + round(lengthdir_y(fry_time, angle));
                }
                
                if ((timer % 3) == 0){
                    image_index = random_func(5, 2, true);
                    image_angle = random_func(6, 3, true) * 90;
                }
                
                if ((timer % damage) == 0){
                    create_hitbox( AT_USTRONG_2, 1 + projectile, x, y );
                }
                
                if timer >= 100{
                    state = "break";
                    timer = 0;
                }
                
                break;
            
            case "break":
                image_index = (3 + floor(timer / 20 * 3));
                
                if timer >= 20{
                    instance_destroy();
                    return;
                }
                break;
        }
        
        break;
    
    case "hamburger_gib":
        visible = round(timer * 1) % 2;
        
        if timer >= 40{
            instance_destroy();
            return;
        }
        
        break;
    
    case "burst_particles":
        if timer >= 40{
            instance_destroy();
            return;
        }
        break;
    
    case "ronald_girl":
        if timer > 50 and (x < 0 or x > room_width or y > room_height){
            instance_destroy();
            return;
        }
        switch(state){
            case "active":
                vsp = 20;
                hsp = 20 * spr_dir;
                spritetimer = 0;
                
                if platform and x > stage_x and x < room_width - stage_x{
                    can_be_grounded = true;
                    ignores_walls = false;
                }
                
                if y > stage_y - 20{
                    ignores_walls = false;
                    if !platform{
                        can_be_grounded = true;
                    }
                }
                
                if !free{
                    hsp *= 0.5;
                    state = "stand";
                    timer = 0;
                    sound_play(sound_get("crouch"));
                    sound_play(sound_get("ronaldgirl"));
                }
                
                if !has_hit and test_collision(-30 * spr_dir, 5){
                    has_hit = true
                    create_hitbox(AT_DTHROW, 3, x + 50 * spr_dir, y + 5);
                }
                
                break;
                
            case "stand":
                
                spritetimer += 1;
                
                if !free{
                    hsp *= 0.8;
                    vsp = 0;
                    if spritetimer < 4{
                        image_index = 2;
                    } else if spritetimer < 8{
                        image_index = 3;
                    } else{
                        image_index = 0;
                    }
                } else{
                    hsp *= 0.98;
                    vsp = clamp(vsp + 0.75, 0, 10)
                    image_index = 4;
                    spritetimer = 0;
                }
                
                // Stay on platform
                if y > stage_y - 20 and x > stage_x - 20 and x < room_width - stage_x + 20{
                    x = clamp(x, stage_x, room_width - stage_x);
                    y = stage_y;
                }
                
                if timer >= 120{
                    state = "squat";
                    spritetimer = 0;
                    timer = 0;
                }
                
                break;
                
            case "squat":
                image_index = 3;
                
                if timer > 4{
                    state = "jump";
                    timer = 0;
                }
                break;
                
            case "jump":
                image_index = 4;
                
                if timer <= 1{
                    hsp = -18 * spr_dir
                    vsp = -18
                }
                
                vsp += 0.8
                
                can_be_grounded = false;
                ignores_walls = true;
                break;
        } 
        
        break;
    
    case "ai_prediction":
        instance_destroy();
        return;
        break;
}

timer += 1

#define move_to_enemy(speedvariable)
    var shortest_dist = 9999;
    var spd_x = 0;
    var spd_y = 0;
    var spd_avg = 0;
    shortest_id = 0;
    
    with (asset_get("oPlayer")) {
        if (player != other.player){
            var curr_dist = point_distance(x,y,other.x,other.y);
            if (curr_dist < shortest_dist) {
                shortest_dist = curr_dist;
                other.shortest_id = id;
                spd_x = x - other.x;
                spd_y = y - (char_height * 0.5) - other.y;
                spd_avg = (abs(spd_x) + abs(spd_y)) * 0.5
                spd_x = spd_x / spd_avg * speedvariable;
                spd_y = spd_y / spd_avg * speedvariable;
                	
                if x > other.x{
                    other.spr_dir = 1
                } else{
                    other.spr_dir = -1
                }
            }
        }
    }
    
    // There's this annoying bug with articles where they inexplicably don't create hitboxes when you use the create_hitbox script
    // I spent ages debugging it and it turns out the whole issue is that the speed can't be a float value, hhhhhhhhh
    x += round(spd_x * 0.1)
    y += round(spd_y * 0.1)
    

#define test_collision(x_add, y_add)
    with (asset_get("oPlayer")) {
        if (player != other.player) {
            if place_meeting(x + x_add,y + y_add,other){
                return true;
            }
        }
    }
    return false;
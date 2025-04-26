//article1_update

state_timer++
timer++

if explode_sfx_timer > 0 explode_sfx_timer--
if prime_sfx_timer > 0 prime_sfx_timer--

switch state {
    case 0: //init
    cloud_arr = array_create(cloud_num, 0)

    for (var i = 0; i < cloud_num; i++) {
        cloud_arr[i] = {
            timer: 0,
            size: 100,
            max_size: 100,
            x: 0,
            y: 0,
            hsp: 0,
            vsp: 0,
            move_lockout: 20,
            state: 1,
            suck_id: noone
        }
        var init_x = random_func_2(i, spawn_w, true) - spawn_w/2
        var init_y = random_func_2(i+cloud_num, spawn_h, true) - spawn_h/2
        var init_hsp = (random_func_2(i+(2*cloud_num), 2, false) - 1) * 4
        var init_vsp = (random_func_2(i+(3*cloud_num), 2, false) - 1) * 3
        cloud_arr[i].x = x + init_x
        cloud_arr[i].y = y + init_y
        cloud_arr[i].hsp = (init_hsp + hsp_mod) * spd_mod
        cloud_arr[i].vsp = (init_vsp + vsp_mod) * spd_mod
        cloud_arr[i].timer = random_func_2(i+(4*cloud_num), 20, true)
        cloud_arr[i].max_size = clamp(85 - random_func_2(i+(5*cloud_num), 60, true), 0, 100)
    }
    
    state = 1
    state_timer = 0
    break;
    
    case 1: //idle
    //update with new clouds
    if update_data != undefined {
        for (var i = 0; i < update_data.n; i++) {
            var init_x = random_func_2(i, update_data.w, true) - update_data.w/2
            var init_y = random_func_2(i+update_data.n, update_data.h, true) - update_data.h/2
            var init_hsp = (random_func_2(i+(2*update_data.n), 2, false) - 1) * 4
            var init_vsp = (random_func_2(i+(3*update_data.n), 2, false) - 1) * 3
            
            array_push(cloud_arr, {
                timer: 0,
                size: 100,
                max_size: 100,
                x: 0,
                y: 0,
                hsp: 0,
                vsp: 0,
                move_lockout: 20,
                state: 1,
                suck_id: noone
            })
            
            var index = array_length(cloud_arr)-1
            
            cloud_arr[index].x = update_data.x + init_x
            cloud_arr[index].y = update_data.y + init_y
            cloud_arr[index].hsp = (init_hsp + update_data.hsp) * update_data.spd
            cloud_arr[index].vsp = (init_vsp + update_data.vsp) * update_data.spd
            cloud_arr[index].timer = random_func_2(i+(4*update_data.n), 20, true)
            cloud_arr[index].max_size = clamp(85 - random_func_2(i+(5*update_data.n), 60, true), 0, 100)
            cloud_num++
        }
        update_data = undefined
    }
    
    //loop through all clouds
    for (var i = 0; i < cloud_num; i++) {
        var cloud = cloud_arr[i]
        cloud.timer++
        switch cloud.state {
            case 0:
            cloud.x = 0
            cloud.y = 0
            break;
            
            case 1: //idle
            if abs(cloud.hsp) > 0.1 {
                cloud.hsp *= 0.9
                cloud.x += cloud.hsp
            } else cloud.hsp = 0
            
            if abs(cloud.vsp) > 0.1 {
                cloud.vsp *= 0.9
                cloud.y += cloud.vsp
            } else cloud.vsp = 0
            
            cloud.size = (cloud.max_size*0.9) + 10*dsin(cloud.timer*6)
            if !player_id.low_graphics {
                if random_func_2(((timer+i) mod 200), 60, true) == 0 {
                    var fx_spr = timer mod 2 == 0 ? vfx_sparkle_1 : vfx_sparkle_3
                    with player_id {
                        var fx = spawn_hit_fx(cloud.x + random_func_2(i, 30, true) - 15, cloud.y + random_func_2(i+1, 30, true) - 15, fx_spr)
                        fx.depth = 0
                        fx.draw_angle = random_func_2((i mod 200), 90, true)
                    }
                }
            }
            
            //movement
            if cloud.move_lockout > 0 {
                cloud.move_lockout--
            } else {
                var col_w = 10
                var collision_hbox = collision_rectangle(round(cloud.x) - col_w, round(cloud.y) - col_w, round(cloud.x) + col_w, round(cloud.y) + col_w, pHitBox, false, false)
                
                if collision_hbox != noone && !("luna_explosion_id" in collision_hbox && collision_hbox.luna_explosion_id == player_id) {
                    var _spd_mod = random_func(i, 10, false) - 2
                    cloud.move_lockout = 10
                    cloud.hsp = 1.5*(collision_hbox.kb_value + _spd_mod)*dcos(collision_hbox.kb_angle)*collision_hbox.spr_dir
                    cloud.vsp = -(collision_hbox.kb_value + _spd_mod)*dsin(collision_hbox.kb_angle)
                    
                    switch collision_hbox.hit_flipper {
                        case 5: cloud.hsp *= -1 break;
                        
                        case 6:
                        cloud.hsp *= collision_hbox.spr_dir*sign(cloud.x - collision_hbox.player_id.x)
                        break;
                    }
                    
                    if collision_hbox.effect == 23 {
                        cloud.state = 3
                        cloud.timer = floor(cloud.size/7)
                    }
                    /*
                    if "luna_explosion_id" in collision_hbox && collision_hbox.luna_explosion_id == player_id {
                        cloud.state = 3
                        cloud.timer = 10 + floor(cloud.size/7)
                        cloud.hsp *= 0.5
                        cloud.vsp *= 0.5
                    }
                    */
                }
            }
            
            //dspec check
            if player_id.dspec_coords[0] != undefined {
                var dist = point_distance(player_id.dspec_coords[0], player_id.dspec_coords[1], cloud.x, cloud.y)
                if player_id.dspec_dist >= dist {
                    cloud.state = 3
                    cloud.timer = floor(cloud.size/7)
                }
            }
            break;
            
            case 2: //sucked
            if exists(cloud.suck_id) {
                if !cloud.suck_id.nspec_sucking {
                    cloud.state = 1
                    cloud.timer = 0
                } else {
                    var dist = point_distance(cloud.x, cloud.y, cloud.suck_id.x - 40*cloud.suck_id.spr_dir, cloud.suck_id.y - 20)
                    var lerp_mod = clamp(power(clamp(150 - dist, 0, 200)/5, 2)/1600, 0.005, 0.5)
                    var prev_x = cloud.x
                    var prev_y = cloud.y
                    cloud.x = lerp(cloud.x, cloud.suck_id.x - 40*cloud.suck_id.spr_dir, lerp_mod)
                    cloud.y = lerp(cloud.y, cloud.suck_id.y - 20, lerp_mod)
                    cloud.hsp = cloud.x - prev_x
                    cloud.vsp = cloud.y - prev_y
                    //cloud.size -= 4
                    if dist <= 20 {
                        cloud.size = 0
                        cloud.state = 0
                        cloud.suck_id.nspec_cloud_count++
                    }
                }
            }
            break;
            
            case 3: //prime
            if prime_sfx_timer == 0 {
                sound_play(asset_get("sfx_blink_dash"))
                prime_sfx_timer = 40
            }
            if abs(cloud.hsp) > 0.1 {
                cloud.hsp *= 0.8
                cloud.x += cloud.hsp
            } else cloud.hsp = 0
            
            if abs(cloud.vsp) > 0.1 {
                cloud.vsp *= 0.8
                cloud.y += cloud.vsp
            } else cloud.vsp = 0
            
            
            if cloud.timer >= 20 {
                cloud.state = 4
                cloud.timer = 0
            }
            break;
            
            case 4: //explode
            if cloud.timer == 1 {
                if explode_sfx_timer == 0 {
                    sound_play(asset_get("sfx_mol_spark_explode2"))
                    explode_sfx_timer = 4
                }
                var hbox = create_hitbox(AT_DSPECIAL, 1, round(cloud.x), round(cloud.y))
                    hbox.luna_explosion_id = player_id
            }
            if cloud.timer >= 30 {
                cloud.size = 0
                cloud.state = 0
            }
            break;
            
        }
        
        cloud.x = round(cloud.x*2)/2
        cloud.y = round(cloud.y*2)/2
        
        cloud.hsp = round(cloud.hsp*20)/20
        cloud.vsp = round(cloud.vsp*20)/20
    }
    if cur_age >= max_age {
        state = 9
        state_timer = 0
    }
    break;
    
    case 9: //dying
    if !("cloud_arr" in self) {
        state = 10
        state_timer = 0
    } else {
        for (var i = 0; i < cloud_num; i++) {
            var cloud = cloud_arr[i]
            
            cloud.size -= 6
            if cloud.size <= 0 {
                cloud.state = 10
            }
        }
        if state_timer >= 16 {
            state = 10
            state_timer = 0
        }
    }
    break;
    
    case 10: //dead
    instance_destroy()
    exit;
    break;
}

#define exists(obj)
return obj != noone && obj != undefined && instance_exists(obj)
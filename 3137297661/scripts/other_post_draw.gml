//other_post_draw.gml

if(k_poison_anim){
    var mark_spr = -1;
    var frame = 0;
    if(k_poison_tier == 1){
        with(other_player_id){
            mark_spr = sprite_get("mark_tier1");
        }
        if(mark_spr != -1){
            var frame = k_poison_anim/k_poison_anim_speed;
            if(frame > k_poison_anim_start[0] && k_poison_timer){
                k_poison_anim = max(k_poison_anim_start[0]*k_poison_anim_speed, k_poison_anim % ((k_poison_anim_speed*
                (k_poison_anim_start[0] + k_poison_anim_loop)) - 1));
            }
        }
    }
    else if(k_poison_tier == 2){
        with(other_player_id){
            mark_spr = sprite_get("mark_tier2");
        }
        if(mark_spr != -1){
            var frame = k_poison_anim/k_poison_anim_speed;
            if(frame > k_poison_anim_start[1] && k_poison_timer){
                k_poison_anim = max(k_poison_anim_start[1]*k_poison_anim_speed, k_poison_anim % ((k_poison_anim_speed*
                (k_poison_anim_start[1] + k_poison_anim_loop)) - 1));
            }
        }
    }
    
    if(mark_spr != -1){
        with(other_player_id){
            if(player == other.poison_applier){
                init_shader();
                shader_start();
            }
        }
        draw_sprite_ext(mark_spr, frame, x, y - char_height, 2, 2, 0, c_white, 1.0);
        with(other_player_id){
            if(player == other.poison_applier){
                init_shader();
                shader_end();
            }
        }
    }
}    

if(k_show_debuff && instance_exists(other_player_id) && other_player_id.player == poison_applier){ 
    //wavy motes
    if(get_gameplay_time()%7 == 0){
        var xpos = x - 40 + random_func(1, 80, false);
        var ypos = y - random_func(2, 60, false);
        with(other_player_id){
            if(variable_instance_exists(self, "ring_debuff_fx")){
                spawn_hit_fx(xpos, ypos, ring_debuff_fx);
            }
        }
    }
    //spinny motes
    var hit_spr = -1;
    with(other_player_id){
        hit_spr = sprite_get("ring_debuff_mark");
    }
    if(hit_spr != -1){
        for(var i = 0; i < k_ring_debuff_hits; ++i){
            //hit mote layout: state time, draw front or behind
            if(k_hit_motes[i, 1]){
                var time_step = k_hit_motes[i, 0];
                var posX = ease_quadInOut(floor(x) - 60, floor(x) + 60, time_step, hit_mote_speed);
                with(other_player_id){
                    shader_start();
                    draw_sprite_ext(hit_spr, 0, posX, other.y - other.char_height/2, 2, 2, 0, c_white, 1.0);
                    shader_end();
                }
            }
        }
    }
}

//draw_debug_text(floor(x), floor(y-15), string(k_ring_debuff_hits));
//draw_debug_text(floor(x), floor(y+5), string(poison_applier));
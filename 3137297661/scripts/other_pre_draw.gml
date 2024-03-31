//other_pre_draw.gml
if(variable_instance_exists(self, "other_player_id")  && instance_exists(other_player_id)){
    if(variable_instance_exists(other_player_id, "death_ring_gal") && other_player_id.death_ring_gal
    && other_player_id.player == poison_applier){
        var gal_fx = -1;
        with(other_player_id){
            gal_fx = sprite_get("galfx");
        }
        if(gal_fx != -1){
            with(other_player_id){
               init_shader();
               shader_start();
            }
            draw_sprite_ext(gal_fx, 1, x, y - 30, 2, 2, other_player_id.fx_rot, c_white, other_player_id.fade_timer);
            with(other_player_id){
                init_shader();
                shader_end();
            }
        }
    }
    if(k_show_debuff && other_player_id.player == poison_applier){ 
        //spinny motes
        var hit_spr = -1;
        with(other_player_id){
            hit_spr = sprite_get("ring_debuff_mark");
        }
        if(hit_spr != -1){
            for(var i = 0; i < k_ring_debuff_hits; ++i){
                //hit mote layout: state time, draw front or behind
                if(!k_hit_motes[i, 1]){
                    var time_step = k_hit_motes[i, 0];
                    var posX = ease_quadInOut(floor(x) + 60, floor(x) - 60, time_step, hit_mote_speed);
                    with(other_player_id){
                        shader_start();
                        draw_sprite_ext(hit_spr, 0, posX, other.y - other.char_height/2, 2, 2, 0, c_white, 1.0);
                        shader_end();
                    }
                }
            }
        }
    }
}
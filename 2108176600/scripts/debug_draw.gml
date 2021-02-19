//debug-draw

//draw_debug_text(x,y,"window: " + string(window));

alive_players = 0;

with asset_get("oPlayer") {
    if get_player_stocks(player) > 0 other.alive_players++;
    if id != other {
        other.opp_stocks = get_player_stocks(player);
        other.opp_player = player; 
    }
}

//draw_debug_text(x,y,string(use_nspec));
//draw_debug_text(x,y+32,string(get_state_name(state)));
//draw_debug_text(x,y-32,string(nspec_aval));
//if get_player_hud_color(1) == 15297156 draw_sprite(sprite_get("dan"),0,view_get_xview(),view_get_yview());
/*with shadow {
    draw_debug_text(x,y+32,string([_hsp,_vsp]));
}*/
/*
if opp_stocks < 3 {
    if floor(get_gameplay_time() % ph_timer) == 0 {
        random_things();
        ph_duration = floor(ph_duration_max*(3-opp_stocks)^7);
    }
}
if opp_stocks < 2 {
    ICU_timer--;
    if ICU_timer <= 0 {
        if floor(get_gameplay_time() % 4) == 0  ICU_index++;
        draw_sprite(sprite_get("eyeCU"),view_get_xview()+ICU_index,ICU_x,view_get_yview()+ICU_y);
        if ICU_index == ICU_index_max {
            ICU_timer = ICU_timer_max;
            ICU_index = 0;
            ICU_x = random_func_2(3,750,true);
            ICU_y = random_func_2(4,550,true);
        }
        
    }
    ph_timer = 120;
}
if get_game_timer() == 0 || alive_players <= 1 {
    
    if end_timer <= 0 shader_start();
    for (var i = 0; i < floor(14-end_timer/10); i++) {
        draw_sprite_ext(sprite_get("GROW"),i,view_get_xview()+x_i[i],view_get_yview()+y_i[i],4,4,0,c_white,1);
    }
    ICU_timer_max = 30;
    ph_timer--;
    if ph_timer <= 0 ph_timer = ph_timer_max;
    if ph_timer == ph_timer_max {
        random_things();
        ph_duration = ph_duration_max*8;
    }
    print_debug("END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES END TIMES");
    draw_set_font(asset_get("roaMBLFont"));
    
    end_timer--;
    if end_timer == 139 sound_play(sound_get("DAQ"));
    if end_timer <= 30 draw_sprite_ext(sprite_get("GROW"),i,view_get_xview()+view_get_wview()/2,view_get_yview()+view_get_hview()/2,20,20,0,c_white,1);
    if end_timer <= 30 { 
        
        var art_ = instance_create(x,y,"obj_article1");
        with art_ {
            orig_player = 9;
            if get_player_hud_color(other.player) != 6612290 sprite_get("empty_sprite");
        }
    
        //sprite_index = -1;
    }
    //draw_text_ext_color(0,0,string(attack_grid),20,960,c_white,c_white,c_white,c_white,1);
    
} else opp_portrait = get_char_info(INFO_PORTRAIT, opp_player);
if ph_duration > 0 {
    draw_debug_text(floor(view_get_xview())+ph_x,floor(view_get_yview())+ph_y,ph_text_arry[ph_text_rd]);
    ph_duration--;
}*/

#define random_things()
ph_x = random_func_2(0,750,true);
ph_y = random_func_2(1,550,true);
ph_text_rd = random_func_2(get_player_damage(player),array_length_1d(ph_text_arry),true);

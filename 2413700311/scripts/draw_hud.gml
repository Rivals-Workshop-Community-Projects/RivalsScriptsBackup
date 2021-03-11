//draw_hud.gml
//debug-------------------------------------------------------------------------
/*
draw_debug_text(30, 110 + 13, "bodyless: " + string(bodyless));
draw_debug_text(30, 110 + 26, "bodyloss: " + string(bodyloss));
draw_debug_text(30, 110 + 39, "headdie: " + string(headdie));
draw_debug_text(30, 110 + 52, "hutaSP: " + string(hutaSP));

draw_debug_text(temp_x + 0, temp_y - 13, "attack: " + string( attack ));
draw_debug_text(temp_x + 0, temp_y - 26, "charge: " + string( strong_charge ));

draw_debug_text(temp_x + 100, temp_y - 52, "state: " + get_state_name( state ));
draw_debug_text(temp_x + 100, temp_y - 39, "window timer: " + string( window_timer ));
draw_debug_text(temp_x + 100, temp_y - 26, "window: " + string(window));
draw_debug_text(temp_x + 100, temp_y - 13, "imageindex: " + string(image_index));
 
    if(  bodyless = true ){
        draw_debug_text(temp_x + 100, temp_y - 117, "player_id: " + string( obj_article1.player_id ));
        draw_debug_text(temp_x + 100, temp_y - 104, "vsp: " + string( obj_article1.vsp ));
        draw_debug_text(temp_x + 100, temp_y - 91, "state: " + string( obj_article1.state ));
        draw_debug_text(temp_x + 100, temp_y - 78, "state_timer: " + string( obj_article1.state_timer ));
        
    }
    
    
    if( obj_article2.init == 1 ){
        draw_debug_text(temp_x + 0, temp_y - 117, "player_id: " + string( obj_article2.player_id));
        draw_debug_text(temp_x + 0, temp_y - 104, "state: " + string( obj_article2.state ));
        draw_debug_text(temp_x + 0, temp_y - 91, "state_tm: " + string( obj_article2.state_timer ));
        draw_debug_text(temp_x + 0, temp_y - 78, "stop_tm: " + string( obj_article2.stop_timer ));
    }
*/
//------------------------------------------------------------------------------

var temp_color = c_white;
if (bodyloss == true) temp_color = c_gray;



var temp_xscale = 1;
var temp_barcolor = c_white;

if((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)){
    if(strong_charge > bodyshot){
        temp_xscale = 1;
        temp_barcolor = c_orange;
    }else{
        temp_xscale = strong_charge * 0.05;
    }
}else{
 temp_xscale = 0;
}



if (bodyless == true) {
    draw_sprite_ext(sprite_get("body_icon"), 0, temp_x + 0, temp_y - 30, 2, 2, 0, temp_color, 1);

    if(bodyloss == true){
        draw_sprite_ext(sprite_get("hud_gauge"), 0, temp_x + 36, temp_y - 30, 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("hud_bar"), 0, temp_x + 40, temp_y - 18, temp_xscale * 2, 2, 0, temp_barcolor, 1);
    }
}


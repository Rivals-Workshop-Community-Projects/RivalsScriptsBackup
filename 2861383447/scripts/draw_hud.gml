// prevents draw_hud from running a frame too early and spitting an error
if (!is_nana){

if (witch_sound){
    draw_set_alpha(0.25);
    gpu_set_blendmode(bm_add);
    draw_rectangle_color(0,0, room_width,room_height, c_purple, c_purple, c_purple, c_purple, false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}

if (get_training_cpu_action() == CPU_FIGHT){
    
    if (intro_timer < 60 * 2) {
        if  tekken_mode && !chicken {
        draw_debug_text( temp_x, temp_y-48, 
        "Tekken Mode is ACTIVATED! 
(Opponent Press ATK+Parry to Deactivate)");
        }

        if chicken
        draw_debug_text( temp_x, temp_y-36, 
        "CHICKEN");

        if kazuyamishima
        draw_debug_text( temp_x, temp_y-16, 
        "KAZUYA MISHIMA");
    }
}

//GUN
if (concentration_state < 2){
draw_sprite_ext( sprite_get("Happymeter"), image_index, temp_x - 44, temp_y - 86, 1, 1, 0, c_white, 1);
draw_sprite_ext( sprite_get("bullet_meter"), bullets, temp_x - 44, temp_y - 86, 1, 1, 0, c_white, 1);
}
else{
draw_sprite_ext( sprite_get("Happymeter"), image_index, temp_x - 44, temp_y - 86, 1, 1, 0, c_white, 1);
draw_sprite_ext( sprite_get("bullet_meter"), bullets, temp_x - 44, temp_y - 86, 1, 1, 0, c_white, 1);
draw_sprite_ext( sprite_get("Happymeter"), image_index, temp_x - 44, temp_y - 86, 1, 1, 0, c_red, 0.8);
}


gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_sprite_ext( sprite_get("concentration_mask"), 0, temp_x + 210, temp_y - 60, 0 - (concentration/100), 1, 0, c_white, 1 );  
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);    
    
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite_ext( sprite_get("concentration_meter"), concentration_state, temp_x - 44, temp_y - 86, 1, 1, 0, c_white, 1 );
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

//Dirt
draw_sprite_ext( sprite_get("minecraftmeter"), image_index, temp_x - 46, temp_y - 86, 1, 1, 0, c_white, 1);


gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_sprite_ext( sprite_get("dirt_mask"), 0, temp_x + 130, temp_y - 62, 1 * (dirt_inv/max_dirt_inv), 1, 0, c_white, 1 );  
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);    
    
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite_ext( sprite_get("dirtmeter"), bullets, temp_x - 46, temp_y - 86, 1, 1, 0, c_white, 1);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

//baseball base
draw_sprite_ext( sprite_get("HUDmeter"), image_index, temp_x - 60, temp_y - 74, 1, 1, 0, c_white, 1);
//strikes
draw_sprite_ext( sprite_get("2point"), strikes, temp_x + 32, temp_y - 38, 2, 2, 0, c_white, 1);
//balls
draw_sprite_ext( sprite_get("3point"), balls, temp_x + 38, temp_y - 24, 2, 2, 0, c_white, 1);
//outs
draw_sprite_ext( sprite_get("2point_red"), outs, temp_x + 44, temp_y - 10, 2, 2, 0, c_white, 1);
//bases
draw_sprite_ext( sprite_get("bases"), bases, temp_x + 90, temp_y - 42, 2, 2, 0, c_white, 1);
//runs
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(font_get("_numbers"));
// draw_sprite_ext( sprite_get("numbers"), runs, , , 2, 2, 0, c_white, 1);
draw_text_color(temp_x + 136, temp_y - 24, string(runs), c_white, c_white, c_white, c_white, 1);

//rebellion gauge
draw_sprite_ext( sprite_get("arsenehud"), 0, temp_x+36, temp_y-6, 1, 1, 0, c_white, 1);

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_sprite_ext( sprite_get("arsenehud_mask"), 0, temp_x + 36, temp_y - 6, 1, 1, 0, c_white, 1 );  
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);    

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

var arsene_color = (arsene) ? c_aqua : c_fuchsia;

draw_rectangle_color(temp_x + 65, temp_y + 20, (temp_x + 65) + (52 * (rebellion_meter/100)) ,temp_y - 2, arsene_color, arsene_color, arsene_color, arsene_color, false);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);



//royal guard
draw_sprite_ext( sprite_get("royalguard_hud"), 0, temp_x+180, temp_y+18, 1, 1, 0, c_white, 1);



gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_pie(temp_x+170 ,temp_y+18 ,rg_meter, 100, c_red, 50, 1);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);    
    
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite_ext( sprite_get("royalguard_meter"), 0, temp_x+180, temp_y+18, 1, 1, 0, c_white, 1);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);




// //evidence
// draw_sprite_ext( sprite_get("evidence_hud"), ace_attorney_state, temp_x - 12, temp_y + 16, 1, 1, 0, c_white, 1);

// // for (i = 0; i < 3; i++){
    
// // }

// for (i = 0; i < array_length(evidence); i++){
//     if (evidence[i][0] != undefined){

//         if (evidence[i][1] == 0 || evidence[i][1] == 1)
//         draw_sprite_ext( sprite_get("bad_evislot"), 0, temp_x - 8 + (34 * i), temp_y + 24, 1, 1, 0, c_white, 1);

//         draw_sprite_ext( sprite_get("evidence"), evidence[i][0], temp_x + 12 + (34 * i), temp_y + 30, 1, 1, 0, c_white, 1);
//     }
//     else{
//         draw_sprite_ext( sprite_get("bad_evislot"), 0, temp_x - 8 + (34 * i), temp_y + 24, 1, 1, 0, c_white, 1);
//     }

    
// }



if (tsp_stack > 0){

    if (hud_timer == 0){

        tsp_stack--;

        hud_timer=50;
        slide_timer = 400;
        point_timer = 400;
    }

        draw_sprite_ext( sprite_get("parryscore"), 0, 24 - slide_timer, 100, 1, 1, 0, c_white, 1);
        draw_sprite_ext( sprite_get("parryscore"), 1, 24 - point_timer, 148, 1, 1, 0, c_white, 1);


        hud_timer = (hud_timer > 0) ? hud_timer-1 : 0;
        slide_timer = (slide_timer > 0) ? slide_timer-20 : 0;

        if (hud_timer < 45)
        point_timer = (point_timer > 0) ? point_timer-20 : 0;
}
// draw_debug_text( temp_x - 100, temp_y- 400, "evidence_list: 
//         " + string(evidence_list[0,0]) + ", 
//         " + string(evidence_list[0,1]) + ", 
//         " + string(evidence_list[0,2]) + ", 
//         " + string(evidence_list[0,3]) + ", 
//         " + string(evidence_list[0,4]) + ", 
//         " + string(evidence_list[0,5]) + ", 
//         " + string(evidence_list[0,6]) 



//          );

// draw_debug_text( temp_x + 100, temp_y- 400, "evidence_list: 
//         " + string(evidence[0]) + ", 
//         " + string(evidence[1]) + ", 
//         " + string(evidence[2])



//          );

}

#define draw_pie(x ,y ,value, max, colour, radius, transparency)

if (argument2 > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty, val;
    
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
    
    val = (argument2/argument3) * numberofsections 
    
    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
        draw_set_colour(argument4);
        draw_set_alpha(argument6);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(argument0, argument1);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection)+90; // the 90 here is the starting angle
            tx = lengthdir_x(argument5, len);
            ty = lengthdir_y(argument5, len);
            draw_vertex(argument0+tx, argument1+ty);
        }
        draw_primitive_end();
        
    }
    draw_set_alpha(1);
}

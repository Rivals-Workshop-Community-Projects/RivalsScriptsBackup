//

//draw_debug_text(temp_x+0, temp_y-42,string(state));  

draw_sprite(sprite_get("meter"), 0, temp_x +10, temp_y + -40);

if(nspec_charge > 0 && nspec_charge <= 180){
    draw_sprite_ext(sprite_get("meter_bar1"), 0, temp_x + 24, temp_y + -28, (nspec_charge/180), 1, 0, c_white, 1);
}
if(nspec_charge > 180){
   draw_sprite_ext(sprite_get("meter_bar1"), 0, temp_x + 24, temp_y + -28, 1, 1, 0, c_white, 1); 
}
if(nspec_charge == 180 && played_fanfare){
    draw_sprite_ext(sprite_get("meter_bar3"), 0, temp_x + 24, temp_y + -28, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprite_get("meter_bar2"), 0, temp_x + 24, temp_y + -28, 1, 1, 0, c_white, sin(0.25 * get_gameplay_time()));
}

var fx_image_index = get_gameplay_time() / 10;

switch(materia_state){
    case 0: // Currently Holy
    draw_sprite(sprite_get("materia_holy"), fx_image_index, temp_x + 156, temp_y + -24);
    draw_sprite_ext(sprite_get("materia_small"), 1, temp_x + 150, temp_y + -2, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprite_get("materia_small"), 2, temp_x + 170, temp_y + -2, 1, 1, 0, c_white, 1);
    break;
    case 1: // activate death
    draw_sprite(sprite_get("materiaselect_death"), materia_state_timer/2, temp_x + 152, temp_y + -22);
    break;
    case 2: // Currently Death
    draw_sprite(sprite_get("materia_death"), fx_image_index, temp_x + 156, temp_y + -24);
    draw_sprite_ext(sprite_get("materia_small"), 2, temp_x + 150, temp_y + -2, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprite_get("materia_small"), 0, temp_x + 170, temp_y + -2, 1, 1, 0, c_white, 1);;
    break;
    case 3: // activate gravity
    draw_sprite(sprite_get("materiaselect_grav"), materia_state_timer/2, temp_x + 152, temp_y + -22);
    break;
    case 4: // Currently Gravity
    draw_sprite(sprite_get("materia_gravity"), fx_image_index, temp_x + 156, temp_y + -24);
    draw_sprite_ext(sprite_get("materia_small"), 0, temp_x + 150, temp_y + -2, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprite_get("materia_small"), 1, temp_x + 170, temp_y + -2, 1, 1, 0, c_white, 1);
    break;
    case 5: // activate holy
    draw_sprite(sprite_get("materiaselect_holy"), materia_state_timer/2, temp_x + 152, temp_y + -22);
    break;
}
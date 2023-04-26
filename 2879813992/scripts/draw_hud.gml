//
//draw_debug_text(temp_x, temp_y-24,string(shield_cooldown));
//draw_debug_text(temp_x, temp_y-34,string(shield_plat_aerith));

var fx_image_index = get_gameplay_time() / 10;

var fire_cooldown = c_white
var ice_cooldown = c_white
var elec_cooldown = c_white

if(materia_fire_cooldown > 0){
    fire_cooldown = c_dkgray;
}if(materia_ice_cooldown > 0){
    ice_cooldown = c_dkgray;
}if(materia_elec_cooldown > 0){
    elec_cooldown = c_dkgray;
}

switch(materia_state){
    case 0: // no material, off on lightning
    draw_sprite_ext(sprite_get("materia_small_off"), 2, temp_x + 160, temp_y + -18, 1, 1, 0, elec_cooldown, 1);
    draw_sprite_ext(sprite_get("materia_small_off"), 0, temp_x + 150, temp_y + -2, 1, 1, 0, fire_cooldown, 1);
    draw_sprite_ext(sprite_get("materia_small_off"), 1, temp_x + 170, temp_y + -2, 1, 1, 0, ice_cooldown, 1);
    break;
    case 1: // activate fire
    draw_sprite(sprite_get("materiaselect_fire"), materia_state_timer/2, temp_x + 152, temp_y + -22);
    break;
    case 2: //active fire
    draw_sprite(sprite_get("materia_fire"), fx_image_index, temp_x + 156, temp_y + -24);
    draw_sprite_ext(sprite_get("materia_small"), 1, temp_x + 150, temp_y + -2, 1, 1, 0, ice_cooldown, 1);
    draw_sprite_ext(sprite_get("materia_small"), 2, temp_x + 170, temp_y + -2, 1, 1, 0, elec_cooldown, 1);
    break;
    case 3: // activate ice
    draw_sprite(sprite_get("materiaselect_ice"), materia_state_timer/2, temp_x + 152, temp_y + -22);
    break;
    case 4: //active ice
    draw_sprite(sprite_get("materia_ice"), fx_image_index, temp_x + 156, temp_y + -24);
    draw_sprite_ext(sprite_get("materia_small"), 2, temp_x + 150, temp_y + -2, 1, 1, 0, elec_cooldown, 1);
    draw_sprite_ext(sprite_get("materia_small"), 0, temp_x + 170, temp_y + -2, 1, 1, 0, fire_cooldown, 1);
    break;
    case 5: // activate lightning
    draw_sprite(sprite_get("materiaselect_thunder"), materia_state_timer/2, temp_x + 152, temp_y + -22);
    break;
    case 6: //active lightning
    draw_sprite(sprite_get("materia_thunder"), fx_image_index, temp_x + 156, temp_y + -24);
    draw_sprite_ext(sprite_get("materia_small"), 0, temp_x + 150, temp_y + -2, 1, 1, 0, fire_cooldown, 1);
    draw_sprite_ext(sprite_get("materia_small"), 1, temp_x + 170, temp_y + -2, 1, 1, 0, ice_cooldown, 1);
    break;
    case 7: //turn off fire
    draw_sprite(sprite_get("materiaselect_fireoff"), materia_state_timer/2, temp_x + 152, temp_y + -22);
    break;
    case 8: // no material, off on fire
    draw_sprite_ext(sprite_get("materia_small_off"), 0, temp_x + 160, temp_y + -18, 1, 1, 0, fire_cooldown, 1);
    draw_sprite_ext(sprite_get("materia_small_off"), 1, temp_x + 150, temp_y + -2, 1, 1, 0, ice_cooldown, 1);
    draw_sprite_ext(sprite_get("materia_small_off"), 2, temp_x + 170, temp_y + -2, 1, 1, 0, elec_cooldown, 1);
    break;
    case 9: //turn off ice
    draw_sprite(sprite_get("materiaselect_iceoff"), materia_state_timer/2, temp_x + 152, temp_y + -22);
    break;
    case 10: // no material, off on ice
    draw_sprite_ext(sprite_get("materia_small_off"), 1, temp_x + 160, temp_y + -18, 1, 1, 0, ice_cooldown, 1);
    draw_sprite_ext(sprite_get("materia_small_off"), 2, temp_x + 150, temp_y + -2, 1, 1, 0, elec_cooldown, 1);
    draw_sprite_ext(sprite_get("materia_small_off"), 0, temp_x + 170, temp_y + -2, 1, 1, 0, fire_cooldown, 1);
    break;
    case 11: //turn off elec
    draw_sprite(sprite_get("materiaselect_thunderoff"), materia_state_timer/2, temp_x + 152, temp_y + -22);
    break;
}
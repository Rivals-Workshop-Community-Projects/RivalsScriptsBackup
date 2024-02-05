//

var fx_image_index = get_gameplay_time() / 10;

switch(materia_state){
    case 0: // Currently Holy
    draw_sprite_ext(sprite_get("materia_holy"), fx_image_index, x - 16, y + 8,1,1,0,c_white,draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 1, x - 22, y + 30, 1, 1, 0, c_white, draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 2, x - 2, y + 30, 1, 1, 0, c_white, draw_materia);
    break;
    case 1: // activate death
    draw_sprite(sprite_get("materiaselect_death"), materia_state_timer/2, x - 20, y + 10);
    break;
    case 2: // Currently Death
    draw_sprite_ext(sprite_get("materia_death"), fx_image_index, x - 16, y + 8,1,1,0,c_white,draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 2, x - 22, y + 30, 1, 1, 0, c_white, draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 0, x - 2, y + 30, 1, 1, 0, c_white, draw_materia);
    break;
    case 3: // activate gravity
    draw_sprite(sprite_get("materiaselect_grav"), materia_state_timer/2, x - 20, y + 10);
    break;
    case 4: // Currently Gravity
    draw_sprite_ext(sprite_get("materia_gravity"), fx_image_index, x - 16, y + 8,1,1,0,c_white,draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 0, x - 22, y + 30, 1, 1, 0, c_white, draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 1, x - 2, y + 30, 1, 1, 0, c_white, draw_materia);
    break;
    case 5: // activate holy
    draw_sprite(sprite_get("materiaselect_holy"), materia_state_timer/2, x - 20, y + 10);
    break;
}

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if(attack == AT_USPECIAL_2){
draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 0, c_black, 0.5);
	}
	
	if(attack == AT_NSPECIAL){
		
	draw_sprite_ext(sprite_get("meter"), 0, x +10-50, y + -40-85, 1, 1, 0, c_white, nspec_hud_trans);
		
	if(nspec_charge > 0 && nspec_charge <= 180){
    draw_sprite_ext(sprite_get("meter_bar1"), 0, x + 24-50, y + -28-85, (nspec_charge/180), 1, 0, c_white, nspec_hud_trans);
}
if(nspec_charge > 180){
   draw_sprite_ext(sprite_get("meter_bar1"), 0, x + 24-50, y + -28-85, 1, 1, 0, c_white, nspec_hud_trans); 
}
if(nspec_charge == 180 && played_fanfare){
    draw_sprite_ext(sprite_get("meter_bar3"), 0, x + 24-50, y + -28-85, 1, 1, 0, c_white, nspec_hud_trans);
    if(nspec_hud_trans == 1){
    draw_sprite_ext(sprite_get("meter_bar2"), 0, x + 24-50, y + -28-85, 1, 1, 0, c_white, sin(0.25 * get_gameplay_time()));

    }
    }

	}
}
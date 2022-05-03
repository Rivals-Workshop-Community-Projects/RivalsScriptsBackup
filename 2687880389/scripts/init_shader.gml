if (object_index != oPlayer) exit;

// TODO - remapping in this file occasionally recolors the hud

/*
if (chosen_color == 0) {
*/
if ((state != PS_PARRY)
    || ((state == PS_PARRY)
        && (state_timer != 1)))
{
    if (codename_queen_active) {
        // Queen alt's feet need to be recolored
        set_character_color_slot( 7, 51, 51, 51, 1 ); //feet
        set_article_color_slot( 7, 51, 51, 51, 1 ); //feet
    } else if (codename_rotom_active) {

        // Rotom alt's feet and energy need to be recolored
        set_character_color_slot( 0, 255, 221, 0, 1 ); //energy
        set_character_color_slot( 7, 243, 130, 88, 1 ); //feet
        set_article_color_slot( 0, 255, 221, 0, 1 ); //energy
        // Chagne feet to be color of aura when doing taunt 2
        if ((state == PS_ATTACK_GROUND) && (attack == AT_TAUNT_2)) {
            set_article_color_slot( 7, 69, 215, 208, 1 ); //feet
        } else {
            set_article_color_slot( 7, 243, 130, 88, 1 ); //feet
        }
    }
    if (codename_default_active) {
        set_character_color_slot( 0, 255, 106, 0, 1 ); //energy
        set_character_color_slot( 1, 111, 0, 255, 1 ); //helmet
        if (rainbow_activate) {
            set_character_color_slot( 2, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color ));
            set_article_color_slot( 2, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color ));
        } else {
            set_character_color_slot( 2, 255, 106, 0, 1 ); //visor
            set_article_color_slot( 2, 255, 106, 0, 1 ); //visor
        }
        set_character_color_slot( 3, 0, 247, 255, 1 ); //flesh
        set_character_color_slot( 4, 0, 102, 255, 1 ); //torso
        set_character_color_slot( 5, 111, 0, 255, 1 ); //hands
        set_character_color_slot( 6, 174, 0, 255, 1 ); //connectors
        set_character_color_slot( 7, 111, 0, 255, 1 ); //feet
        set_article_color_slot( 0, 255, 106, 0, 1 ); //energy
        set_article_color_slot( 1, 111, 0, 255, 1 ); //helmet
        set_article_color_slot( 3, 0, 247, 255, 1 ); //flesh
        set_article_color_slot( 4, 0, 102, 255, 1 ); //torso
        set_article_color_slot( 5, 111, 0, 255, 1 ); //hands
        set_article_color_slot( 6, 174, 0, 255, 1 ); //connectors
        set_article_color_slot( 7, 111, 0, 255, 1 ); //feet
    } else if (codename_wireframe_active) {
        //set_character_color_slot( 0, 0, 255, 0, 1 ); //energy
        set_character_color_slot( 1, 0, 64, 0, 0.3 ); //helmet
        if (rainbow_activate) {
            set_character_color_slot( 2, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color ));
            set_article_color_slot( 2, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color ));
        } else {
            //set_character_color_slot( 2, 0, 255, 0, 1 ); //visor
            //set_article_color_slot( 0, 255, 0, 0, 1 ); //visor
        }
        set_character_color_slot( 3, 0, 64, 0, 0.3 ); //flesh
        set_character_color_slot( 4, 0, 64, 0, 0.3 ); //torso
        set_character_color_slot( 5, 0, 64, 0, 0.3 ); //hands
        set_character_color_slot( 6, 0, 64, 0, 0.3 ); //connectors
        set_character_color_slot( 7, 0, 64, 0, 0.3 ); //feet
        set_article_color_slot( 0, 0, 255, 0, 1 ); //energy
        set_article_color_slot( 1, 0, 64, 0, 0.3 ); //helmet
        set_article_color_slot( 3, 0, 64, 0, 0.3 ); //flesh
        set_article_color_slot( 4, 0, 64, 0, 0.3 ); //torso
        set_article_color_slot( 5, 0, 64, 0, 0.3 ); //hands
        set_article_color_slot( 6, 0, 64, 0, 0.3 ); //connectors
        set_article_color_slot( 7, 0, 64, 0, 0.3 ); //feet
    } else {
        if (rainbow_activate) {
            set_character_color_slot( 2, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color ));
            set_article_color_slot( 2, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color ));
        }
    }
    if (flat_shading_selected) {
        // Make the shading flat
        set_character_color_shading(0, 0);
        set_character_color_shading(1, 0);
        set_character_color_shading(2, 0);
        set_character_color_shading(3, 0);
        set_character_color_shading(4, 0);
        set_character_color_shading(5, 0);
        set_character_color_shading(6, 0);
        set_character_color_shading(7, 0);
    }
}

/*
// Overwrite the parry color
var energy_color_r = get_color_profile_slot_r(chosen_color, 0);
var energy_color_g = get_color_profile_slot_g(chosen_color, 0);
var energy_color_b = get_color_profile_slot_b(chosen_color, 0);
if ((state == PS_PARRY) && (state_timer == 1)) {
    set_character_color_slot( 0, energy_color_r, energy_color_g, energy_color_b, 1 ); //energy
    set_character_color_slot( 1, energy_color_r, energy_color_g, energy_color_b, 1 ); //helmet
    set_character_color_slot( 2, energy_color_r, energy_color_g, energy_color_b, 1 ); //visor
    set_character_color_slot( 3, energy_color_r, energy_color_g, energy_color_b, 1 ); //flesh
    set_character_color_slot( 4, energy_color_r, energy_color_g, energy_color_b, 1 ); //torso
    set_character_color_slot( 5, energy_color_r, energy_color_g, energy_color_b, 1 ); //hands
    set_character_color_slot( 6, energy_color_r, energy_color_g, energy_color_b, 1 ); //connectors
    set_character_color_slot( 7, energy_color_r, energy_color_g, energy_color_b, 1 ); //feet
}
*/
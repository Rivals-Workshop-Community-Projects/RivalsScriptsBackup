//article1_post_draw.gml
//similarly to a player's post_draw.gml, this script draws over the article's graphics

/////////////////////////////////////////////////////// OWNER INDICATOR ///////////////////////////////////////////////////////

#define get_c808_state_name(state)
switch (state) {
    case 0: return "CAT_INIT";
    case 1: return "CAT_IDLE";
    case 2: return "CAT_GLIDE";
    case 3: return "CAT_ATTACK";
    case 4: return "CAT_RETURN";
    case 5: return "CAT_RESPAWN";
    case 6: return "CAT_DIE";
}


/////////////////////////////////////////////////// SHOW MASK ON HITBOX VIEW ///////////////////////////////////////////////////

if (get_match_setting(SET_HITBOX_VIS)) draw_sprite_ext(mask_index, image_index, x, y, 1, 1, 0, c_white, 0.5);
//article1_post_draw.gml
//similarly to a player's post_draw.gml, this script draws over the article's graphics

/////////////////////////////////////////////////// SHOW MASK ON HITBOX VIEW ///////////////////////////////////////////////////

if (get_match_setting(SET_HITBOX_VIS)) draw_sprite_ext(mask_index, image_index, x, y, 1, 1, 0, c_white, 0.5);
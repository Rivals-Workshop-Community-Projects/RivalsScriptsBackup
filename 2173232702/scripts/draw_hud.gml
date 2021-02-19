/* check pre_draw

if ("menu_active" in self){
    if (menu_active){
        draw_sprite(sprite_get("menu_icons"), menu_spell[0], x, y-96);
        draw_sprite(sprite_get("menu_icons"), menu_spell[1], x+96, y-96);
        draw_sprite(sprite_get("menu_icons"), menu_spell[2], x, y+96-96); // yes I'm very lazy
        draw_sprite(sprite_get("menu_icons"), menu_spell[3], x-96, y-96);
        draw_sprite(sprite_get("menu_icons"), menu_spell[4], x, y-96-96);
    }
}


if ("selected_spell" in self){
    if (selected_spell > 0){
        draw_sprite_ext(sprite_get("menu_spells_test"), selected_spell, x+96, y-360, 1, 1, 0, c_white, 1);
    }
}
 */
 
var element_subimage = 0;
switch(random_effect){
    case 11: element_subimage = 0; break;
    case 1: element_subimage = 1; break;
    case 8: element_subimage = 2; break;
    case 10: element_subimage = 3; break;
    // case <whatever the freeze effect is> : element_subimage = 4; break; // add freeze effect before uncommenting
    default: element_subimage = 0; vsp = -5; break;
}
draw_sprite(sprite_get("next_element"), element_subimage, temp_x + 196, temp_y - 8);

if (time_until_magic == 0)
draw_sprite(sprite_get("mpbar"), magic_meter, temp_x + 96, temp_y - 34);
else
draw_sprite(sprite_get("mpbar"), 100, temp_x + 96, temp_y - 34);

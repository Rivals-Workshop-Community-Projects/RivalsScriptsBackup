var draw_height = 88;
var spacing = 42;
var xFixed = x + 16;
if ("menu_active" in self){
    if (menu_active && attack == AT_NSPECIAL && window > 1){
        char_height = 200;
        draw_sprite(sprite_get("menu_icons"), menu_spell[0], xFixed, y-draw_height-spacing);
        draw_sprite(sprite_get("menu_icons"), menu_spell[3], xFixed-spacing, y-draw_height-spacing);
        draw_sprite(sprite_get("menu_icons"), menu_spell[4], xFixed, y-draw_height-spacing-spacing); // peak lazyness achieved
        draw_sprite(sprite_get("menu_icons"), menu_spell[1], xFixed+spacing, y-draw_height-spacing);
        draw_sprite(sprite_get("menu_icons"), menu_spell[2], xFixed, y-draw_height);
    } else{
        char_height = char_height_base;
    }
}
if (spell_activated_timer > 0){
    for (i=0; i<5; i++){
        if (menu_spell[i] == selected_spell){
            draw_sprite_ext(sprite_get("menu_icons"), menu_spell[i], xFixed+16, y-draw_height-spacing+16, 2, 2, 0, c_white, 1);
        }
    }
}

if (state == PS_RESPAWN || (state == PS_ATTACK_GROUND && free && attack == AT_TAUNT)){
    draw_sprite(sprite_get("plat_actual"), 0, x, y);
    if (state == PS_RESPAWN){
        sprite_index = sprite_get("crouch_plat");
    }
}

// var element_subimage = 0;
// switch(random_effect){
//     case 11: element_subimage = 0; break;
//     case 1: element_subimage = 1; break;
//     case 8: element_subimage = 2; break;
//     case 10: element_subimage = 3; break;
//     // case <whatever the freeze effect is> : element_subimage = 4; break; // add freeze effect before uncommenting
//     default: element_subimage = 0; vsp = -5; break;
// }
// draw_sprite(sprite_get("next_element"), element_subimage, x, y-140);

// if ("selected_spell" in self){
//     if (selected_spell > 0){
//         draw_sprite_ext(sprite_get("menu_spells_test"), selected_spell, x+64, y-360, 1, 1, 0, c_white, 1);
//     }
// }
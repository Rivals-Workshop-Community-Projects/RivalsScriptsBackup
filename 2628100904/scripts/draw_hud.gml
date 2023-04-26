if ("weedcharge" not in self) exit;

draw_set_alpha(1)

if(weedcharge < mid_weedcharge){
    draw_sprite(sprite_get("potleaf"), 0, temp_x + 140, temp_y - 54);
} else if (weedcharge < max_weedcharge) {
    draw_sprite(sprite_get("potleaf"), 1, temp_x + 140, temp_y - 54);
} else {
    draw_sprite(sprite_get("potleaf"), 2, temp_x + 140, temp_y - 54);
}

//who would've figured hud elements are reeally easy to add thanks morshu
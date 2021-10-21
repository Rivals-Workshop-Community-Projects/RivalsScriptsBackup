if ("weedcharge" not in self) exit;

draw_set_alpha(1)
shader_start();

if(weedcharge <= 45){
    draw_sprite(sprite_get("potleaf"), 0, temp_x + 140, temp_y - 54);
}else if (weedcharge < 80) {
    draw_sprite(sprite_get("potleaf"), 1, temp_x + 140, temp_y - 54);
} else {
    draw_sprite(sprite_get("potleaf"), 2, temp_x + 140, temp_y - 54);
}

shader_end();

//who would've figured hud elements are reeally easy to add thanks morshu
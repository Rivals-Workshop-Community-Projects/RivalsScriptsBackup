//pianomanindicator
shader_start();
if lilman = 1 {
 if move_cooldown[AT_FSPECIAL] > 0 {
    draw_sprite(sprite_get("pianoman1hud"), 1, temp_x + 180, temp_y - 24)
}
else {
     draw_sprite(sprite_get("pianoman1hud"), 0, temp_x + 180, temp_y - 24)
}
}

if lilman = 2 {
 if move_cooldown[AT_FSPECIAL] > 0 {
    draw_sprite(sprite_get("pianoman2hud"), 1, temp_x + 180, temp_y - 32)
}
else {
     draw_sprite(sprite_get("pianoman2hud"), 0, temp_x + 180, temp_y - 32)
}
}

if lilman = 3 {
 if move_cooldown[AT_FSPECIAL] > 0 {
    draw_sprite(sprite_get("pianoman3hud"), 1, temp_x + 176, temp_y - 30)
}
else {
     draw_sprite(sprite_get("pianoman3hud"), 0, temp_x + 176, temp_y - 30)
}
}

if lilman = 4 {
 if move_cooldown[AT_FSPECIAL] > 0 {
    draw_sprite(sprite_get("pianoman4hud"), 1, temp_x + 184, temp_y - 36)
}
else {
     draw_sprite(sprite_get("pianoman4hud"), 0, temp_x + 184, temp_y - 36)
}
}
shader_end();


//moon

shader_start();
if moontype = 1 {
 if move_cooldown[AT_NSPECIAL] > 0 {
    draw_sprite(sprite_get("moon1hud"), 1, temp_x + 140, temp_y - 28)
}
else {
     draw_sprite(sprite_get("moon1hud"), 0, temp_x + 140, temp_y - 28)
}
}

shader_end();

if moontype = 2 {
 if move_cooldown[AT_NSPECIAL] > 0 {
    draw_sprite(sprite_get("moon2hud"), 1, temp_x + 140, temp_y - 28)
}
else {
     draw_sprite(sprite_get("moon2hud"), 0, temp_x + 140, temp_y - 28)
}
}

if moontype = 3 {
 if move_cooldown[AT_NSPECIAL] > 0 {
    draw_sprite(sprite_get("moon3hud"), 1, temp_x + 140, temp_y - 28)
}
else {
     draw_sprite(sprite_get("moon3hud"), 0, temp_x + 140, temp_y - 28)
}
}
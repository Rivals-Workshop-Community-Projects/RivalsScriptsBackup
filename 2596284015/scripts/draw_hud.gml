// draw_hud will draw things on the hud.

//Billiardball HUD stuff
if (move_cooldown[AT_NSPECIAL] >= 10){
draw_sprite_ext(sprite_get("hud_billiard"), image_index, temp_x+182, temp_y-14, 2, 2, 0, c_white, 0.3);
}
if (move_cooldown[AT_NSPECIAL] > 0 && move_cooldown[AT_NSPECIAL] < 10){
draw_sprite_ext(sprite_get("hud_billiard"), image_index, temp_x+182, temp_y-14, 2, 2, 0, c_white, 0.3);
}
if (move_cooldown[AT_NSPECIAL] < 5 && move_cooldown[AT_NSPECIAL] > 0){
draw_sprite_ext(sprite_get("hud_billiard"), image_index, temp_x+182, temp_y-14, 2, 2, 0, c_white, 0.3);
}
if (move_cooldown[AT_NSPECIAL] <= 1){
draw_sprite_ext(sprite_get("hud_billiard"), image_index, temp_x+182, temp_y-14, 2, 2, 0, c_white, 1);
}

//Snookerball HUD stuff
if (move_cooldown[AT_FSPECIAL] > 0){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.1);
}
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 90){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.05);
}
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 80){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.1);
}
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 70){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.2);
}
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 60){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.3);
}
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 50){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.4);
}
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 40){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.5);
}
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 30){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.6);
}
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 20){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.7);
}
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 10){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.8);
}
if (move_cooldown[AT_FSPECIAL] > 0 && move_cooldown[AT_FSPECIAL] < 5){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 0.9);
}
if (move_cooldown[AT_FSPECIAL] <= 1){
draw_sprite_ext(sprite_get("hud_snooker"), image_index, temp_x+160, temp_y-14, 2, 2, 0, c_white, 1);
}

if (move_cooldown[AT_DSPECIAL] > 0){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.1);
}
if (move_cooldown[AT_DSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] < 90){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.05);
}
if (move_cooldown[AT_DSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] < 80){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.1);
}
if (move_cooldown[AT_DSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] < 70){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.2);
}
if (move_cooldown[AT_DSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] < 60){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.3);
}
if (move_cooldown[AT_DSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] < 50){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.4);
}
if (move_cooldown[AT_DSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] < 40){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.5);
}
if (move_cooldown[AT_DSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] < 30){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.6);
}
if (move_cooldown[AT_DSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] < 20){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.7);
}
if (move_cooldown[AT_DSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] < 10){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.8);
}
if (move_cooldown[AT_DSPECIAL] > 0 && move_cooldown[AT_DSPECIAL] < 5){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 0.9);
}
if (move_cooldown[AT_DSPECIAL] <= 1){
draw_sprite_ext(sprite_get("hud_chalk"), image_index, temp_x+135, temp_y-14, 2, 2, 0, c_white, 1);
}

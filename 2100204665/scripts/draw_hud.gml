if (move_cooldown[AT_FSPECIAL] > 0){
    draw_sprite_ext(sprite_get("bluehud"), 1, temp_x + 4, temp_y + 6, 1, 1, 0, c_white, 1);
}
if (can_blue == false){
    draw_sprite_ext(sprite_get("bluehud"), 0, temp_x + 4, temp_y + 6, 1, 1, 0, c_white, 1);
}

if (hit_counter = 0){
        draw_sprite_ext(sprite_get("bonemeter"), 0, temp_x + 180, temp_y - 20, 1, 1, 0, c_white, 1);
}
if (hit_counter = 1){
        draw_sprite_ext(sprite_get("bonemeter"), 1, temp_x + 180, temp_y - 20, 1, 1, 0, c_white, 1);
}
if (hit_counter = 2){
        draw_sprite_ext(sprite_get("bonemeter"), 2, temp_x + 180, temp_y - 20, 1, 1, 0, c_white, 1);
}
if (move_cooldown[AT_DSPECIAL] > 0){
        draw_sprite_ext(sprite_get("bonemeter"), 3, temp_x + 180, temp_y - 20, 1, 1, 0, c_white, 1);
}

if (hit_timer <= 200 and hit_timer > 180 && can_blue == false){
    draw_sprite_ext(sprite_get("bonetimer"), 0, temp_x + 181, temp_y - 28, 1, 1, 0, c_white, 1);
}
if (hit_timer <= 180 and hit_timer > 160 && can_blue == false){
    draw_sprite_ext(sprite_get("bonetimer"), 1, temp_x + 181, temp_y - 28, 1, 1, 0, c_white, 1);
}
if (hit_timer <= 160 and hit_timer > 140 && can_blue == false){
    draw_sprite_ext(sprite_get("bonetimer"), 2, temp_x + 181, temp_y - 28, 1, 1, 0, c_white, 1);
}
if (hit_timer <= 140 and hit_timer > 120 && can_blue == false){
    draw_sprite_ext(sprite_get("bonetimer"), 3, temp_x + 181, temp_y - 28, 1, 1, 0, c_white, 1);
}
if (hit_timer <= 120 and hit_timer > 100 && can_blue == false){
    draw_sprite_ext(sprite_get("bonetimer"), 4, temp_x + 181, temp_y - 28, 1, 1, 0, c_white, 1);
}
if (hit_timer <= 100 and hit_timer > 80 && can_blue == false){
    draw_sprite_ext(sprite_get("bonetimer"), 5, temp_x + 181, temp_y - 28, 1, 1, 0, c_white, 1);
}
if (hit_timer <= 80 and hit_timer > 60 && can_blue == false){
    draw_sprite_ext(sprite_get("bonetimer"), 6, temp_x + 181, temp_y - 28, 1, 1, 0, c_white, 1);
}
if (hit_timer <= 60 and hit_timer > 40 && can_blue == false){
    draw_sprite_ext(sprite_get("bonetimer"), 7, temp_x + 181, temp_y - 28, 1, 1, 0, c_white, 1);
}
if (hit_timer <= 40 and hit_timer > 20 && can_blue == false){
    draw_sprite_ext(sprite_get("bonetimer"), 8, temp_x + 181, temp_y - 28, 1, 1, 0, c_white, 1);
}
if (hit_timer <= 20 and hit_timer > 0 && can_blue == false){
    draw_sprite_ext(sprite_get("bonetimer"), 9, temp_x + 181, temp_y - 28, 1, 1, 0, c_white, 1);
}
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
if (taunt_timer >= 1){
    draw_sprite_ext(sprite_get("nyeh"), 0, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 4){
    draw_sprite_ext(sprite_get("nyeh"), 1, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 8){
    draw_sprite_ext(sprite_get("nyeh"), 2, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 12){
    draw_sprite_ext(sprite_get("nyeh"), 4, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 16){
    draw_sprite_ext(sprite_get("nyeh"), 5, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 20){
    draw_sprite_ext(sprite_get("nyeh"), 6, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 24){
    draw_sprite_ext(sprite_get("nyeh"), 8, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 42){
    draw_sprite_ext(sprite_get("nyeh"), 9, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 30){
    draw_sprite_ext(sprite_get("nyeh"), 10, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 32){
    draw_sprite_ext(sprite_get("nyeh"), 12, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 36){
    draw_sprite_ext(sprite_get("nyeh"), 13, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 40){
    draw_sprite_ext(sprite_get("nyeh"), 14, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 44){
    draw_sprite_ext(sprite_get("nyeh"), 16, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 48){
    draw_sprite_ext(sprite_get("nyeh"), 15, temp_x - 42, temp_y - 38, 1, 1, 0, c_white, 1);
}
if (taunt_timer >= 78){
    draw_sprite_ext(sprite_get("nyeh"), 0, temp_x - 42, temp_y + 200, 1, 1, 0, c_white, 0);
}
if (taunt_timer = 80){
    draw_sprite_ext(sprite_get("nyeh"), 0, temp_x - 42, temp_y + 200, 1, 1, 0, c_white, 0);
    taunt_timer = 0;
}
}

if (state == PS_PRATFALL){
    taunt_timer = 0;
}

if (state == PS_AIR_DODGE){
    taunt_timer = 0;
}

if (state == PS_PARRY){
    taunt_timer = 0;
}

if (state == PS_ROLL_BACKWARD){
    taunt_timer = 0;
}

if (state == PS_ROLL_FORWARD){
    taunt_timer = 0;
}

if (state == PS_HITSTUN){
    taunt_timer = 0;
}

if (state == PS_DEAD){
    taunt_timer = 0;
}

if (AT_TAUNT == false){
    taunt_timer = 0;
}

/*if (bone != noone){
    draw_debug_text(temp_x+22, temp_y-50, string(bone.time));
}

//draw_debug_text(temp_x+22, temp_y-50, string(papy_orb));

//if (blue_time > 0){
//    draw_debug_text(temp_x+22, temp_y-50, string(blue_time));
//}
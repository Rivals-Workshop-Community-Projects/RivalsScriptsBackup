if (swordfloat == 1){
draw_sprite_ext(sprite_get("sword"), 0, swordfollow.x, swordfollow.y, 1, 1, 0, c_white, 1);
}

//if (trail == 1){
//draw_sprite_ext(sprite_get("fspecial"), get_gameplay_time()/6, x, y, 1, 1, 0, c_white, 1)
//}

if (attack == AT_DSPECIAL && window == 2 && state != PS_PARRY && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_AIR_DODGE && state != PS_TECH_GROUND && state != PS_WALL_TECH && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD){
draw_sprite(sprite_get("command"), hud_option, x +25, y -125);
}


// afterimage
if (attack == AT_FSPECIAL){
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    gpu_set_fog(1, obj.col, 0, 1);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1), 1, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
}
gpu_set_fog(0, c_white, 0, 0);
}

if (attack == 49){
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    gpu_set_fog(1, obj.col, 0, 1);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1), 1, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
}
gpu_set_fog(0, c_white, 0, 0);
}

if (state == PS_AIR_DODGE){
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    gpu_set_fog(1, obj.col, 0, 1);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1), 1, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
}
gpu_set_fog(0, c_white, 0, 0);
}

if (state == PS_ROLL_BACKWARD){
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    gpu_set_fog(1, obj.col, 0, 1);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1), 1, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
}
gpu_set_fog(0, c_white, 0, 0);
}

if (state == PS_ROLL_FORWARD){
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    gpu_set_fog(1, obj.col, 0, 1);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1), 1, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
}
gpu_set_fog(0, c_white, 0, 0);
}
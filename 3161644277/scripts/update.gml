//afterimage from zard
if (get_gameplay_time() mod 8 == 0) && ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && ((attack == AT_FSPECIAL) || (attack == AT_DAIR)))
afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:afterimage_colour, timer:0, timerMax:16};


var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;

if (instance_exists(my_player_article)) {
    move_cooldown[AT_NSPECIAL] = 120;
}
else if (article_exises == 0){
    move_cooldown[AT_NSPECIAL] = 120;
    article_exises = 2;
}

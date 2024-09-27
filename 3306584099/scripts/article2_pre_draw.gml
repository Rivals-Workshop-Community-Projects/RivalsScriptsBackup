//Trail 

for (var i = 0; i < array_length(trail_array); ++i)
{
    var obj = trail_array[i];
    var xscale = max(1, 1+(point_distance(obj.x, obj.y, obj.x + lengthdir_x(obj.dist, obj.rot), obj.y + lengthdir_y(obj.dist, obj.rot))/16) div 2);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x , obj.y, xscale*obj.spr_dir, 1, obj.rot, obj.col, 1);
}
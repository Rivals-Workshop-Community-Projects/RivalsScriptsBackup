shader_start()

var part, len; 
part = particles;
len = ds_list_size(part);
if len != 0
{
    for (var p = 0; p < len; p++)
	{
		//print("DRAWING")
	    var o = part[| p];
	    draw_sprite_ext(o.sprite,o.frame,o.position[@ 0],o.position[@ 1],o.scale[@ 0], o.scale[@ 1], 0, o.color, 1);
	}
}

shader_end()

gpu_set_fog(1,afterimage_color,1,1)
gpu_set_blendmode(bm_add)
if fspecial_stored[0] == 3
{
	var t = sin(get_gameplay_time()/16);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale, image_yscale,spr_angle,c_white,0.3 + 0.2*(t))
}
gpu_set_fog(0,c_white,1,1)
gpu_set_blendmode(bm_normal);
// gpu_set_blendmode(bm_add)
// with (asset_get("pHitBox"))
// {
// 	if player_id == other and attack == AT_FSPECIAL{
// 		draw_glow(x,y,20,c_white, c_white,0.5,16);
// 	}
// }
// gpu_set_blendmode(bm_normal)
#define draw_glow(cx, cy, r, col1, col2, alpha, precision)

draw_primitive_begin(pr_trianglefan);
draw_vertex_color(cx, cy, col1, alpha);
var incre = (2*pi) / abs(precision);

for (var i = 0; i <= 2*pi; i+=incre)
{
    var pos;
    pos = [cos(i)*sign(precision), sin(i)*sign(precision)];
    draw_vertex_color(cx + (pos[0]*r), cy - (pos[1]*r), col2, 0);
}
draw_vertex_color(cx+(r*sign(precision)), cy, col2, 0);
draw_primitive_end();
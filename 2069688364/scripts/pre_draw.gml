// pre-draw
stx=x
sty=y-24
var ang=point_direction(stx,sty,tx,ty)
var dis=point_distance(stx,sty,tx,ty)/32
if radius!=noone
{
    lsnapx=tx
    lsnapy=ty
    if !string_snapped
    {
        var edge=1
        string_scale+=sign(dis-string_scale)*edge
        if abs(string_scale-dis)<edge+1
        {
            string_snapped=true
            sound_stop(sound_get("gear"))
            sound_play(asset_get("sfx_shovel_hit_light1"))
            string_scale=dis
        }
    }
    else
    {
        string_scale=dis
    }
}
else
{
    ang=point_direction(stx,sty,lsnapx,lsnapy)
    string_scale+=(0-string_scale)/7
    string_snapped=false
}
draw_sprite_ext(sprite_get("string"),0,stx,sty,string_scale,1,ang,merge_color(c_black,c_white,clamp((dis*32)/radius,0,1)),1)
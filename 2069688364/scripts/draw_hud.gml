var totnkys=1
if state=PS_ATTACK_GROUND or state=PS_ATTACK_AIR
{
    if attack=AT_DSPECIAL and (window>1 or window_timer>15)
    {
        totnkys=0
    }
}
tnkys+=(totnkys-tnkys)/6
var tnkx=temp_x
var tnky=temp_y-2+(1-tnkys)*16
draw_sprite_ext(sprite_get("big_tank"),0,tnkx,tnky,1,1,0,c_white,tnkys)
draw_sprite_ext(sprite_get("gas"),0,tnkx+10,tnky-2,gas/maxgas,1,0,c_white,tnkys)
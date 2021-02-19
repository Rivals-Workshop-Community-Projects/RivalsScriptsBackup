// pre-draw

if armor_active
{
    draw_sprite(sprite_get("ribbonFX"),fxspd,x,y);
}
if buff_active
{
    draw_sprite(sprite_get("heroFX"),fxspd,x,y);
}
if speedbuff_active
{
    draw_sprite(sprite_get("teaFX"),fxspd,x,y);
}
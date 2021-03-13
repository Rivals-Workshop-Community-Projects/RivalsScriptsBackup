//unique projectiles
if state == 12
{
    var earthpillar_sprite = sprite_get("earthpillar");
    for(var i=0; i<7; i++)
    {
      draw_sprite_ext(earthpillar_sprite, i==0 ? 0 : 1, x, y+(i*128),2,2,0,c_white,dralpha);
    }
}
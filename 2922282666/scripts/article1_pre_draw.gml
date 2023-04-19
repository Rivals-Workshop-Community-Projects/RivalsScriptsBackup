if(state == 3)
    draw_sprite_ext(sprite_get("VaccuumEffect"),0,x,y,1/clamp(state_timer*0.25,1,999),1/clamp(state_timer*0.25,1,999),state_timer*10,c_white,0.5);
else if(state != 4) draw_sprite_ext(sprite_get("gem_glow"),0,x,y,spr_dir,1,0,light_color,0.5+0.2*cos(get_gameplay_time()/20));
if(state != 0 && state != 2 && state != 4) 
{
    var gemSize = (player_id.GemSelect != 0? 1:1.35)
    draw_sprite_ext(sprite_get("gem_aoe"),0,x,y,gemSize,gemSize,0,c_white,0.5);
}

if(image_alpha == 0 && state == 1)
    draw_sprite_ext(sprite_index,image_index,x-hsp*2,y-vsp*2,spr_dir*(abs(hsp/10)+1),1*(abs(vsp/10)+1),0,c_white,1);
//Glow
shader_start()
if ("fspec_article" in self && fspec_article != noone)
{
    var hudcol = get_player_hud_color( player );
    drawhudui(hudcol);
    
    var rad, mult;
    rad = (get_gameplay_time()/30) mod (2*3.14159)
    mult = abs(sin(rad))*0.3 + 1;

    gpu_set_blendmode(bm_add)
    draw_sprite_ext(fspec_article.sprite_index,fspec_article.image_index,fspec_article.x,fspec_article.y,fspec_article.spr_dir*mult,mult,0,hudcol,0.6)
    gpu_set_blendmode(bm_normal)
}

//draw_debug_text(x,y,"counter: "+string(wisp_recharge)+"/"+string(wisp_max_recharge));

//if (attack == AT_USPECIAL_2 or attack == AT_USPECIAL) draw_debug_text(x,y,string(uspec_first == true ? "first" : "not first"));

with pHitBox {
    //make sure it's your own article
    if (player_id == other.id)
    {
        if (attack == AT_NSPECIAL && hbox_num == 1) 
        {
            if free
            {
                arrow_angle = point_direction(0,0,hsp,vsp);
                if (!other.should_red_arrow) draw_sprite_ext(other.blue_arrow_sprite,current_frame,x,y,1,1,arrow_angle, c_white, 1);
                else draw_sprite_ext(other.red_arrow_sprite,current_frame,x,y,1,1,arrow_angle, c_white, 1);
                
            }
            else 
            {
                if (!other.should_red_arrow) draw_sprite_ext(other.blue_arrow_sprite,current_frame,x,y,1,1,arrow_angle, c_white, 1);
                else draw_sprite_ext(other.red_arrow_sprite,current_frame,x,y,1,1,arrow_angle, c_white, 1);
            }
        }
    }
}
shader_end()

p_draw(particles)
#define p_draw(list)
///- Draws the particles in the list.
// This function goes into a draw script.

if (ds_list_size(list) > 0) {
    for (var i = 0; i < ds_list_size(list); ++i) {
        var ap = list[| i];
        
        gpu_set_fog(true,t,0,0)
        if (ap.shader) shader_start();
        var t;
        t = fire_color;
        if !(ap.sprite == sprite_get("dspecial") or ap.sprite == sprite_get("dattack")) t = c_white
        
        
        draw_sprite_ext(ap.sprite,ap.image,ap.x,ap.y,ap.xscale,1,0,t,ap.alpha);
        
        if (ap.shader) shader_end();
        gpu_set_fog(false,t,0,0)
    }
}

init_shader();

#define find_wisp
//Return: real, -1 if failed
//Takes the wisps array and sees if there is any object in it.
//If there is, return the index of the first one found starting from the end.
i = 2;
while (wisps[i] == -1)
{
    i = (i == 0) ? -1 : i-1;
    if (i == -1) break; // to avoid out of bounds errors
}
return i;

#define drawhudui(hudcol)
{    
    var xpos = fspec_article.x;
    var ypos = fspec_article.y-40;

    draw_rectangle_color(xpos-6,ypos-2,xpos+7,ypos+1,c_black,c_black,c_black,c_black,false);
    draw_rectangle_color(xpos-4,ypos,xpos+5,ypos+1,hudcol,hudcol,hudcol,hudcol,false);

    draw_rectangle_color(xpos-4,ypos+2,xpos+5,ypos+3,c_black,c_black,c_black,c_black,false);
    draw_rectangle_color(xpos-2,ypos+2,xpos+3,ypos+3,hudcol,hudcol,hudcol,hudcol,false);

    draw_rectangle_color(xpos-2,ypos+4,xpos+3,ypos+5,c_black,c_black,c_black,c_black,false);
    draw_rectangle_color(xpos,ypos+4,xpos+1,ypos+5,hudcol,hudcol,hudcol,hudcol,false);

    draw_rectangle_color(xpos,ypos+6,xpos+1,ypos+7,c_black,c_black,c_black,c_black,false);
}
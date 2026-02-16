/*

  draw_debug_text( x -10+30, y - 20,"Object_ID: " + string(id));
   draw_debug_text( x -10+30, y - 40,"Hitbox_ID: " + string(lamp_hitbox));
/*


draw_debug_text( x -10+30, y - 20,"Object_ID: " + string(self));
draw_debug_text( x -10+30, y + 20,"STATE " + string(state));
 draw_debug_text( x -10+30, y + 40,"STATE_TIMER " + string(state_timer));
 //draw_debug_text( x -10+30, y + 60,"WHERE THE FUCK AM I LOOKING??: " + string(spr_dir));
draw_debug_text( x -10+30, y + 60,"ANIM_TIMER: " + string(anim_timer));
draw_debug_text( x -10+30, y + 80,"THIS IS LAMP NUMBER: " + string(lamp_no));
draw_debug_text( x -10+30, y + 100,"Freeze frames: " + string(freeze));
  /*draw_debug_text( x -10+30, y + 100,"rishi hitbox id: " + string(rishi_hitbox));
  draw_debug_text( x -10+30, y + 120,"Freeze frames " + string(freeze));
    draw_debug_text( x -10+30, y -40,"HSP " + string(hsp));
      draw_debug_text( x -10+30, y - 60,"VSP " + string(vsp));


/*draw_debug_text( x -10+30, y - 20,"Object_ID: " + string(self));
draw_debug_text( x -10+30, y - 40,"Hitbox_ID: " + string(hboxghost));
draw_debug_text( x -40+30, y - 60,"Chi: " + string(chi));
draw_debug_text( x +40+30, y - 60,"Chi_cd: " + string(chi_cd));
draw_debug_text( x +40+30+122, y - 60,"Stun timer: " + string(stun_timer));

if (explosion_cd<180){
    draw_debug_text( x +40, y - 80,"explosion_cd: " + string(explosion_cd));
}
if (explosion_cd>180&&chi>0){
    draw_debug_text( x +40, y - 80,"explosion_cd: READY ");
 }*/
 
if(on_cooldown) draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, image_yscale, image_angle, c_black, .5);
 
 //Indicator for if especials can be used
 
var col = get_player_hud_color(player);
draw_sprite_ext(sprite_get("indicator"), 0, x - 7, y - 38, 1, 1, 0, col, 1);
if(on_cooldown) draw_sprite_ext(sprite_get("indicator"), 0, x - 7, y - 38, 1, 1, 0, c_black, .5);



//Tester Code

///////////////////////////////////////////////////// OFFSCREEN INDICATOR /////////////////////////////////////////////////////

//capture area + sprite offsets
var view_left = view_get_xview() + 34; //0, y
var view_right = view_get_wview() + view_get_xview() - 34; //screenborder, y
var view_up = view_get_yview() + 32; //x, 0
var view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder

//if the article is inside of the screen [article_offscreen] is false
article_offscreen = !(x >= view_left - 64 && x <= view_right + 64 && y >= view_up - 32 && y <= view_down + 85);


if (true)
{
    if (article_offscreen && !instance_exists(oTestPlayer))
    {
        //sets article depth to a very large negative number so the indicator appears in front of things
        //we are doing this because article#_post_draw relies on the article's depth too
        depth = -200;
        
        //screen limits x - this decides how far the indicator should follow the article on the X axis
        if (x < view_left - 65) offscreen_x_pos = view_left - 32;
        else if (x > view_right + 65) offscreen_x_pos = view_right - 32;
        else offscreen_x_pos = x - 32;

        //screen limits y - this decides how far the indicator should follow the article on the Y axis
        if (y < view_up + 24) offscreen_y_pos = view_up - 32;
        else if (y > view_down + 24) offscreen_y_pos = view_down - 32;
        else offscreen_y_pos = y - 54;

        //image angles - decides at which coordinates should the article change the arrow sprite
        if (x < view_left - 63)
        {
            if (y < view_up - 33) offscreen_image = 1;
            else if (y > view_down + 85) offscreen_image = 7;
            else  offscreen_image = 0;
        }
        else if (x > view_right + 63)
        {
            if (y < view_up - 33) offscreen_image = 3;
            else if (y > view_down + 85) offscreen_image = 5;
            else  offscreen_image = 4;
        }
        else
        {
            if (y < view_up - 33) offscreen_image = 2;
            else if (y > view_down + 85) offscreen_image = 6;
        }

        draw_sprite_ext(sprite_get("hud_offscreen_arrow"), offscreen_image, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, get_player_hud_color(player), 1);
        draw_sprite_ext(sprite_get("hud_offscreen_image"), 0, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, c_white, 1);
    }
    else depth = orig_depth; //reset depth back to normal when it's on screen
}
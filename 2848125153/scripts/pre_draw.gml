
with(pHitBox){
    if(player_id == other &&
    (attack == AT_NSPECIAL && hbox_num == 1 && hit_priority > 0 || attack == AT_FSPECIAL && hbox_num <= 2 && hit_priority > 0 || attack == AT_JAB && hbox_num == 10 && hitbox_timer < 90)){
        gpu_set_fog(1, get_player_hud_color(player), 0, 1);
    	draw_sprite_ext(sprite_index, image_index, x+2, y+2, spr_dir, 1, proj_angle, c_white, 1);
    	draw_sprite_ext(sprite_index, image_index, x-2, y+2, spr_dir, 1, proj_angle, c_white, 1);
    	draw_sprite_ext(sprite_index, image_index, x-2, y-2, spr_dir, 1, proj_angle, c_white, 1);
    	draw_sprite_ext(sprite_index, image_index, x+2, y-2, spr_dir, 1, proj_angle, c_white, 1);
    	gpu_set_fog(false, c_white, 1, 1);
    }else if(player_id == other && (attack == AT_DSPECIAL && hbox_num <= 3)){
        if(hbox_num == 1){
            draw_sprite_ext(sprite_get("playerarrow"),0,x,y-70,1,1,0,get_player_hud_color(player),1);
            draw_debug_text(x-(round(string_length(string_thousands(housemoney*100))*3.25)),y-90,string_thousands(housemoney*100));
        }else if(hbox_num == 2){
            draw_sprite_ext(sprite_get("playerarrow"),0,x,y-100,1,1,0,get_player_hud_color(player),1);
            draw_debug_text(x-(round(string_length(string_thousands(housemoney*100))*3.25)),y-120,string_thousands(housemoney*100));
        }else if(hbox_num == 3){
            draw_sprite_ext(sprite_get("playerarrow"),0,x,y-140,1,1,0,get_player_hud_color(player),1);
            draw_debug_text(x-(round(string_length(string_thousands(housemoney*100))*3.25)),y-160,string_thousands(housemoney*100));
        }
    }
}

#define string_thousands    
///Returns argument0 as a string with commas at every thousand digit
///eg 1234567890 becomes 1,234,567,890
///Created by Andrew McCluskey

var str,stl,rtn,place;

str=string(floor(real(argument0))) //String to be passed
stl=string_length(str) //Char length of that string
rtn="" //What to return (ignored if string is under four digits long)

if stl<=3
{
    return str;
}

else
{
    place=((stl-1) mod 3)+1;
   
    rtn+=string_copy(str,1,place)
   
    while(place<string_length(str))
    {
        rtn+=","
        rtn+=string_copy(str,place+1,3)
        place+=3
    }
   
    return rtn;
}
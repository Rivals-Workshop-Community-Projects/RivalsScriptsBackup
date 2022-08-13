muno_event_type = 4;
user_event(14);

if (attack == AT_USPECIAL){
    if(window >= 21 && window < 25){
        if(jaildice1 == 0){
            draw_sprite_ext(sprite_get("dice_icon"), jaildice1, x-23, y-135, 2, 2, 0, c_black, 0.6);
        }else if(jaildiceattempts < 3 || jaildiceattempts >= 100){
            draw_sprite_ext(sprite_get("dice_icon"), jaildice1-1, x-23, y-135, 2, 2, 0, c_white, 1);
        }else{
            draw_sprite_ext(sprite_get("dice_icon"), jaildice1-1, x-23, y-135, 2, 2, 0, c_red, 0.6);
        }
        if(jaildice2 == 0){
            draw_sprite_ext(sprite_get("dice_icon"), jaildice2, x+4, y-135, 2, 2, 0, c_black, 0.6);
        }else if(jaildiceattempts < 3 || jaildiceattempts >= 100){
            draw_sprite_ext(sprite_get("dice_icon"), jaildice2-1, x+4, y-135, 2, 2, 0, c_white, 1);
        }else{
            draw_sprite_ext(sprite_get("dice_icon"), jaildice2-1, x+4, y-135, 2, 2, 0, c_red, 0.6);
        }
        
        if(/*free || !free && */jaildiceattempts >= 3){
            if(current_money >= jailcost){
                draw_debug_text(x-(round(string_length(string_thousands(jailcost*100))*3.25)),y-110,string_thousands(jailcost*100));
                //draw_sprite_ext(sprite_get("playerarrow"),0,x,y-96,1,1,0,get_player_hud_color(player),1);
            }else{
                draw_text_color(x-(round(string_length(string_thousands(jailcost*100))*3.25)),y-110,string_thousands(jailcost*100), c_red, c_red, c_red, c_red, 1);
            }
        }
        
        if(!jailcard){
            //draw_sprite_ext(sprite_get("jailcard_icon"), 1, x-24, y-170, 2, 2, 0, c_black, 0.6);
        }else{
            draw_sprite_ext(sprite_get("jailcard_icon"), 1, x-24, y-170, 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("playerarrow"),1,x,y-174,1,1,0,get_player_hud_color(player),1);
        }
    }
}

/*with(pHitBox){
    if(player_id == other && (attack == AT_DSPECIAL && hbox_num <= 3)){
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
}*/

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
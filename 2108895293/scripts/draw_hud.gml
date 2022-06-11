
if (variable_instance_exists(id,"phone_disable")){
	if (!phone_disable){
		if (phone_manual_init >= 1){
			user_event(11);
		}
	}
}


//beta display
/*
draw_set_halign(fa_left);
draw_set_font(asset_get("fName"));
draw_set_alpha(0.4);
draw_rectangle_colour(temp_x+2, temp_y-17, temp_x+126, temp_y-4, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_text_ext_transformed_colour(temp_x+10, temp_y-16, "Lumina Beta v.D", 30, 400, 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 0.5);
*/

//kart time disclaimer thingy
/*if (variable_instance_exists(obj_stage_main, "item_leader_time_height")){
	draw_set_font(asset_get("fName"));
	var cla = c_white
	var clb = c_orange
	draw_text_ext_transformed_colour(temp_x+200, temp_y-38, "*", 1, 400, 1, 1, 0, cla, cla, clb, clb, 1);
}*/

if (variable_instance_exists(id,"active")){if(active){
	sound_stop(sound_get("sfx_321"));draw_set_alpha(1);draw_rectangle_colour(-100,-100,25600,25600,0,0,0,0,false);
	if (true){for(var z=0;z<12;z+=1){
		for(var zz=0;zz<=5;zz+=1){tt=tt+((zz==0)?l1:(zz==1)?l2:(zz==2)?l3:(zz==3)?l4:(zz==4)?l5:" ");print(tt);}
	draw_set_halign(fa_left);
	}repeat(5000){}tc++}else{sound_stop(sound_get("ae_4"));active=true;print("")};set_view_position( 0, 0 )
	draw_set_font(asset_get("fName"));draw_text_ext_transformed_colour(14,0,tt,14,view_get_wview(),1,1,0,255,255,255,255,1);draw_set_alpha(0);suppress_stage_music(false,true);
	pc++;if((pc>2&&pd==0)||tc>=100){si=true;for(var ll=0;ll==0;ll=0){ll=0}pc=0;pd=1;}if(pd==1){pc=0;}
}}

//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
              draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);
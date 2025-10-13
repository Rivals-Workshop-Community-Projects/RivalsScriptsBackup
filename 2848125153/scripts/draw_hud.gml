if ("diceluck" not in self) exit;

draw_set_alpha(1)

shader_start();

if(current_money < 1000000){
	draw_sprite_ext(sprite_get("moneymoneymoney"), 0, temp_x - 2, temp_y - 26, 2, 2, 0, get_player_hud_color(player), 1);
}else if(current_money < 10000000){
	draw_sprite_ext(sprite_get("moneymoneymoney"), 1, temp_x - 2, temp_y - 26, 2, 2, 0, get_player_hud_color(player), 1);
}else{
	draw_sprite_ext(sprite_get("moneymoneymoney"), 2, temp_x - 2, temp_y - 26, 2, 2, 0, get_player_hud_color(player), 1);
}
//draw_debug_text(temp_x+40,temp_y-14,string(round(current_money*100)));
draw_debug_text(temp_x+40,temp_y-14,string_thousands(current_money*100));

if(instance_exists(thedice1) || dicecooldown > 0){
	draw_sprite_ext(sprite_get("dice_icon"), 0, temp_x + 170, temp_y - 12, 2, 2, 0, c_black, 0.3);
	if(dicecooldown > 0){
		draw_sprite_ext(sprite_get("dice_icon"), 0, temp_x + 170, temp_y - 12, 2, 2, 0, c_red, 0.3);
	}
}else{
	draw_sprite_ext(sprite_get("dice_icon"), 0, temp_x + 170, temp_y - 12, 2, 2, 0, c_white, 1);
}
if(instance_exists(thedice2) || dicecooldown > 0){
	draw_sprite_ext(sprite_get("dice_icon"), 1, temp_x + 190, temp_y - 12, 2, 2, 0, c_black, 0.3);
	if(dicecooldown > 0){
		draw_sprite_ext(sprite_get("dice_icon"), 1, temp_x + 190, temp_y - 12, 2, 2, 0, c_red, 0.3);
	}
}else{
    draw_sprite_ext(sprite_get("dice_icon"), 1, temp_x + 190, temp_y - 12, 2, 2, 0, c_white, 1);
}

if(instance_exists(thetoken) || tokencooldown > 0 || current_money < 1000){
	draw_sprite_ext(sprite_get("token_icon"), 0, temp_x + 164, temp_y - 46, 2, 2, 0, c_black, 0.3);
	if(tokencooldown > 0){
		draw_sprite_ext(sprite_get("token_icon"), 0, temp_x + 164, temp_y - 46, 2, 2, 0, c_red, 0.3);
	}
}else{
	draw_sprite_ext(sprite_get("token_icon"), 0, temp_x + 164, temp_y - 46, 2, 2, 0, c_white, 1);
}

if(!jailcard){
	draw_sprite_ext(sprite_get("jailcard_icon"), 0, temp_x + 70, temp_y - 62, 2, 2, 0, c_black, 0.3);
}else{
    draw_sprite_ext(sprite_get("jailcard_icon"), 0, temp_x + 70, temp_y - 62, 2, 2, 0, c_white, 1);
}

if(move_cooldown[AT_DATTACK] > 0){
	draw_sprite_ext(sprite_get("choochoo_icon"), 0, temp_x + 124, temp_y - 28, 2, 2, 0, c_black, 0.3);
}else{
	draw_sprite_ext(sprite_get("choochoo_icon"), 0, temp_x + 124, temp_y - 28, 2, 2, 0, c_white, 1);
}

if(epic_riches <= 60){
	var offset_y = -16;
	draw_text_color(temp_x+32,temp_y-62-offset_y+(epic_riches2/epic_riches)/2,(money_diff>0?"+":"-")+string_thousands(money_diff*100), c_black, c_black, c_black, c_black, 1.0-(epic_riches/60));
	draw_text_color(temp_x+34,temp_y-60-offset_y+(epic_riches2/epic_riches)/2,(money_diff>0?"+":"-")+string_thousands(money_diff*100), c_black, c_black, c_black, c_black, 1.0-(epic_riches/60));
	draw_text_color(temp_x+30,temp_y-60-offset_y+(epic_riches2/epic_riches)/2,(money_diff>0?"+":"-")+string_thousands(money_diff*100), c_black, c_black, c_black, c_black, 1.0-(epic_riches/60));
	draw_text_color(temp_x+32,temp_y-58-offset_y+(epic_riches2/epic_riches)/2,(money_diff>0?"+":"-")+string_thousands(money_diff*100), c_black, c_black, c_black, c_black, 1.0-(epic_riches/60));
	if(money_diff > 0){ //epic riches gained
		draw_text_color(temp_x+32,temp_y-60-offset_y+(epic_riches2/epic_riches)/2,"+"+string_thousands(money_diff*100), c_yellow, c_yellow, c_yellow, c_yellow, 2.0-(epic_riches/30));
	}else if(money_diff < 0){ //cringe riches lost
		draw_text_color(temp_x+32,temp_y-60-offset_y+(epic_riches2/epic_riches)/2,"-"+string_thousands(money_diff*100), c_red, c_red, c_red, c_red, 2.0-(epic_riches/30));
	}
}

shader_end();

muno_event_type = 5;
user_event(14);
	
	
#define string_thousands    
var str,stl,rtn,place;
str=string_digits(string(floor(real(argument0))));stl=string_length(str);rtn="";
if(stl<=3)return str;else{
    place=((stl-1) mod 3)+1;
    rtn+=string_copy(str,1,place);
    while(place<string_length(str)){
        rtn+=",";
        rtn+=string_copy(str,place+1,3);
        place+=3;
    }return rtn;
}
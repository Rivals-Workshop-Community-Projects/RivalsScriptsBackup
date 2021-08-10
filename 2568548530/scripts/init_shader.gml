//

//thanks to VMan_2002
if (object_index == asset_get("stage_HUD")) {
	var tstart = get_color_profile_slot_r(70, 0) //<-- set_color_profile_slot(70, 0, 0, 0, 0) in both css_draw and colors.gml
	if (tstart == 0) {
		tstart = get_gameplay_time()
		set_color_profile_slot(70, 0, get_gameplay_time(), 0, 0);
	}
	var dx = 405
	var slot = 0
	var pcount = 0
	for (var i = 1; i <= 4; i++) {
		if (i != player && is_player_on(i)) {
			slot += i < player
			pcount++
		}
	}
	dx -= (pcount * 119) - (slot * 238)
	var timer = get_gameplay_time() - tstart
	//if (room_speed > 10) room_speed -= 0.1
	//room_speed = 3
	var col = get_player_color(player)
	for (var i = 0; i <= 4; i++) {
		//if u do pure liz shading u just need a strip with each color slot in a different frame (but white, and with outlines in black in one of the frames)
		//if you don't, idk what
		//this is a workaround for the fact that shader_start() doesnt work in stage_HUD
		draw_sprite_ext(sprite_get("hud_stagesel"), i, dx, 8, 2, 2, 0, make_color_rgb(get_color_profile_slot_r(col, i), get_color_profile_slot_g(col, i), get_color_profile_slot_b(col, i)), timer < 10 ? ease_sineOut(0, 1, min((timer - 4), 5), 5) : 1)
	}
    //-> dunno how to use this recoloring tbh, so dont just draw alts manually?
	//draw_sprite_ext(sprite_get("hud_stagesel"), get_player_color(player), dx, 8, 2, 2, 0, c_white, timer < 10 ? ease_sineOut(0, 1, min((timer - 4), 5), 5) : 1)
	exit
}

/*
draw_debug_text(x, y - 100, string(window));
draw_debug_text(x, y - 80, string(window_timer));
//draw_debug_text(x, y - 150, string(random_func(0,6,true)));
//draw_debug_text(x, y - 150, string(image_index));

var rand = 999;

//if (state == PS_ATTACK_GROUND && attack == AT_FTILT && state_timer == 0)
if (state == PS_ATTACK_GROUND && attack == AT_FTILT && window == 1 && window_timer == 0)
{
    rand = random_func(0,6,true);
}

draw_debug_text(x, y - 200, string(rand));*/




//test each color to another one

/*
  
//orange overlaps with yellow, so needs extra shade slot...
if(left == "red")
{
    set_character_color_slot(6, 255, 163, 0, 1);
    set_character_color_slot(7, 173, 78, 26, 1);
}
else
{
    set_character_color_slot(6, 224, 60, 40, 1);
    set_character_color_slot(7, 135, 22, 70, 1);
}

//yellow overlaps with orange, so needs extra shade slot...
if(left == "red")
{    
    set_character_color_slot(3, 255, 240, 36, 1);
    set_character_color_slot(1, 246, 143, 55, 1);
}
else
{
    set_character_color_slot(3, 224, 60, 40, 1);
    set_character_color_slot(1, 135, 22, 70, 1);
}

//green works
if(left == "red")
    set_character_color_slot( 4, 0, 231, 86, 1);
else
    set_character_color_slot(4, 224, 60, 40, 1);
     
//red works
if(left == "red")
    set_character_color_slot(2, 224, 60, 40, 1);
else
    set_character_color_slot(2, 255, 163, 0, 1);
    
//white works, but not with blue shade
if(left == "red")
    set_character_color_slot(0, 255, 241, 232, 1);
else
    set_character_color_slot(0, 224, 60, 40, 1);
    
//blue works, but shade also changes... not bad though? just darker shade?
if(left == "red")
    set_character_color_slot(5, 41, 173, 255, 1);
else
    set_character_color_slot(5, 224, 60, 40, 1);
*/
    
   
   
/*
if(left == "red")
    set_character_color_slot(0, 252, 253, 255, 1);
else
    set_character_color_slot(0, 0, 231, 86, 1);
*/



/**/

//not in selection screen
if(variable_instance_exists(self, "spr_dir"))
{
    //white becomes x
    colorSide(front, 0, false);
    //red becomes x
    colorSide(left, 2, false);
    //yellow becomes x
    colorSide(back, 3, false);
    //green becomes x
    colorSide(top, 4, false);
    //blue becomes x
    colorSide(bot, 5, false);
    //orange becomes x
    colorSide(right, 6, false);
    
    if(!instance_exists(pieceArticle))
    {
        //white becomes x
        colorSide(frontArtic, 0, true);
        //red becomes x
        colorSide(leftArtic, 2, true);
        //yellow becomes x
        colorSide(backArtic, 3, true);
        //green becomes x
        colorSide(topArtic, 4, true);
        //blue becomes x
        colorSide(botArtic, 5, true);
        //orange becomes x
        colorSide(rightArtic, 6, true);
    }
}

#define colorSide(side, colorSlot, artic)
if(side == "white")
{
    if(artic)
        set_article_color_slot(colorSlot, white[0], white[1], white[2], 1);
    else
        set_character_color_slot(colorSlot, white[0], white[1], white[2], 1);
}
if(side == "yellow")
{
    if(artic)
        set_article_color_slot(colorSlot, yellow[0], yellow[1], yellow[2], 1);
    else
        set_character_color_slot(colorSlot, yellow[0], yellow[1], yellow[2], 1);
}
if(side == "orange")
{
    if(artic)
        set_article_color_slot(colorSlot, orange[0], orange[1], orange[2], 1);
    else
        set_character_color_slot(colorSlot, orange[0], orange[1], orange[2], 1);
}
if(side == "green")
{
    if(artic)
        set_article_color_slot(colorSlot, green[0], green[1], green[2], 1);
    else
        set_character_color_slot(colorSlot, green[0], green[1], green[2], 1);
}
if(side == "red")
{
    if(artic)
        set_article_color_slot(colorSlot, red[0], red[1], red[2], 1);
    else
        set_character_color_slot(colorSlot, red[0], red[1], red[2], 1);
}
if(side == "blue")
{
    if(artic)
        set_article_color_slot(colorSlot, blue[0], blue[1], blue[2], 1);
    else
        set_character_color_slot(colorSlot, blue[0], blue[1], blue[2], 1);
}

if(colorSlot == 0)//do shade swap for white
{
    shadeSide(side, 1, artic);
}
if(colorSlot == 3)//do shade swap for yellow
{
    shadeSide(side, 7, artic);
}
/*
if(colorSlot == 6)//do shade swap for orange
{
    shadeSide(side, 7);
}
*/


#define shadeSide(side, shadeSlot, artic)
if(side == "white")
{
    if(artic)
        set_article_color_slot(shadeSlot, whiteS[0], whiteS[1], whiteS[2], 1);
    else
        set_character_color_slot(shadeSlot, whiteS[0], whiteS[1], whiteS[2], 1);
}
if(side == "yellow")
{
    if(artic)
        set_article_color_slot(shadeSlot, yellowS[0], yellowS[1], yellowS[2], 1);
    else
        set_character_color_slot(shadeSlot, yellowS[0], yellowS[1], yellowS[2], 1);
}
if(side == "orange")
{
    if(artic)
        set_article_color_slot(shadeSlot, orangeS[0], orangeS[1], orangeS[2], 1);
    else
        set_character_color_slot(shadeSlot, orangeS[0], orangeS[1], orangeS[2], 1);
}
if(side == "green")
{
    if(artic)
        set_article_color_slot(shadeSlot, greenS[0], greenS[1], greenS[2], 1);
    else
        set_character_color_slot(shadeSlot, greenS[0], greenS[1], greenS[2], 1);
}
if(side == "red")
{
    if(artic)
        set_article_color_slot(shadeSlot, redS[0], redS[1], redS[2], 1);
    else
        set_character_color_slot(shadeSlot, redS[0], redS[1], redS[2], 1);
}
if(side == "blue")
{
    if(artic)
        set_article_color_slot(shadeSlot, blueS[0], blueS[1], blueS[2], 1);
    else
        set_character_color_slot(shadeSlot, blueS[0], blueS[1], blueS[2], 1);
}
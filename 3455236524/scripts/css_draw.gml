cpu_hover_update();

//voice button

var voice_button_pos = 
[
    x + voice_button_x,
    y + voice_button_y,
    x + voice_button_x+30,
    y + voice_button_y+26,
]

if get_synced_var(player) > 2 {
	set_synced_var( player, 0)
}

var voice_button_index = voice_button*3;

cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);

if (cursor_x > voice_button_pos[0] && cursor_x < voice_button_pos[2] && cursor_y > voice_button_pos[1] && cursor_y < voice_button_pos[3] && !instance_exists(oTestPlayer))
{
   voice_button_index++;
}

set_synced_var( player, voice_button)
voice_button = get_synced_var(player)
draw_sprite_ext(sprite_get("cssvoice_button"), voice_button_index, voice_button_pos[0], voice_button_pos[1], 1, 1, 0, -1, 1);
cpu_hover_draw(); 

var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "1.0"
image_alpha = max(image_alpha-0.02, 0);

var alt_new = get_player_color(player);
if (!"offset" in self) offset = 0;
else offset/=1.4;
if (!"textLen" in self) textLen = 2;

if (!"currAlt" in self)
{
	image_alpha = 3;
	currAlt = alt_new;
}
else if (alt_new != currAlt)
{
	image_alpha = 1.5;
	offset = sign(alt_new - currAlt)*16;
	currAlt = alt_new;
	if (currAlt%2 = 0) sound_play(sound_get("uspecial_bongo_left"))
	else sound_play(sound_get("uspecial_bongo_right"))
}

alt_name[0]  = "Cool 'n' Hip Kong";
alt_name[1]  = "Seafoam Soarer";
alt_name[2]  = "Biplane Breaker";
alt_name[3]  = "Mechanic Extraordinaire";
alt_name[4]  = "Danger Dealer";
alt_name[5]  = "Spiritual Surfer";
alt_name[6]  = "Leader of the Bunch";
alt_name[7]  = "Longarm Joker";
alt_name[8]  = "Frostbite Usurper";
alt_name[9]  = "Desert Drifter";
alt_name[10]  = "Greedy Glutton";
alt_name[11]  = "Dimond Taxi";
alt_name[12]  = "Puzzle Hunter";
alt_name[13]  = "Wulfamania Hypeman";
alt_name[14]  = "Bay Area Sunrise";
alt_name[15]  = "Man of Mystery";
alt_name[16]  = "Global Saturation";
alt_name[17]  = "Extreme Stream";
alt_name[18]  = "Arm of Freedom";
alt_name[19]  = "Hot Spring Sage";
alt_name[20]  = "Whirlwind Warrior";
alt_name[21]  = "Billiard Biker";
alt_name[22]  = "Boardwalk Boss";
alt_name[23]  = "Wave Breaker";
alt_name[24]  = "Metallic Muscle";
alt_name[25]  = "Smokescreen Bruiser";
alt_name[26]  = "Sparking Spiker";
alt_name[27]  = "Delta Strider";
alt_name[28]  = "Shocking Sharpshooter";
alt_name[29]  = "Horizon Vapor";
alt_name[30]  = "Pretty and Pink";
alt_name[31]  = "So Retro!";
//draw_sprite_ext(sprite_get("logo"),currAlt,temp_x + 166,temp_y + 67,1,1,0,c_white,1); // logooooooooooooo (check Luka characters for how to use this lol)

var numAlts = array_length(alt_name);

draw_set_halign(fa_left);

gpu_set_blendmode(bm_add)
var lol;
lol = 20

var red1 = get_color_profile_slot_r(get_player_color( player ), 2);
var green1 = get_color_profile_slot_g(get_player_color( player ), 2);
var blue1 = get_color_profile_slot_b(get_player_color( player ), 2);
var colourrrrr = make_colour_rgb(red1, green1, blue1)

red1 = get_color_profile_slot_r(get_player_color( player ), 4);
green1 = get_color_profile_slot_g(get_player_color( player ), 4);
blue1 = get_color_profile_slot_b(get_player_color( player ), 4);
var colourrrrr2 = make_colour_rgb(red1, green1, blue1)

bigRect(temp_x, temp_y + 92, temp_x + textLen + min(image_alpha,1) * 16 + lol, temp_y + 110, colourrrrr, (image_alpha)/2);
bigRect(temp_x + 2, temp_y + 94, temp_x + textLen + min(image_alpha,1) * 16 + lol + 2, temp_y + 112, colourrrrr2, (image_alpha)/2);
gpu_set_blendmode(bm_normal);

if (currAlt != 0)			textDraw(temp_x + 2 + min(image_alpha,1) * 8 + ((max(image_alpha*2,2.5)-1)*5)-6, temp_y + 76 + offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt-1]);
textLen =		 (textLen + textDraw(temp_x + 2 + min(image_alpha,1) * 16 + ((max(image_alpha*2,2.5)-1)*6)-8, temp_y + 96 + offset, "fName", c_white, 0, 1000, 1, true, image_alpha, alt_name[currAlt]))/2;
if (currAlt != numAlts-1)	textDraw(temp_x + 2 + min(image_alpha,1) * 8 + ((max(image_alpha*2,2.5)-1)*5)-6, temp_y + 116 + offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt+1]);


shader_end()


draw_set_halign(fa_left);

init_shader();



#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if (argument[7]) // outline. doesn't work
{
    for (i = -1; i < 2; ++i)
	{
        for (j = -1; j < 2; ++j)
		{
			if (argument[8] > 0)
				draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, argument[8]);
        }
    }
}

if (argument[8] > 0)
	draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

#define RectDraw(x1, y1, x2, y2, color, alpha)

draw_set_alpha(argument[5])
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1)
#define bigRect(x1,y1,x2,y2,color,alpha)
//x1,y1 - topleft

var x1, y1, x2, y2, color;
x1 = argument[0]
y1 = argument[1]
x2 = argument[2]
y2 = argument[3]
color = argument[4]
alpha = argument[5]

draw_primitive_begin(pr_trianglestrip)
draw_vertex_color(x1,y2,color,alpha)
draw_vertex_color(x2,y2,color,0)
draw_vertex_color(x1,y1,color,alpha)
draw_vertex_color(x2,y1,color,0)
draw_primitive_end()

#define cpu_hover_draw()
if (cpu_hover_time > 0) {
    var prog = min(cpu_hover_time/10, 1);
    var colprog = min(cpu_color_swap_time/5, 1);
    var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}

set_synced_var(player, voice_button);

#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);
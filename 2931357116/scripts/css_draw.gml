//draw animated sprite
init_shader();
draw_sprite_ext(sprite_get("animated_css"), animation_timer, x+8, y+10, 2, 2, 0, c_white, 1);
animation_timer += (animation_timer < 43? 0.2: 0);

//switch to sound_get once KH sounds are added
if (animation_timer == 1){
    sound_play(asset_get("mfx_star"));
}else if (animation_timer == 5){
    sound_play(asset_get("sfx_ori_stomp_spin"));
}else if (animation_timer == 13){
    sound_play(asset_get("sfx_may_arc_five"));
}else if (animation_timer == 18){
    sound_play(asset_get("sfx_swipe_medium1"));
}else if (animation_timer == 26){
    sound_play(asset_get("sfx_shing"));
}else if (animation_timer == 36){
    sound_play(asset_get("sfx_ori_spirit_flame_hit_2"));
}else if (animation_timer == 40){
    sound_play(asset_get("sfx_bird_upspecial"));
}

//css names
var temp_x = x;
var temp_y = y;

alt_name = [
"Sora",
"Edgy Friend",
"Kindhearted" + chr(10) + "Friend",
"Roxas & Friends",
"BBS",
"Oops!" + chr(10) + "All Xehanort!",
"Party",
"FF7",
"FF10",
"TWEWY",
"THE BOUNCER",
"Anime" + chr(10) + "Swordsmen",
"Triforce" + chr(10) + "Of Heart",
"Icarus",
"Hearts of Bionis",
"Undersomething",
"Fun Gang" + chr(10) + "+ Lancer",
"Abyss",
"Drip",
"Symphonia",
"Glint of Coldsteel",
"Wildcards",
"Featuring" + chr(10) + "Dante from the" + chr(10) + "Devil May Cry" + chr(10) + "series",
"Card Game",
"Here Comes" + chr(10) + "Daredevil",
"The Wheel of Fate" + chr(10) + "is Turning",
"First Clause," + chr(10) + "Divide",
"Workshop",
"Pocket creatures",
"Warrior Of Light",
"Brasil"
];

if(alt_cur != prev_alt){
    anim_timer = 0;
    alpha_alt = 6;
}
if alpha_alt > 0 {
    alpha_alt -= 0.05;
    anim_timer++;
}
prev_alt = alt_cur;

if(alt_cur == 17) draw_sprite_ext(sprite_get("css_icons"), 2, temp_x + 174, temp_y + 108, 1, 1, 0, c_white, 1);
draw_sprite_part_ext(sprite_get("0PS_IDLE"), anim_timer * 0.15, 21, 0, 48, 42, temp_x + 8, temp_y + 34 + 20 * alpha_alt/3, 2, 2, c_white, alpha_alt);
draw_set_halign(alt_cur == 22? fa_center: fa_left);
textDraw(temp_x + (alt_cur == 22? 130: 60), temp_y + (alt_cur == 22? 99: (alt_cur == 26 || alt_cur == 25 || alt_cur == 24 || alt_cur == 5 || alt_cur == 2 || alt_cur == 5 || alt_cur == 11 || alt_cur == 12 || alt_cur == 16? 127: 141)), "fName", make_color_rgb(sora_alt[0][alt_cur][5][0], sora_alt[0][alt_cur][5][1], sora_alt[0][alt_cur][5][2]), 14, 400, 1, 1, alpha_alt, alt_name[alt_cur], c_black);


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string, outline_c)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol //now it does, you're welcome
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] +  argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
}
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
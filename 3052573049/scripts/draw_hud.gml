//hyuponia's simple music select template v1.2
//this goes in draw_hud.gml
 
//this simple system allows you to select music with Right Stick while the match is starting.
//no need to rely on random music and waiting until the music you want comes on anymore!!
 
/* the only things you have to alter */
 
 
 
var music_files, music_titles;
 
//music file name, in your /sounds folder
//if you want to keep it empty, keep the placeholder name and it will disallow selecting that music
music_files = ["music_loop", "music_loop2", "music_loop3", "music_loop4"]
 
//music name title
music_titles = ["VS Mode", "RENREN - VS: Bonus", "Battle Mode (Mario Kart DS)", "Coincentration (Mario & Sonic at the Sochi 2014 Winter Olympic Games Remix)"]
 
 
//confirmation sound to play when music has been changed
//sound_get and asset_get both works here.
var confirm_sound = sound_get("coin");
 
//title name bar position
//false for below GO, true for above GO
//change when the bar overlaps the players at intial spawn point
var music_bar_above = true;
 
//accent line color: optional
//make it match one of your stage colors for best effect
var music_line_color = make_color_rgb(180,180,180);
 
//bg color: very optional
//for if black bg is hard to see in your stage or something
var music_bg_color = make_color_rgb(0,0,0);
 
//text color: very optional
//for when you chose white bg or something
var music_txt_color = make_color_rgb(255,255,255);
 
 
 
/* below is code, don't alter unless you know what you're doing */
/* big thank you to Delta Parallax for optimizing this code (and the code above) !! */
 
if (!variable_instance_exists(id, "mus_phase"))
{
    mus_phase = 0;
    mus = 0;
    mus_timer = 0;
}
 
var placeholder_name = "MUSIC_FILE_NAME_HERE";
 
if (get_gameplay_time() <= 122 && mus_phase == 0)
{
    with (asset_get("oPlayer"))
    {
        var conditions;
        conditions = [left_stick_down, right_stick_down, up_stick_down, down_stick_down];
        for (var m = 0; m < array_length_1d(conditions); m++)
        {
            if (conditions[m] && music_files[m] != placeholder_name)
            {
                other.mus = m;
                other.mus_phase = 1;
                break;
            }
        }
    }
    
    if (mus_phase == 1)
    {
        sound_play(confirm_sound)
    }
}
 
if (get_gameplay_time() > 125 && mus_phase == 1){
    music_play_file(music_files[mus]);
    mus_phase = 2;
    mus_timer = 0;
}
 
var tw1, tw2, bh, vw;
tw1 = 0;
tw2 = 0;
bh = (music_bar_above)?130:330;
vw = view_get_wview();
 
 
if (mus_phase != 0 and mus_phase != 3)
{
mus_timer++;
    tw1 = (mus_phase == 1) ? ease_quartOut(0, 1, clamp(mus_timer,0,40), 40) : ease_quartIn(1, 0, clamp(mus_timer,0,30), 30);
    tw2 = (mus_phase == 1) ? ease_quartOut(0, 30, clamp(mus_timer,0,40), 40) : ease_quartIn(30, 60, clamp(mus_timer,0,30), 30);
    draw_set_alpha(tw1/2);
    draw_rectangle_colour(0, bh, vw, bh+40, music_bg_color, music_bg_color, music_bg_color, music_bg_color, false);
    draw_set_alpha(tw1);
    draw_rectangle_colour(0, bh+4, vw, bh+5, music_line_color, music_line_color, music_line_color, music_line_color, false);
        
    mus_name = music_titles[mus];
        
    draw_set_font(asset_get("fName"));
    draw_text_ext_transformed_colour(30+tw2, bh+15, "Music Selected: "+mus_name, 1, 1000, 1, 1, 0, music_txt_color, music_txt_color, music_txt_color, music_txt_color, tw1);
    draw_set_alpha(1);
    
    mus_phase = (mus_timer > 30 and mus_phase == 2) ? 3 : mus_phase;
    
}
 
//music select template end





//star stuff for aether form
if (is_aether_stage()){
    
    var score_sep = 238;

    var xx = view_get_wview()/2;
    var yy = 30;
    draw_set_font(asset_get("roaLBLFont"));
    draw_set_halign(fa_center)
    var count = 0;
    var str = "";
    
    
    //finally drawing scores
    yy = 450+points_y;
    
    var col = c_white
    var x_offset = 26;
    
    //regular scores
    if (!teams_enabled){
        for (i = 1; i < 5; i++) {
        	str = string(floor(stage_points[i]))
        	col = get_player_hud_color(i)
        	if stage_points[i] >= 0 {
        	    draw_sprite( sprite_get("hud_star"), 1, xx-((player_num-1) * (score_sep / 2))+(count * score_sep)-2 - x_offset, yy + 2);
        	    draw_sprite( sprite_get("hud_x"), 1, xx-((player_num-1) * (score_sep / 2))+(count * score_sep)-2 - 4, yy + 2);
        		draw_text_color(xx-((player_num-1) * (score_sep / 2))+(count * score_sep)-2 + x_offset, yy-2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx-((player_num-1) * (score_sep / 2))+(count * score_sep)+2 + x_offset, yy-2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx-((player_num-1) * (score_sep / 2))+(count * score_sep)-2 + x_offset, yy+2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx-((player_num-1) * (score_sep / 2))+(count * score_sep)+2 + x_offset, yy+2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx-((player_num-1) * (score_sep / 2))+(count * score_sep) + x_offset, yy, str, col,col,col,col,1)
        		count++;
        	}
        }
    }
    else{ //team scores
        xx = view_get_wview()/1.32;
    
        for (i = 1; i <= 2; i++) {
        	str = string(floor(team_points[i]))
        	if (i == 2){
            	col = 0xFA5555; //red
        	}
        	else{
        	    col = 0x5564FF; //blue
        	}
        	if team_points[i] >= 0 {
        	    draw_sprite( sprite_get("hud_star"), 1, xx-((3) * (score_sep / 2))+(count * score_sep)-2 - x_offset, yy + 2);
        	    draw_sprite( sprite_get("hud_x"), 1, xx-((3) * (score_sep / 2))+(count * score_sep)-2 - 4, yy + 2);
        		draw_text_color(xx-((3) * (score_sep / 2))+(count * score_sep)-2 + x_offset, yy-2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx-((3) * (score_sep / 2))+(count * score_sep)+2 + x_offset, yy-2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx-((3) * (score_sep / 2))+(count * score_sep)-2 + x_offset, yy+2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx-((3) * (score_sep / 2))+(count * score_sep)+2 + x_offset, yy+2, str, c_black,c_black,c_black,c_black,1)
        		draw_text_color(xx-((3) * (score_sep / 2))+(count * score_sep) + x_offset, yy, str, col,col,col,col,1)
        		count++;
        	}
        }
    }

}

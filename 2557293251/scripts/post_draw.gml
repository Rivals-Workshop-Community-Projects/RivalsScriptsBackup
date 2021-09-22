with(oPlayer)
{
    if(!clone || clones_player_id == 0 || !custom_clone)
    {
        if(clone && custom_clone)
        { print_debug("Goodbye"); exit; }   
        diag_ease = clamp(other.diag_timer-30,0,60);
        diag_ease2 = clamp(other.diag_timer-30,0,30);

        if(!variable_instance_exists(id,"diag_portrait"))
            diag_portrait=get_char_info(player,INFO_PORTRAIT)

        if(other.diag_state == 0 && other.exist_timer > 100)
        {
            if(other.diag_timer == 30)
                sound_play(asset_get("mfx_wave_complete"));

            posx = (player != other.diag_player ? view_get_xview()+280 : view_get_xview()+view_get_wview()-280);
            namex = (player != other.diag_player ? 230 : -230);
            posy = (player != other.diag_player ? floor(view_get_yview()+view_get_hview()/20)+100 : floor(view_get_yview()+view_get_hview()/2.5)+100);
            bgy = (player != other.diag_player ? 20 : 2.5);
            portraitx = (player != other.diag_player? floor(ease_expoOut( view_get_xview()-350, view_get_xview()-50, diag_ease, 60)) : floor(ease_expoOut( view_get_xview()+view_get_wview()+350, view_get_xview()+view_get_wview()+50, diag_ease , 60)));
            portraity = (player != other.diag_player? floor(view_get_yview()+view_get_hview()/20) : floor(view_get_yview()+view_get_hview()/2.5));
            portraitalpha = (other.diag_timer > 60*(4+other.diag_nrs_add) ? 1-(other.diag_timer-30-(60*(4+other.diag_nrs_add)))/30 : (other.diag_timer-30)/30);
            fontalign = (player != other.diag_player ? fa_left : fa_right);
            facealign = (player != other.diag_player ? 1 : -1);

            if(other.diag_nrs)
            {
                if(other.diag_nrs_p1 == player)
                {
                    if(other.diag_nrs_state == 0)
                        diag = other.diag_nrs_diag[0];
                    else if (other.diag_nrs_state == 2)
                        diag = other.diag_nrs_diag[2];
                }
                else
                {
                    if(other.diag_nrs_state >= 1)
                        diag = other.diag_nrs_diag[1];
                    else
                        diag = "";
                }
            }
        
            draw_sprite_ext(other.diag_text, 0, portraitx, portraity, facealign, 1, 0, get_player_hud_color( player ), portraitalpha);
            shader_start();
            draw_sprite_part_ext(diag_portrait, diag_index, 0, 0, 350, 200, portraitx, portraity, facealign, 1, c_white, portraitalpha);
            shader_end();
            textDraw(posx, posy, "fName", c_white, 15, 300, 1.5, true, portraitalpha, diag, fontalign)
            textDraw(posx-namex,floor(view_get_yview()+view_get_hview()/bgy)+185, "fName", c_white, 15, 300, 1, true, portraitalpha, diag_name , fontalign);
        }
    }
}

if(diag_fight == 0)
{
    switch(announce_pick)
    {   
        case 0: announce_diag = "STRONG IS NOT WEAK!"; break;
        case 1: announce_diag = "WHICH WAY WILL IT TURN?"; break;
        case 2: announce_diag = "FIERY SOUL FINDS A WAY!"; break;
        case 3: if(diag_alt_announce) announce_diag = "THE AETHER LOVES THE TENACITY."; else announce_diag = "THE DESTINIES CAN BE UNDOOMED!"; break;
        case 4: if(diag_alt_announce) announce_diag = "WILL THE TREE STAND TALL IN FIGHT?!"; else announce_diag = "ELEMENTS HOLD THE GIANT SECRET!"; break;
        case 5: if(diag_alt_announce) announce_diag = "LOVE OR WAR BIRDS!"; else announce_diag = "SHINE UP-STRONG IS NOT CRASH!"; break;
        case 6: if(diag_alt_announce) announce_diag = "CAN LOVE BLOOM IN THE BATTLEFIELD?"; else announce_diag = "CAN GRASS GROW BRIGHT THAN SOUL?"; break;
    }
}
if(exist_timer < 100)
{
        
    if(!diag_disable)
    {
        if(!diag_disable_announce)
            textDraw(view_get_xview()+view_get_wview()/2, view_get_yview()+(view_get_hview()/2)+100, "fName", c_white, 0, 9999, 2, 1, true, "Press Up + Taunt to disable Announcer Voice", fa_center);
        if(!diag_alt_announce)
            textDraw(view_get_xview()+view_get_wview()/2, view_get_yview()+(view_get_hview()/2)+130, "fName", c_white, 0, 9999, 2, 1, true, "Press Down + Taunt for Alt. Announcer", fa_center);
        textDraw(view_get_xview()+view_get_wview()/2, view_get_yview()+(view_get_hview()/2)+160, "fName", c_white, 0, 9999, 2, 1, true, "Press Attack+Special to disable Dialogue Buddy", fa_center);
    }
}
if(diag_fight == 1)
{
    diag_fight_timer++;
    textDraw(view_get_xview()-200+((view_get_wview())*(diag_fight_timer/80)),floor(view_get_yview()+view_get_hview()/2)-150, "fName", c_yellow, 15, 300, 5, true, 1, announce_diag, fa_right)
    textDraw(view_get_xview()+view_get_wview()-((view_get_wview())*(diag_fight_timer/80)),floor(view_get_yview()+view_get_hview()/2)+100, "fName", c_yellow, 15, 300, 5, true, 1, announce_diag, fa_left)
    if(diag_fight_timer > 200)
    { diag_fight ++; diag_fight_timer = 0;}
}
if(diag_fight == 2)
{
    diag_fight_timer++;
    if(diag_fight_timer < 30)
        textDraw(floor(view_get_xview()+view_get_wview()/2),floor(view_get_yview()+view_get_hview()/2)-50, "fName", c_yellow, 0, 9999, 20-(10*clamp(diag_fight_timer/10,0,1)), true, diag_fight_timer/10, "FIGHT", fa_center)
    else
        textDraw(floor(view_get_xview()+view_get_wview()/2),floor(view_get_yview()+view_get_hview()/2)-50, "fName", c_yellow, 0, 9999, 10-(10*clamp((diag_fight_timer-30)/10,0,1)), true, 1-(diag_fight_timer-30)/20, "FIGHT", fa_center)

    if(diag_fight_timer > 70)
        diag_fight = 3;
}

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string, align)

if(variable_instance_exists(id, "total_players") && !variable_instance_exists(id, "joy_dir"))
    if(total_players != 2)
       alpha = 0;
draw_set_font(asset_get(argument[2]));
draw_set_valign(fa_top);
draw_set_halign(align);

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

#define rectDraw(x1, y1, x2, y2, color)
draw_set_alpha(0.5);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);
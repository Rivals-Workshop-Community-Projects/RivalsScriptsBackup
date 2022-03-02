if(sfx_announcer <= 1)
{
    //DRAW SELECT UI
    draw_set_alpha((clone_comp ? 0.25 : 0.5));
    rectDraw(view_get_xview() + (view_get_wview()/5), 
            view_get_yview() + view_get_hview() / 4 - 5,
            view_get_xview() + (view_get_wview()/1.25), 
            view_get_yview() + view_get_hview() / 4 + 35, c_black);
    draw_set_alpha(1);
    draw_debug_text(view_get_xview() + ceil(view_get_wview()/2) - 60, view_get_yview() + view_get_hview() / 4 - 20, "GROOVE SELECT")
    draw_debug_text(view_get_xview() + ceil(view_get_wview()/2) - 240, view_get_yview() + view_get_hview() / 4 + 40, "Move with Directional Stick and Press ATTACK to select your groove.")
    if(get_training_cpu_action() != CPU_FIGHT)
        draw_debug_text(view_get_xview() + ceil(view_get_wview()/2) - 200, view_get_yview() + view_get_hview() / 1.5 - 30, "Taunt to learn more about the groove during practice.")
    else
        draw_debug_text(view_get_xview() + ceil(view_get_wview()/2) - 120, view_get_yview() + view_get_hview() / 1.5 - 30, "Taunt to silence the announcer.")

    for(i = 0; i < 8; i++)
        draw_sprite_ext(groove_sprite[i], 0,  view_get_xview() + (view_get_wview() / 4.6) + 70*i, view_get_yview() + view_get_hview()/4, 0.5, 0.5, 0, c_white, 1);

    with(oPlayer)
    {
        if(!custom_clone && !clone)
            draw_sprite_ext(other.groove_pick, 0,  view_get_xview() + (view_get_wview() / 4.9) + 14*player + 70*bud_groove, view_get_yview() + view_get_hview()/4, 1, 1, 0, get_player_hud_color(player), 1);
    }
}
else
{
    with(oPlayer)
    {
        if("url" in self && !clone && !custom_clone)
        {
            draw_sprite_ext(other.groove_sprite[bud_groove], 0,  view_get_xview() + (view_get_wview() / groovepos) + groove_hud_x, view_get_yview() + view_get_hview()/1.25 + groove_hud_y, 1, 1, 0, c_white, 1);
            
            //Let player know they have spark.
            if(can_spark)
            {
                if(get_gameplay_time() % 20 == 0)
                    sparxfx = spawn_hit_fx(view_get_xview() + (view_get_wview() / groovepos) + groove_hud_x + 40, view_get_yview() + view_get_hview()/1.25 + groove_hud_y + 30, 128);

                if(variable_instance_exists(id, "sparxfx") && sparxfx != -4)
                {
                    sparxfx.x = floor(view_get_xview() + (view_get_wview() / groovepos) + groove_hud_x + 40);
                    sparxfx.y = floor(view_get_yview() + view_get_hview()/1.25 + groove_hud_y + 30);
                }
            }
            else
                sparxfx = -1;
            
            //Detect if in training mode to tell more about grooves.
            if(get_training_cpu_action() != CPU_FIGHT)
            {
                if(attack == AT_TAUNT)
                {
                    switch(bud_groove)
                    {
                        case 0:
                            groovetext = "No Gameplay Changes. Keeps standard Rivals of Aether style of gameplay.";
                            groovetext2 = "Really?";
                            break;
                        case 1:
                            groovetext = "Brawlhalla. Dashing will now go into walking after startup. Increased walk speed. Gains access to ";
                            groovetext2 = "performing Attacks/Strongs while in neutral airdodge. Grounded attacks can now slide off stage.";
                            break;
                        case 2:
                            groovetext = "Slap City. Airdodge now goes into pratfall. Clutch has been added. Aerial Strong can be accessed by pressing Strong.";
                            groovetext2 = "Pressing taunt when performing a special move will cause it to flip and prevents you from doing Aerial Strong.";
                            break;
                        case 3:
                            groovetext = "Slayers For Hire. Airdodge is replaced with an air-dash.";
                            groovetext2 = "Rolls cover a shorter distance, but keeps you looking in the same direction.";
                            break;
                        case 4:
                            groovetext = "Rushdown Revolt. Airdodge is replaced with an air-dash. Rolls are replaced by Wavedashes";
                            groovetext2 = "Strongs are replaced by chargable aerials/tilts. Gains spark on hit. Spark can be used to cancel attacks into dodges.";
                            break;
                        case 5:
                            groovetext = "Earth Romancer. Dashing and Jumping is now invulnerable to projectiles.";
                            groovetext2 = "Airdodge has been turned into a custom action (default is a shorthop), can only wavedash while near ground";
                            break;
                        case 6:
                            groovetext = "Smash 64. Increased hitstun for you and opponent. Hitstun gravity reduced.";
                            groovetext2 = "Opponent cannot tech on walls.";
                            break;
                        case 7:
                            groovetext = "Smash 4. Airdodge keeps momentum. Rage starts developing at 30% and ends at 150%";
                            groovetext2 = "Max rage increases KnockBack by 1.15x. Reduced Dash-Dance";
                            break;
                    }
                    draw_set_halign(fa_left);
                    draw_set_valign(fa_top);
                    draw_debug_text(floor(view_get_xview() + 20), floor(view_get_yview() + view_get_hview() / 6 - 20), other.groove_name[bud_groove]);
                    draw_debug_text(floor(view_get_xview() + 20), floor(view_get_yview() + view_get_hview() / 6), groovetext);
                    draw_debug_text(floor(view_get_xview() + 20), floor(view_get_yview() + view_get_hview() / 6 + 20), groovetext2);
                }
            }
        }
    }
}

#define rectDraw(x1, y1, x2, y2, color)
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
if(get_match_setting(SET_HITBOX_VIS)){
    with (pHitBox)
    {
        if player_id = other.id 
        {
          if (attack == AT_FSPECIAL && hbox_num == 1 && player_id.window == 4 && player_id.window_timer < 4)
          {
             with player_id
                    {
                        draw_sprite_ext(sprite_get("fspec_boom_visualizer"),0, other.x, other.y, spr_dir , 1 , 0 , c_white, 0.5 );
                    }
          }
          
          if (attack == AT_NSPECIAL && hbox_num == 2 && player_id.window == 3 && player_id.window_timer < 7 && player_id.window_timer > 3)
          {
             with player_id
                    {
                        draw_sprite_ext(sprite_get("nspec_star_visualizer"),0, other.x, other.y, spr_dir , 1 , 0 , c_white, 1 );
                    }
          }
        }
    }
}

//chains
//do stuff for every attack with the chains, to customize chain placement and also cuz they have different windows and window lengths
if (state == PS_ATTACK_GROUND && attack == AT_FSTRONG)
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (4)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-17 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_front"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_GROUND && attack == AT_DSTRONG)
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (6)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-15 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_front"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_GROUND && attack == AT_USTRONG)
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (4)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-17 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_front"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_AIR && attack == AT_FAIR)
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (3)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-14 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_front"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_GROUND && attack == AT_NSPECIAL || state == PS_ATTACK_AIR && attack == AT_NSPECIAL )
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (4)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-20 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_front"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_AIR && attack == AT_NAIR )
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (4)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-20 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_front"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}




//no.
if (get_gameplay_time() == 3 && nothanks = true) {
    print("This is LITERALLY none of your business.");
}

if (get_gameplay_time() == 50 && nothanks = true) {
    sound_play(sound_get("jerma"));
}

if nothanks && get_gameplay_time() <= 160 {
    draw_debug_text(x - 30,y-100,"Uhh... how about no?")
}


if hijay == 1 {
    draw_debug_text(x - 30,y-100,"hi jay :D")
}


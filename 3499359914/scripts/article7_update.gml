//Change Parallax with Height

var chomp_start = get_marker_y(2);
var chomp_end = get_stage_data(SD_TOP_BLASTZONE_Y);

var par_x_init = get_bg_data( 4, BG_LAYER_PARALLAX_X );
var par_y_init = get_bg_data( 4, BG_LAYER_PARALLAX_Y );

var depth_bg = 32
var depth_fg = 0

var grow_scale = ease_linear(0, 2, y-chomp_start, chomp_end-chomp_start);
var parallax_scale = ease_linear(-1, 0, y-chomp_start, chomp_end-chomp_start);


switch(state){
    
    case 0: //Ascending
    
    img_cur = 0;
    depth = depth_bg;
    
    vsp = -9;
    //vsp = -8;
    
    //Make the Chomp grow with height
    
    img_scale = clamp(grow_scale, 0, 2);
    
    parallax_x = par_x_init*parallax_scale;
    parallax_y = par_y_init*parallax_scale;
    
    //Transition to Descending
    
    if y <= chomp_end{
        state_timer++;
        
        if state_timer >= chomp_fall_delay{
            state_timer = 0;
            state = 1;
            y = chomp_end;
            sound_play(sound_get("chomp_bark"));
        }
    }
    
    break;
    
    case 1: //Descending
    
    img_cur = 1;
    depth = depth_fg;
    
    parallax_x = 0;
    parallax_y = 0;
    
    vsp = 24;
    
    //Hitbox Shit
    if chomp_hitbox == noone{
        chomp_hitbox = create_hitbox(AT_JAB, 2, x, y);
    }
    else{
        with(chomp_hitbox){
            x = other.x;
            y = other.y;
            my_chompID = other;
            length++;
            
            if other.hitstop == 0{
                hsp = other.hsp;
                vsp = other.vsp;
            }
            else{
                hsp = 0;
                vsp = 0;
            }
            if was_parried{
                other.chomp_parried = true;
            }
            
        }
    }
    
    //Chomp can get parried
    if chomp_parried{
        state_timer = 0;
        state = 2;
        vsp = -12;
        chomp_fall_dir = (2*(random_func(y mod 24, 2, true)))-1;
        sound_play(sound_get("chomp_parried"));
    }
    
    break;
    
    case 2: //Parried
    
    img_cur = 2;
    
    hsp = 3*chomp_fall_dir;
    vsp += grav;
    img_rot -= 3*chomp_fall_dir;
    
    break;
    
}

//Destroy once below blast zone
if y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) + 64{
    instance_destroy();
}
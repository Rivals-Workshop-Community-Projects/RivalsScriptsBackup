// article_update


if (free = 1 && state != PS_HITSTUN){
vsp = vsp + 1;
}

if (free = 1 && state = PS_HITSTUN){
vsp = vsp + 0.75;
}

if (y > room_height + 100){
    player_id.frog_exists = 0;
    player_id.frog_deathtimer = 480;
    sound_play(sound_get("bonby_frog_sd"));
    shake_camera(4, 8);
    instance_destroy();
}

switch(state){
    
    //Idle
    case PS_IDLE:
            sprite_index = sprite_get("frog_idle");  
        image_index = state_timer / 4;
        if (player_id.attack == AT_NSPECIAL_2 && player_id.window = 1 && player_id.window_timer = 3 && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR)){
            state = PS_ATTACK_GROUND;
            state_timer = 0;
        }
        if (player_id.attack == 48 && player_id.window = 2 && player_id.window_timer = 1 && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR)){
            state = PS_JUMPSQUAT;
            state_timer = 0;
        }        
        if free = 1{
            state = PS_IDLE_AIR;
            state_timer = 0;
        }
        break;
        
    //Falling
    case PS_IDLE_AIR:
        sprite_index = sprite_get("frog_idle_air");
        image_index = state_timer / 4;
        if free = 0{
            hsp = 0;
            sound_play(sound_get("bonby_frog_land"))
            state = PS_LAND;
            state_timer = 0;
        }
    break;  
    
    //Landing
    case PS_LAND:
        sprite_index = sprite_get("frog_land");
        image_index = state_timer / 4;
        if state_timer = 10{
            state = PS_IDLE;
            state_timer = 0;
        }
        if free = 1{
            state = PS_IDLE_AIR;
            state_timer = 0;
        }        
        break;
        
    //NSpecial
    case PS_ATTACK_GROUND:
        sprite_index = sprite_get("frog_tongue");
        if state_timer = 1{
        sound_play(sound_get("bonby_frog_start"));
        if player_id.spr_dir = 1{
            spr_dir = 1;
        }
        if player_id.spr_dir = -1{
            spr_dir = -1;
        }    
        }
        if state_timer = 12{
        sound_play(sound_get("bonby_frog_tongue"));
        }        
        if state_timer < 13{
        image_index = state_timer / 6;
        }
        if state_timer > 12{
        image_index = state_timer / 4;
        }
        if state_timer = 16{
            create_hitbox(39, 1, x + (84 * spr_dir), y - 100);
        }
        if state_timer = 44{
            state = PS_IDLE;
        }
        break;
        
    //NSpecial (Grabbing Player)        
    case PS_WRAPPED:
        sprite_index = sprite_get("frog_grabbing");
        image_index = 0;
        if (frog_dspecial_pausetime < 12){
            frog_dspecial_pausetime = frog_dspecial_pausetime + 1;
        }
    if (frog_dspecial_pausetime = 1){
        shake_camera(3, 3);
    }        
    if (frog_dspecial_pausetime = 11){
        sound_play( sound_get("bonby_frog_zip"));
    }              
        with (grabbedplayer){
            free = 1;
            hitstop = 5;
            hitstun = 15;
            can_tech = false;
        var grabdir = point_direction(x, y, other.x, other.y);
        var grabspeed = 30;
        if (other.frog_dspecial_pausetime > 11){
            other.frog_dspecial_movetime = other.frog_dspecial_movetime + 1;
          x += lengthdir_x(grabspeed, grabdir);
          y += lengthdir_y(grabspeed, grabdir);
        } 
          hsp = 0;
          vsp = 0;
            fall_through = true;
        }
        if (point_distance(x, y, grabbedplayer.x, grabbedplayer.y) < 36 && frog_dspecial_pausetime > 11){
            sound_play(sound_get("bonby_frog_gulp"));
            state = PS_ATTACK_AIR;
            state_timer = 0;
        }
        if (frog_dspecial_movetime = 12){
            state = PS_ATTACK_GROUND;
            frog_dspecial_movetime = 0;
            frog_dspecial_pausetime = 0;
            state_timer = 35;
        }
        break; 
        
    //NSpecial (Spitting Grabbed Player)    
    case PS_ATTACK_AIR:
        sprite_index = sprite_get("frog_spit");  
        image_index = state_timer / 5;
        frog_dspecial_pausetime = 0;    
        if (state_timer = 14){
        sound_play(sound_get("bonby_frog_spit"));
        spittargetx = player_id.x
        spittargety = player_id.y - 48;
        }        
        if (state_timer < 15){
                    if (player_id.x > x){
            spr_dir = 1;
        }
        if (player_id.x < x){
            spr_dir = -1;
        }
        with (grabbedplayer){
            free = 1;
            set_state(PS_PRATFALL);
            hitstun = 0;
            hitpause = true;
            hitstop = 1;
            initial_invince = 2;
          x = other.x + (36 * other.spr_dir)
          y = other.y - 20;
          hsp = 0;
          vsp = 0;
        visible = false; 

        }
        }
        if (state_timer > 16 && state_timer < 21){
            shake_camera(3, 4);
        var spitdir = point_direction(grabbedplayer.x, grabbedplayer.y, spittargetx, spittargety);
        var spitspeed = 10;
        with (grabbedplayer){
        initial_invince = 0;      
            free = 1;
            hitstun = 35;
          set_state(PS_HITSTUN);  
          hsp = lengthdir_x(spitspeed, spitdir);
            vsp = lengthdir_y(spitspeed, spitdir) - 7.5;
          visible = true;
        }
        }      
        
        if (state_timer = 21){
        grabbedplayer = 0;
        }

        if (state_timer = 34){
        state = PS_IDLE;
        state_timer = 0;
        }        
        break;
        
    //DSpecial (Jumpsquat)
    case PS_JUMPSQUAT:
        sprite_index = sprite_get("frog_land");
        image_index = 0;
        if (player_id.x > x){
            spr_dir = 1;
        }
        if (player_id.x < x){
            spr_dir = -1;
        }
        if state_timer = 5{
        state = PS_FIRST_JUMP;
        state_timer = 0;
        }
        break;  
        
    //DSpecial (Jumping)        
    case PS_FIRST_JUMP:
        sprite_index = sprite_get("frog_idle_air");
        image_index = state_timer / 4;
        if state_timer = 1{
        sound_play(sound_get("bonby_frog_jump"));
        y = y - 5;
        free = true;
        vsp = -10;
        }
if (state_timer > 0 && free = 1){
        var froghopdir = point_direction(x, y, player_id.x, player_id.y);
    var froghopspeed = 12.5;
    hsp = lengthdir_x(froghopspeed, froghopdir);
}        
        if (state_timer > 2 && free = 0){
            sound_play(sound_get("bonby_frog_land"))
            hsp = 0;
            state = PS_LAND;
            state_timer = 0;
        }
        break; 
        
    //FSpecial (Knocked Back)      
    case PS_TUMBLE:
        sprite_index = sprite_get("frog_idle_air");
        image_index = state_timer / 4;
        if state_timer = 0{
        y = y - 5;
        free = true;
        vsp = -9;
        hsp = 8 * player_id.spr_dir;     
        } 
        if (state_timer > 2 && free = 0){
            sound_play(sound_get("bonby_frog_land"))
            hsp = 0;
            state = PS_LAND;
            state_timer = 0;
        }        
        
    break;


    //Parried        
    case PS_HITSTUN:
        sprite_index = sprite_get("frog_parried");
        image_index = state_timer / 4;
        depth = -10;
        can_be_grounded = false;
        ignores_walls = true;
        if (state_timer = 1){
            vsp = -10;
            hsp = -3 * spr_dir;
        }
    break;
   
}

state_timer++;
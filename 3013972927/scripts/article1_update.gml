//article1_update.gml
//this script mirrors the player's update.gml, and where the bulk of the code for the article goes to
// Assist state


state_timer ++; //always count up state_timer (in this case since there's no states it can be used as a "lifetime timer")
hitpause = player_id.hitpause;
game_time = get_gameplay_time();
beat_hit_speed = 3;

find_spr_dir();

if(window_timer >= 0 )
{
    switch(assist_index)
    {
    ///////////////////////////////////////////
        case 0: // Peppermint 
        {
            switch(state)
            {
                case 0: // Spawn Anim
                    {
                        sprite_index = sprite_strip[0];
                         last_window = 2;
                         
                        switch(window) {
                            case 1: // startup
                            window_length = 7;
                            anim_frame_start = 0;
                            anim_frames = 4;
                            break;
                            
                            case 2: // Spawn in
                            window_length = 7;
                            anim_frame_start = 4;
                            anim_frames = 3;
                            break;
                                        }
                        break;
                        
                    }
             ///   
                case 1: // Attack Anim
                    {
                        sprite_index = sprite_strip[1];
                        
                         last_window = 4;
        
                        switch(window) {
                                case 1: // startup
                                window_length = 8;
                                anim_frame_start = 0;
                                anim_frames = 2;
                                break;
                                
                                case 2: // Attack
                                window_length = 25;
                                anim_frame_start = 2;
                                anim_frames = 5;
                                if(is_beathit)
                                {
                                    if(state_timer > 11 && state_timer < 28 && state_timer % 5 == 0)
                                    {
                                            var swing = create_hitbox(AT_DSPECIAL,2,x+(50*spr_dir), y-10);
                                            swing.spr_dir = spr_dir;
                                            swing.draw_xscale = spr_dir;
                                            swing.hsp = 27 * spr_dir;
                                            var swing2 = create_hitbox(AT_DSPECIAL,2,x+(70*spr_dir), y+(spr_dir-30));
                                            swing2.spr_dir = spr_dir;
                                            swing2.draw_xscale = spr_dir;
                                            swing2.hsp = 27 * spr_dir;
                                            sound_play(pep_atk_sfx_1[1],0,0,.3,1);

    
    
                                    }
                                }
                                else
                                {
                                    if(state_timer > 11 && state_timer < 25 && state_timer % 5 == 0)
                                    {
                                            var swing = create_hitbox(AT_DSPECIAL,2,x+(50*spr_dir), y-10);
                                            swing.spr_dir = spr_dir;
                                            swing.draw_xscale = spr_dir;
                                            swing.hsp = 23 * spr_dir;
                                            var swing2 = create_hitbox(AT_DSPECIAL,2,x+(70*spr_dir), y+(spr_dir-30));
                                            swing2.spr_dir = spr_dir;
                                            swing2.draw_xscale = spr_dir;
                                            swing2.hsp = 23 * spr_dir;
                                            sound_play(pep_atk_sfx_1[0],0,0,.3,1);
                                    }
                                }
                                break;
                                
                                case 3: // Attack
                                window_length = 25;
                                anim_frame_start = 2;
                                anim_frames = 5;
                                if(is_beathit)
                                {
                                    if(state_timer > 11 && state_timer < 28 && state_timer % 5 == 0)
                                    {
                                            var swing = create_hitbox(AT_DSPECIAL,2,x+(50*spr_dir), y-10);
                                            swing.spr_dir = spr_dir;
                                            swing.draw_xscale = spr_dir;
                                            swing.hsp = 27 * spr_dir;
                                            var swing2 = create_hitbox(AT_DSPECIAL,2,x+(70*spr_dir), y+(spr_dir-30));
                                            swing2.spr_dir = spr_dir;
                                            swing2.draw_xscale = spr_dir;
                                            swing2.hsp = 27 * spr_dir;
                                            sound_play(pep_atk_sfx_1[1],0,0,.3,1);
    
                                    }
                                }
                                else
                                {
                                    if(state_timer > 11 && state_timer < 25 && state_timer % 5 == 0)
                                    {
                                            var swing = create_hitbox(AT_DSPECIAL,2,x+(50*spr_dir), y-10);
                                            swing.spr_dir = spr_dir;
                                            swing.draw_xscale = spr_dir;
                                            swing.hsp = 23 * spr_dir;
                                            var swing2 = create_hitbox(AT_DSPECIAL,2,x+(70*spr_dir), y+(spr_dir-30));
                                            swing2.spr_dir = spr_dir;
                                            swing2.draw_xscale = spr_dir;
                                            swing2.hsp = 23 * spr_dir;
                                            sound_play(pep_atk_sfx_1[0],0,0,.3,1);
    
                                    }
                                }
                                break;
                                
                                case 4: // Endlag
                                window_length = 10;
                                anim_frame_start = 0;
                                anim_frames = 8;
                                break;
                            }
                        break;
                    }
                ///    
                case 2: // End Anim
                    {
                        sprite_index = sprite_strip[2]; 
                        last_window = 3;
                        anim_frames = 7;
                        window_length = 24;
                        
                        switch(window) {
                            case 1: // startup
                            window_length = 24;
                            anim_frame_start = 0;
                            anim_frames = 1;
                            break;
                            
                            case 2: // exit
                            window_length = 36;
                            anim_frame_start = 3;
                            anim_frames = 6;
                           //        sound_play(sound_get("chai_jump1_perfect"));
                            break;
                        }
                        
                        break;
                    }
            }
            break;
        }
     //////////////////////////////////////////////////       
        case 1: // Macaron 
        {
            switch(state)
            {
                case 0: // Spawn Anim
                    {
                        sprite_index = sprite1_strip[0];
                         last_window = 2;
                         
                        switch(window) {
                            case 1: // startup
                            window_length = 7;
                            anim_frame_start = 0;
                            anim_frames = 4;
                            break;
                            
                            case 2: // Spawn in
                            window_length = 7;
                            anim_frame_start = 4;
                            anim_frames = 3;
                            break;
                                        }
                        break;
                        
                    }
             ///   
                case 1: // Attack Anim 
                    {
                        sprite_index = sprite1_strip[1];
                        
                         last_window = 4;
        
                        switch(window) {
                                case 1: // startup
                                window_length = 11;
                                anim_frame_start = 0;
                                anim_frames = 1;
                                break;
                                
                                case 2: // Attack
                                window_length = 22;
                                anim_frame_start = 1;
                                anim_frames = 3;

                                if(state_timer == 9 && is_beathit)
                                {
                                    switch(fxindex)
                                    {
                                        case 0:
                                        sound_play(mac_atk_sfx_1[0],0,0,.3,1);
                                        break;
                                        
                                        case 1:
                                        sound_play(mac_atk_sfx_2[0],0,0,.3,1);
                                        break;
                                    }
                                    
                                }
                                break;
                                
                                case 3:
                                window_length = 16;
                                anim_frame_start = 4;
                                anim_frames = 2;
                                if(state_timer = 2)
                                {
                                        var swing = create_hitbox(AT_DSPECIAL,1,x+(50*spr_dir), y);
                                        swing.spr_dir = player_id.spr_dir;
                                        swing.draw_xscale = player_id.spr_dir
                                        sound_play(asset_get("sfx_ori_energyhit_medium"))
            					       sound_play(asset_get("sfx_blow_heavy2"))
            					       fx2 = spawn_hit_fx(x + 44*spr_dir,y - 10, 302)
            					       fx2.pause = 6
            					       fx = spawn_hit_fx(x + 54*spr_dir,y - 10, 303)
            					       fx.pause = 6
                                    
                                    if(is_beathit)
                                    {
                                    switch(fxindex)
                                    {
                                        case 0:
                                        sound_play(mac_atk_sfx_1[1],0,0,.3,1);
                                        break;
                                        
                                        case 1:
                                        sound_play(mac_atk_sfx_2[1],0,0,.3,1);
                                        break;
                                    }
                                    }

                                }
                                break;
                                
                                case 4: // Endlag
                                window_length = 10;
                                anim_frame_start = 7;
                                anim_frames = 0;
                                break;
                            }
                        break;
                    }
                ///    
                case 2: // End Anim
                    {
                        sprite_index = sprite1_strip[2]; 
                        last_window = 3;
                        anim_frames = 7;
                        window_length = 24;
                        
                        switch(window) {
                            case 1: // startup
                            window_length = 24;
                            anim_frame_start = 0;
                            anim_frames = 1;
                            break;
                            
                            case 2: // exit
                            window_length = 36;
                            anim_frame_start = 3;
                            anim_frames = 6;
                           //        sound_play(sound_get("chai_jump1_perfect"));
                            break;
                        }
                        
                        break;
                    }
            }
            break;
        }
    /////////////////////////////////////////////////    
        case 2: // Korsica
        {
            switch(state)
            {
                case 0: // Spawn Anim
                    {
                        sprite_index = sprite2_strip[0];
                         last_window = 2;
                         
                        switch(window) {
                            case 1: // startup
                            window_length = 7;
                            anim_frame_start = 0;
                            anim_frames = 4;
                            break;
                            
                            case 2: // Spawn in
                            window_length = 7;
                            anim_frame_start = 4;
                            anim_frames = 3;
                            break;
                                        }
                        break;
                        
                    }
             ///   
                case 1: // Attack Anim
                    {
                        sprite_index = sprite2_strip[1];
                        
                         last_window = 5;
        
                        switch(window) {
                                case 1: // startup
                                window_length = 12;
                                anim_frame_start = 0;
                                anim_frames = 2;
                                break;
                                
                                case 2: // Attack windup
                                window_length = 24;
                                anim_frame_start = 2;
                                anim_frames = 3;
                                break;
                                
                                case 3: // Attack launch
                                window_length = 10;
                                anim_frame_start = 5;
                                anim_frames = 4;
                                if(state_timer == 2)
                                {
                                  
                                     //   print(swing.spr_dir);
                                        var swing = create_hitbox(AT_DSPECIAL,3,x+(assist_dir), y);
                                        swing.spr_dir = spr_dir;
                                        swing.draw_xscale = spr_dir;
                                        swing.hsp = 17 * spr_dir;
                                        
                                    if(is_beathit)
                                    {
                                        switch(fxindex)
                                        {
                                            case 0:
                                            sound_play(kor_atk_sfx_1[0],0,0,.3,1);
                                            swing.hsp = 20 * spr_dir;
                                            break;
                                            
                                            case 1:
                                            sound_play(kor_atk_sfx_2[0],0,0,.3,1);
                                            swing.hsp = 20 * spr_dir;
                                            break;
                                        }
                                    }
                                    


                                }
                                break;
                                
                                case 4: // Attack launch
                                window_length = 10;
                                anim_frame_start = 5;
                                anim_frames = 4;
                                if(state_timer == 2)
                                {
                                     //   print(swing.spr_dir);
                                        var swing = create_hitbox(AT_DSPECIAL,3,x+(assist_dir), y);
                                        swing.spr_dir = spr_dir;
                                        swing.draw_xscale = spr_dir;
                                        swing.hsp = 17 * spr_dir;
                                    
                                    if(is_beathit)
                                    {
                                        switch(fxindex)
                                        {
                                            case 0:
                                            sound_play(kor_atk_sfx_1[1],0,0,.3,1);
                                            swing.hsp = 20 * spr_dir;
                                            break;
                                            
                                            case 1:
                                            sound_play(kor_atk_sfx_2[1],0,0,.3,1);
                                            swing.hsp = 20 * spr_dir;
                                            break;
                                        }
                                    }

                                }
                                break;
                                
                                case 5: // Endlag
                                window_length = 10;
                                anim_frame_start = 9;
                                anim_frames = 3;
                                break;
                            }
                        break;
                    }
                ///    
                case 2: // End Anim
                    {
                        sprite_index = sprite2_strip[2]; 
                        last_window = 3;
                        anim_frames = 7;
                        window_length = 24;
                        
                        switch(window) {
                            case 1: // startup
                            window_length = 24;
                            anim_frame_start = 0;
                            anim_frames = 1;
                            break;
                            
                            case 2: // exit
                            window_length = 36;
                            anim_frame_start = 3;
                            anim_frames = 6;
                           //        sound_play(sound_get("chai_jump1_perfect"));
                            break;
                        }
                        
                        break;
                    }
            }
            break;
        }
        
    }
        
}
    ////////////////  ////////////////  ////////////////  ////////////////  ////////////////  ////////////////
        moveAnimFrame();
      
        if(state == states_max)
        {
       instance_destroy();
        }

#define assist_selected(index_)
    switch(index_)
    {
        case 0:
            assist_index = index_;
            break;
        case 1:
            assist_index = index_;
            break;
        case 2:
            assist_index = index_;
            break;
    }
#define moveAnimFrame // animates frame
//animation that works like attack window animation
image_index = ease_linear(anim_frame_start,anim_frame_start + anim_frames, window_timer, window_length);
//window stuff

        
if window_timer >= window_length {
    if window >= last_window { //if it's the last window then die
        if(state != states_max)
        {
        state+=1;
        }
    } else { //otherwise go to next window & reset timer
        window_timer = 0;
        state_timer = 0;
        window += 1; 
        
        
    }
} else {
  //  sound_play(sound_get("chai_jump1_perfect"));
    window_timer += 1;
}

#define find_spr_dir

if(window_timer == 1) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    var assist_dir = spr_dir;
}
#define get_state_name(state)
switch (state) {
    case 0: return "SPAWN";
    case 1: return "ATTACK";
    case 2: return "DIE";
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion
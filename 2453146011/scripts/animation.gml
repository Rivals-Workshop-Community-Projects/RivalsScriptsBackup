// Animation

if(state == PS_DOUBLE_JUMP && djumps == 2) {sprite_index = sprite_get( "triplejump" ); double_jump_time = 42;}
else double_jump_time = 32;

if(state = PS_IDLE_AIR || (state == PS_DOUBLE_JUMP && state_timer > 18 && djumps == 2))
{
    sprite_index = sprite_get( "jump_alt" );
}



if abs(hud_offset) < 1 hud_offset = 0;

// Intro stuff
if (state == PS_SPAWN) {
    if (introTimer < 16 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

// IDLE TWEAKS
if(state == PS_IDLE)
{
    

    switch(idleState)
    {
        case 0:
            {
                if(image_index%8 == 0 && image_index != 0 && state_timer >10)
                {
                    idleState = (random_func(10,2,true) == 0) ? 0 : random_func(11,4,true);
                    set_state(PS_IDLE);
                }
            
            }
            break;
        case 1:
            {
                sprite_index = sprite_get("tweak1");
                
                // Sounds
                if(phone_cheats[idleSounds] ==1 ){
                    if(state_timer == 30) sound_play(sound_get("monarch_portalopen"),false,false,0.1,1.01);
                    if(state_timer == 50) sound_play(sound_get("monarch_portalopen"),false,false,0.1,1.02);
                    if(state_timer == 108) sound_play(sound_get("monarch_woosh1"),false,false,0.09,1.02);
                    if(state_timer == 133) sound_play(sound_get("monarch_woosh2"),false,false,0.09,1.02);
                    if(state_timer == 138) sound_play(sound_get("monarch_wooshspin"),false,false,0.09,1.02);
                }
                
                if(state_timer == 170)
                {
                    idleState = 0;
                    set_state(PS_IDLE);
                }
            }
            break;
        case 2:
        {
            sprite_index = sprite_get("tweak2");
            
            // Sounds
            if(phone_cheats[idleSounds] ==1 ){
                if(state_timer == 5) sound_play(sound_get("monarch_wooshspin"),false,false,0.09,1.02);
                if(state_timer == 15) sound_play(sound_get("monarch_wooshspin"),false,false,0.09,1.06);
                if(state_timer == 25) sound_play(sound_get("monarch_wooshspin"),false,false,0.08,0.95);
                if(state_timer == 35) sound_play(sound_get("monarch_wooshspin"),false,false,0.07,0.93);
            }
            
            if(state_timer == 59)
                {
                    idleState = 0;
                    set_state(PS_IDLE);
                }
        }
        break;
        case 3:
        {
            sprite_index = sprite_get("tweak3");
            
            // Sounds
            if(phone_cheats[idleSounds] ==1 ){
                if(state_timer == 5) sound_play(sound_get("monarch_wooshspin"),false,false,0.09,1.02);
                if(state_timer == 38) sound_play(sound_get("monarch_twinkle"),false,false,0.05,0.95);
                if(state_timer == 55) sound_play(sound_get("monarch_wooshspin"),false,false,0.06,1.05);
            }
            
            if(state_timer == 73)
                {
                    idleState = 0;
                    set_state(PS_IDLE);
                }
        }
        break;
    }
   
   // idleState
   // 0 - Basic Idle
   // 1 - Portal Tweak
   // 2 - Twirl Tweak
   // 3 - Pose Tweak
}
else
{
    idleState = 0;
}
//update

if ball_cooldown > 0 
{
    ball_cooldown--;
}
if !free && h >= 1
{
    h = 0;
}

if attack ==  AT_FSPECIAL
{
    if fspecial_char != noone
    {
        with fspecial_char
        {
            hitstop = 2;
            hitpause = true;
            if other.window < 4
            {
                x = floor(lerp(x,other.x+40*other.spr_dir,0.5));
                y = other.y;
            }
            if other.window == 4 
            {
                x = floor(lerp(x,other.x-30*other.spr_dir,0.5));
                y = floor(lerp(y,other.y-39,0.1));                
            }
            if other.window == 4 && other.window_timer >= 21
            {
                x = floor(lerp(x,other.x+95*other.spr_dir,0.4));
                y = other.y-30;                           
            }
            if other.window = 5 && other.window_timer > 4
            {
                other.fspecial_char = noone;
                hitstop = false;
                hitstop = 0;
            }
            
        }
    }
}

if state_cat == (SC_HITSTUN) && fspecial_char != noone
{
    fspecial_char = noone;       
}

if state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND
{
    if attack == AT_FSPECIAL && window < 4
    {
        init_shader();
        outline_color = [ 156, 18, 51 ];
        shader_end();
    }
    else if attack != AT_FSPECIAL
    {
        init_shader();
        outline_color = [ 0, 0, 0 ];
        shader_end();        
    }
}
else
{
    init_shader();
    outline_color = [ 0, 0, 0 ];
    shader_end();
}
if !free && h2 >= 1
{
    h2 = 0;
}
if jump_pressed
{
    if (state == PS_FIRST_JUMP) && (h == 0)
    {
        var jump_voice_line = random_func(0,6,true)
        switch(jump_voice_line)
        {
            case 0: sound_play(sound_get("candy_jump_a")); break;
            case 1: sound_play(sound_get("candy_jump_b")); break;
            case 2: sound_play(sound_get("candy_jump_c")); break;
            case 3: 
            case 4: 
            case 5: break;            
        }
        h+=1;
    }
    if (state == PS_DOUBLE_JUMP) && (h2 == 0)
    {
        var jump_voice_line = random_func(0,6,true)
        switch(jump_voice_line)
        {
            case 0: sound_play(sound_get("candy_jump_a")); break;
            case 1: sound_play(sound_get("candy_jump_b")); break;
            case 2: sound_play(sound_get("candy_jump_c")); break;
            case 3: 
            case 4: 
            case 5: break;
        }
        h2+=1;        
    }

}
// Opengunner: For Debuging
//print(ball_cooldown);

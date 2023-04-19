// called when the character gets KO'd

var voice_line = random_func(0,3,true)

switch(voice_line)
{
    case 0: sound_play(sound_get("candy_gethit_a")); break;
    case 1: sound_play(sound_get("candy_gethit_b")); break;
    case 2: sound_play(sound_get("candy_gethit_c")); break;
}
do_a_fair = false;

/* Opengunner: Commented out to prevent ball from going off cooldown
if !ball_exists 
{
    var stage_x = get_stage_data(SD_X_POS);
    var ball = instance_create(x,y,"obj_article1");
    ball.st = 5
    ball.stt = 0;
    if (x < stage_x)
    {
        ball.hsp+=1;
    }
    else if (x > room_width - stage_x)
    {
        ball.hsp -= 1;
    }
    ball_cooldown = 30;
}
else
{
    with (obj_article1)
    {
        if player_id == other.id
        {
            if st!= 5
            {
                st = 5;
                stt = 0;
                death_script_cooldown_flag = true;
            }
        }
    }
}
*/

if ball_exists
{
    with (obj_article1)
    {
        if player_id == other.id
        {
            if st!= 5
            {
                st = 5;
                stt = 0;
                death_script_cooldown_flag = true;
            }
        }
    }
}


if fspecial_char != noone
{
    fspecial_char = noone;   
}
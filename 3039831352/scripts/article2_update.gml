//article2_update.gml
//fs bg

anim_timer ++;

with (player_id)
{
    if (!is_attacking || attack != 49 || window > 5) //force delete article
    {
        with (other)
        {
            sound_stop(fs_sound);
            image_alpha -= alpha_fade_speed;
            if (image_alpha <= 0)
            {
                instance_destroy();
                exit;
            }
        }
    }
    else if (other.image_alpha < other.max_alpha) other.image_alpha += other.alpha_fade_speed;
}
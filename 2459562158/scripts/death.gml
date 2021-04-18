// called when the character gets KO'd

sound_play(sound_get("death"))

can_uspe = true;

with(obj_article_platform)
{
    if (player_id == other)
    {
       destroyed = true;
    }
}
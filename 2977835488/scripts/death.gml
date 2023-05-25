// ------------- death.gml -------------------
// this file runs for one frame on death
with (oPlayer)
{
    if (id != other.id and player_curse == other)
    {
        player_curse = noone;
        timer_curse = 0;
    }
}
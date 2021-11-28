//got parried

with hit_player_obj
{
    if ("croagpoison" in self)
    {
        croagpoison -= 100;
        croagpoison = clamp(croagpoison, 0, 100);
    }
}
//got parried
croagbelchcharged = false;
poison_sting_charge = 0;

with hit_player_obj
{
    if ("croagpoison" in self)
    {
        croagpoison -= 100;
        croagpoison = clamp(croagpoison, 0, 100);
    }
}
//death
croagbelchcharged = false;
poison_sting_charge = 0;

with last_player
{
    if ("croagpoison" in self)
    {
        croagpoison -= 100;
        croagpoison = clamp(croagpoison, 0, 100);
    }
}
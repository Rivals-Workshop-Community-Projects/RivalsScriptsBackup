//otherinit
croagpoison = 0;
poison_post_indicator = 0;

pseudograb = false;

var runeM = false
with other {
  runeM = has_rune("M");
}

if runeM
{
    croagpoisonovertimedamage = true
    croagpoisonovertimedamagetimer = 0;
}

if clone
{
    with clones_player_id
    {
        other.croagpoison = croagpoison;
        other.poison_post_indicator = poison_post_indicator;
    }
}

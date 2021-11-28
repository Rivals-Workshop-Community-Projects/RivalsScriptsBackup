//otherinit
croagpoison = 0;
poison_post_indicator = 0;

pseudograb = false;

if clone
{
    with clones_player_id
    {
        other.croagpoison = croagpoison;
        other.poison_post_indicator = poison_post_indicator;
    }
}

//hitbox init

if (attack == 4 && hbox_num >= 2) //D: inherit speed of Unown
{
    hsp += 0.5 * player_id.hsp;
    //correct visual ordering
    depth = player_id.depth + 8 - hbox_num;
}
else if (attack == 6 && hbox_num == 4) //F: reversed shot
{
    spr_dir = -1;
    hsp *= -1;
}
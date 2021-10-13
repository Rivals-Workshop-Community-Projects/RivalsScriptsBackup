//sd

if my_hitboxID.attack == AT_FSPECIAL
{
    if my_hitboxID.hbox_num == 4
    {
        FSpecBounce = true;
    }
    if barPoints <= 500
    {
        barPoints+=30;
        barPoints = clamp(barPoints, 0, 500)
    }
}

//fstrong hits once, make it just one big gain
if my_hitboxID.attack == AT_FSTRONG {
    if barPoints <= 500
    {
        barPoints+=120;
        barPoints = clamp(barPoints, 0, 500)
    }
}

//amd these 2 hit twice
if (my_hitboxID.attack == AT_USTRONG) || (my_hitboxID.attack == AT_DSTRONG) {
    if barPoints <= 500
    {
        barPoints+=60;
        barPoints = clamp(barPoints, 0, 500)
    }
}

if my_hitboxID.attack == AT_FAIR && ( my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 3 )
{
    hasstung = 10;
}

barPoints += my_hitboxID.damage * 3;
barPoints = clamp(barPoints, 0, 500)


// UStrong Link

if !hit_player_obj.clone and my_hitboxID.attack == AT_USTRONG_2 and my_hitboxID.hbox_num == 2
{
  hit_player_obj.x = lerp(hit_player_obj.x, x, 0.6)
  hit_player_obj.y = lerp(hit_player_obj.y, y-120, 0.6)
}


//sd

if my_hitboxID.attack == AT_FSPECIAL
{
    if my_hitboxID.hbox_num == 4
    {
        FSpecBounce = true;
    }
    if barPoints <= 500
    {
        barPoints+=25;
        barPoints = clamp(barPoints, 0, 500)
    }
}

if my_hitboxID.attack == AT_FAIR && ( my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 3 )
{
    hasstung = 10;
}

barPoints += my_hitboxID.damage * 2;
barPoints = clamp(barPoints, 0, 500)
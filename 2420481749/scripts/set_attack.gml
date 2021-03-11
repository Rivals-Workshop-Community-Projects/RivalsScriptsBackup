if (free && attack == AT_FSPECIAL) {
    attack = AT_FSPECIAL_AIR;
}

if (free && attack == AT_DSPECIAL) {
    attack = AT_DSPECIAL_AIR;
}

if (free && attack == AT_USPECIAL) {
    attack = AT_USPECIAL;
}
else { if (attack == AT_USPECIAL) {
    attack = AT_USPECIAL_GROUND; }
}

if (firevell == true && attack == AT_FSTRONG)
{
    attack = AT_FSTRONG_2;
}

if (watervell == true && attack == AT_USTRONG)
{
    attack = AT_USTRONG_2;
}

if (icevell == true && attack == AT_DSTRONG)
{
    attack = AT_DSTRONG_2;
}

if (earthvell == true && attack == AT_DSPECIAL && dspec_air = false)
{
    attack = AT_DSPECIAL_2;
}

if (thousandfold == true && attack == AT_FSPECIAL) && dontfoldarms == false
{
    attack = AT_FSPECIAL_2;
}


if (doublepowerboost == true)
{   
    set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 14);
    set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 14);
    
    set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 14);
    
    set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
    set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
    set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 4);
    
    set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 16);
    set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
    
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 20);
    
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
    set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 8);
    
    set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 12);
    
    set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
    set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
    
    set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 14);
    set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 12);
    set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 12);
    
    set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 11);
    
    set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 11);
    
    set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 16);
    set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 4);
    set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 4);
    set_hitbox_value(AT_FSPECIAL_2, 5, HG_DAMAGE, 4);
    set_hitbox_value(AT_FSPECIAL_2, 6, HG_DAMAGE, 4);
    set_hitbox_value(AT_FSPECIAL_2, 7, HG_DAMAGE, 4);
    set_hitbox_value(AT_FSPECIAL_2, 8, HG_DAMAGE, 4);
    set_hitbox_value(AT_FSPECIAL_2, 9, HG_DAMAGE, 12);
    set_hitbox_value(AT_FSPECIAL_2, 10, HG_DAMAGE, 12);
    
    set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 20);
    set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 20);
    
    set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 2);
    set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 2);
    set_hitbox_value(AT_FSTRONG_2, 3, HG_DAMAGE, 2);
    set_hitbox_value(AT_FSTRONG_2, 4, HG_DAMAGE, 8);
    set_hitbox_value(AT_FSTRONG_2, 5, HG_DAMAGE, 8);
    set_hitbox_value(AT_FSTRONG_2, 6, HG_DAMAGE, 8);
    
    set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
    set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
    set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
    set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 2);
    set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 2);
    set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 16);
    set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 8);
    
    set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 8);
    set_hitbox_value(AT_USTRONG_2, 3, HG_DAMAGE, 8);
    set_hitbox_value(AT_USTRONG_2, 4, HG_DAMAGE, 8);
    set_hitbox_value(AT_USTRONG_2, 5, HG_DAMAGE, 8);
    set_hitbox_value(AT_USTRONG_2, 6, HG_DAMAGE, 8);
    set_hitbox_value(AT_USTRONG_2, 7, HG_DAMAGE, 8);
    set_hitbox_value(AT_USTRONG_2, 8, HG_DAMAGE, 8);
    
    set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 4);
    set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 4);
    set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 6);
    
    set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 14);
    set_hitbox_value(AT_DSTRONG_2, 3, HG_DAMAGE, 14);
    set_hitbox_value(AT_DSTRONG_2, 4, HG_DAMAGE, 14);
    set_hitbox_value(AT_DSTRONG_2, 5, HG_DAMAGE, 14);
    set_hitbox_value(AT_DSTRONG_2, 6, HG_DAMAGE, 4);
    
    set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6);
    set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 6);
    set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 10);
    
    set_hitbox_value(AT_NAIR, 11, HG_DAMAGE, 12);
    set_hitbox_value(AT_NAIR, 19, HG_DAMAGE, 12);
    set_hitbox_value(AT_NAIR, 12, HG_DAMAGE, 10);
    set_hitbox_value(AT_NAIR, 18, HG_DAMAGE, 10);
    
    set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 14);
    set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 16);
    
    set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 12);
    
    set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 12);
    
    set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 14);
    
    doublepowerboostusedup = true;
}

if (doublepower_reset == true)
{
    reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_BAIR, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
    
    reset_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DATTACK, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DATTACK, 3, HG_DAMAGE);
    
    reset_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
    
    reset_hitbox_value(AT_FTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FTILT, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FTILT, 3, HG_DAMAGE);
    
    reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FAIR, 3, HG_DAMAGE);
    
    reset_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_2, 5, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_2, 6, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_2, 7, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_2, 8, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_2, 9, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_2, 10, HG_DAMAGE);
    
    reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FSTRONG_2, 3, HG_DAMAGE);
    reset_hitbox_value(AT_FSTRONG_2, 4, HG_DAMAGE);
    reset_hitbox_value(AT_FSTRONG_2, 5, HG_DAMAGE);
    reset_hitbox_value(AT_FSTRONG_2, 6, HG_DAMAGE);
    
    reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 2, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 3, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 4, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 5, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 6, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 7, HG_DAMAGE);
    
    reset_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG_2, 3, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG_2, 4, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG_2, 5, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG_2, 6, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG_2, 7, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG_2, 8, HG_DAMAGE);
    
    reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE);
    
    reset_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG_2, 3, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG_2, 4, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG_2, 5, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG_2, 6, HG_DAMAGE);
    
    reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
    reset_hitbox_value(AT_JAB, 2, HG_DAMAGE);
    reset_hitbox_value(AT_JAB, 4, HG_DAMAGE);
    reset_hitbox_value(AT_JAB, 3, HG_DAMAGE);
    
    reset_hitbox_value(AT_NAIR, 11, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 19, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 12, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 18, HG_DAMAGE);
    
    reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_UAIR, 2, HG_DAMAGE);
    
    reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);
    
    reset_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE);
    
    reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_UTILT, 2, HG_DAMAGE);
    
    doublepowerboost = false;
    doublepowerboostusedup = false;
    doublepower_reset = false;
}

reset_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE);
reset_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE);
reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_FSPECIAL_2, 10, HG_BASE_KNOCKBACK);

pullangle = 0;
powerpull = false;
thousandfold_window_timer = 300;
thousandfold_x = 0;
thousandfold_intro = 14;
dontfoldarms = false;
olivia_alpha = 0;
olivia_image_index = 0;
can_grab_visual = false;

if player_to_grab != noone
{
    player_to_grab.thousand_grab = false;
}
player_to_grab = noone;
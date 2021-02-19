//hitbox_update
    
if armor_active
    {
        if enemy_hitboxID.damage > 1
        {
            take_damage( player, -1, floor(-enemy_hitboxID.damage/2) ); 
        }
    }              

sound_play(sound_get("snd_hurt1_c"));

item_menu_active = false;
chosen_item = 0;


if ustrong_char != noone
{
    timer = 0;
    ustrong_char = noone;   
}

if notinfuckinland = true
{
    notinfuckinland = false;
}

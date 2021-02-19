//set_attack
// WINGED
if (attack == AT_NAIR) or (attack == AT_BAIR) or (attack == AT_DAIR) 
{
    is_winged = true;
}
else
{
    is_winged = false;
}


// uthrow
if ((attack == AT_UAIR) or (attack == AT_UTILT) or (attack == AT_USTRONG)) and (holding_turntable)
{
   attack = AT_UTHROW;
}

// fthrow
if ((attack == AT_FAIR) or (attack == AT_NAIR) or (attack == AT_FTILT) or (attack == AT_FSTRONG) or (attack == AT_DATTACK) or (attack == AT_FSPECIAL) or (attack == AT_JAB) or (attack == AT_NSPECIAL)) and (holding_turntable)
{
   attack = AT_FTHROW;
}

// fthrow backward
if (attack == AT_BAIR) and (holding_turntable)
{
    attack = AT_FTHROW;
    spr_dir = -spr_dir;
}
// dthrow
if ((attack == AT_DAIR) or (attack == AT_DSPECIAL) or (attack == AT_DTILT) or (attack == AT_DSTRONG)) and (holding_turntable) 
{
    attack = AT_DTHROW
    
}

// is there a turntable?
var turntable_exist = false;
var inst = -1
with (obj_article1)
{
    if (player_id == other)
    {
         turntable_exist = true;
         inst = self;
    }
}

// grabbing turntable
if (attack == AT_DSPECIAL) and (turntable_exist)
{
    attack = AT_DSPECIAL_2;
}

/*
if (attack == AT_DSPECIAL) and (ds_list_size(cd_pos) == 0)
{
    attack = AT_NSPECIAL;
}
*/
// letting the turntable go when uspecialing
if (attack == AT_USPECIAL)
{
    if (holding_turntable)
    {
        holding_turntable = false;
        inst.sprite_index = sprite_get("turntable");
        
        has_airdodge = has_really_airdodge;
        has_walljump = has_really_walljump;
    }
}

// avoiding buffer issue
if (attack == AT_NSPECIAL)
{
   clear_button_buffer(PC_SPECIAL_PRESSED);
   clear_button_buffer(PC_JUMP_PRESSED);
   
   cd_rel_lvl = cd_level;
}

// throwing if fully charge
if ((attack == AT_NSPECIAL) and ((cd_level == cd_level_max) or (runeF)))
{
   attack = AT_NSPECIAL_2;
}


if (attack == AT_TAUNT) and (holding_turntable)
{
    attack = AT_DSPECIAL_AIR;
    
}





//got_hit


can_uspecial = true;
can_fspecial = true;
runeG_can_uspecial = true;

if (holding_turntable)
{
    var is_turn = false;
    with (obj_article1)
    {
        if (player_id == other)
        {
            var inst = self;
            var is_turn = true;
            
            other.holding_turntable = false;
            sprite_index = sprite_get("turntable");
            other.has_airdodge = other.has_really_airdodge;
            other.has_walljump = other.has_really_walljump;
            
            if (true) //(!runeI)
            {
                can_hit = false;
            }
            uspecial = false;
        }
    }
}

if((attack = AT_NSPECIAL || attack = AT_NSPECIAL_2) && (prev_state = PS_ATTACK_AIR || prev_state = PS_ATTACK_GROUND) && cd_level != 0){
cd_level = 0;
}

    move_cooldown[AT_FSPECIAL] = 0;
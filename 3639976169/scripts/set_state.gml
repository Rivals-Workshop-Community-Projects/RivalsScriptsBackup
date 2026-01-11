energized_attack = false;
if (custom_clone && variable_instance_exists(self, "jump_to_attack"))
{
    if (jump_to_attack = -1 && (state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL))
    {
        spawn_hit_fx(x, y, vfx_hologram_vanish);
        instance_destroy(orb1);
        instance_destroy(orb2);
        instance_destroy(orb3);
        instance_destroy(self);
        exit;
    }
}
if (state != PS_DEAD && state != PS_RESPAWN)
{
    var isDodge = (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD);
    if (!isDodge && !custom_clone)
        visible = true;
    if ((prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND))
    {
        if (attack == AT_FSTRONG)
        {
            var orbs = 0;
            for (var i = 0; i < 3; i++)
            {
                if (orb_slots[i] != 0)
                    orbs++;
            }
            if (orbs > 0)
                sound_play(sound_get("focus"), false, noone, 1, 0.9);
            orb_slots = [0, 0, 0];
        }
        if (state_cat != SC_HITSTUN && !was_parried)
            switch (attack)
            {
                case AT_UAIR:
                    if (has_hit_player)
                    {
                        orb_to_add = 1;
                        user_event(2);
                    }
                    break;
                case AT_DSTRONG:
                    if (has_hit_player)
                    {
                        orb_to_add = 23;
                        user_event(2);
                    }
                    break;
                case AT_USPECIAL:
                    orb_to_add = 4;
                    user_event(2);
                    break;
                case AT_FTILT:
                    if (has_hit_player)
                    {
                        orb_to_add = 2;
                        user_event(2);
                    }
                    break;
        }
    }
}
if (!old_ice && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) && armor_duration == 0)
{
    armor_temp = 0;
    soft_armor = 0;
}
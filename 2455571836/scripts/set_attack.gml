if (attack == AT_TAUNT && down_down) attack = AT_TAUNT_2;
if (attack == AT_TAUNT && up_down) attack = AT_TAUNT_2;

if (attack == AT_NSPECIAL && phone_cheats[cheat_final_smash] == 1) attack = 49;
user_event(13);
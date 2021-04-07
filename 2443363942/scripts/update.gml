// transcend
transcounter = clamp(((get_player_color(player) == 9 && (state==PS_SPAWN||(attack == AT_TAUNT && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);

//reset wall bounces
if (!free || state == PS_WALL_JUMP || state == PS_HITSTUN) wall_bounces = 6;
if (attack == AT_USPECIAL && !aura && temp_level==0) attack = AT_USPECIAL_2;
else if (attack == AT_TAUNT && (down_down || up_down) && (menuStateBuffer==0 || menuStateBuffer==5 || menuStateBuffer==6)) attack = AT_TAUNT_2;
if (has_rune("L") && move_cooldown[attack]<=0) instance_create(x,y-30,"obj_article1");
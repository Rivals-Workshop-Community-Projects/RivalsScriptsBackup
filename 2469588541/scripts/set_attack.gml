if (has_rune("L")) instance_create(x,y-30,"obj_article1");

if (attack == AT_USPECIAL && !aura && temp_level==0) attack = AT_USPECIAL_2;
else if (attack == AT_TAUNT && (down_down || up_down)) attack = AT_TAUNT_2;
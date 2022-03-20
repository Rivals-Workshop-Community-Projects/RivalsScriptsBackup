if (drip >= 18){
{ create_hitbox( AT_EXTRA_1, 2, x + 154, y + 154);
}
}

if (drip >= 18){
{ create_hitbox( AT_EXTRA_1, 2, x + 52, y + 150);
}
}

if (drip == 0){
{ create_hitbox( AT_EXTRA_1, 3, x + 108, y +167);
drip = 20;
}
}

drip -= 1;
despawntimer -= 1;

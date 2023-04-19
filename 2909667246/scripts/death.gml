// called when the character gets KO'd

move_cooldown[AT_USPECIAL] = 0;uspec_fuel = 300;uspec_landed = true;uspec_landed = false;
Lloid_Rocket_Ride = false;

bells -= 10000;
if(bells < 0){
    bells = 0;
}

if(instance_exists(Pocketed_Projectile)){
    Pocketed_Projectile.x = 9000;
    Pocketed_Projectile.destroyed = true;Pocketed_Projectile = noone;
    pocket_projectile = false;pocket_article = false;
}
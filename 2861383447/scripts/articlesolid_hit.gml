// your solid article code can go here!
lifetime += max_lifetime * 0.20;
hit_time = 10;

var sound_rand = 1 + random_func( 0, 4, true );
sound_play(sound_get("grass" + string(sound_rand)));

if (enemy_hitboxID.attack == AT_USPECIAL)
lifetime = max_lifetime;
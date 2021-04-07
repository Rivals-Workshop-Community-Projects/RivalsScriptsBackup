//
is_cpu = false;
is_dead = false;

got_hit = false;
is_intangible = false; //invince period after getting hit
intang_timer = 0; //decrements once per frame while intangible

heartID = undefined;

hp_max = 50;
hp_current = hp_max;

using_keyboard = true;

timealive = 0;
damageTaken = 0;
attacksSurvived = -1;
healthRecovered = 0;
//perfectAttacks = 0;
//timesActed = 0;
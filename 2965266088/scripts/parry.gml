//parry.gml

if (dark_target == noone && dark_owner == noone)
{
    dark_hp_cur += dark_hp_max/2;
    if (dark_hp_cur > dark_hp_max) dark_hp_cur = dark_hp_max;
    dark_target = self;
    dark_target.dark_owner = self;
    dark_state = 0;
}

graze_lockout = graze_lockout_max + floor(hitstop_full);
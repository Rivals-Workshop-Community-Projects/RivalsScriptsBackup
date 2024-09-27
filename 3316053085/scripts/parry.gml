//parry.gml

true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

charge_cur += charge_max/3;
if (charge_cur >= charge_max) charge_cur = charge_max;

if (can_overdrive > 0 && using_overdrive == 0) od_cur += 10;
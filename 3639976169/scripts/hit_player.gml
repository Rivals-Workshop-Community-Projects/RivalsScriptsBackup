if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2)
{
    hit_player_obj.hurt_img = 5;
}
if (my_hitboxID.attack == AT_EXTRA_1 || my_hitboxID.attack == AT_EXTRA_2 || my_hitboxID.attack == AT_NSPECIAL || (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 2))
    exit;
var light_orbs = 0;
for (var i = 0; i < 3; i++)
{
    if (orb_slots[i] == 1)
        light_orbs++;
    if (orb_slots[i] % 10 == 3)
    {
        orb_slots[i] += 20;
        if (orb_slots[i] > 303)
            orb_slots[i] = 303;
    }
}
if (light_orbs > 0)
{
    hit_player_obj.defect_orb_zap = 100 + light_orbs;
    hit_player_obj.defect_orb_hitbox_vars = [
        my_hitboxID.kb_value,
        my_hitboxID.kb_angle,
        my_hitboxID.hit_flipper,
        my_hitboxID.kb_scale,
        my_hitboxID.hitstun_factor
        ];
    hit_player_obj.defect_orb_owner = self;
}


if (my_hitboxID.attack == AT_DAIR)
{
    old_hsp /= 2;
    old_vsp = -1;
}
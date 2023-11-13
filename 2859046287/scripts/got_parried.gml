//got_parried.gml
//as the name suggests, this script runs when the player is parried, this can be useful for disabling effects like certain debuffs
//or redirecting the character into certain states

//this line takes the strong charge damage into consideration, useful if you want to include that for mechanics
true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

//prevents the grab ID from staying
if (instance_exists(my_grab_id) && my_grab_id != noone) my_grab_id = noone;

//disables u-air status on parry
if (hit_player_obj.test_status_timer > 0) hit_player_obj.test_status_timer = 0;

//multihit projectile hit count resets on parry
if (my_hitboxID.type == 2 && my_hitboxID.multihit_amount > 0 && my_hitboxID.proj_hit_count < my_hitboxID.multihit_amount)
{
    my_hitboxID.proj_hit_count = 0;
    my_hitboxID.hitbox_timer = 0;
}

//normally we would use HG_PROJECTILE_PARRY_STUN in the attack script, but that hitbox index will instantly put us in pratland,
//this allows us to finish playing the animation first and then being put in pratland
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2) was_parried = true;

//reset tester's charge
nspec_charge = 1;
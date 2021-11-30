fspecial_charge = 0;
fspecial_used = false;
dspecial_used = false;

if (instance_exists(voltorb_obj) and (voltorb_obj.state == PS_WALK or voltorb_obj.state == PS_IDLE))
{
    voltorb_obj.state = PS_DEAD
}
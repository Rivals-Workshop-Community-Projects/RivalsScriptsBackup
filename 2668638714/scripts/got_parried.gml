if instance_exists(voltorb_obj)
{
  voltorb_obj.state = PS_DEAD;
  voltorb_obj.state_timer = 0;
  voltorb_obj.lock_state = true;
  voltorb_obj.vsp = 0;
  voltorb_obj.hsp = 0;
}

if my_hitboxID.attack == AT_FSPECIAL
{
    hsp = 0;
}
//La Reina death.gml

//Destroy the chair
if (instance_exists(myChair)){
  with myChair{
    if gethit_grabbed != noone && gethit_grabbed != player_id {
      with gethit_grabbed {
        if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
          window = 19; window_timer = 0; attack_end();
          if instance_exists(grab_victim) {
            grab_victim.wrap_time = 0; grab_victim = noone;
          }
        }
      }
    }
  }
  myChair.window = 4;
  myChair.spawn_death_effect = true;
}
move_cooldown[AT_NSPECIAL] = 0;
move_cooldown[AT_DSPECIAL] = 0;
chair_cooldown_by_destruction = false;

if (instance_exists(grab_victim)){
  grab_victim.wrap_time = 0;
  grab_victim.gethit_grabbed = noone;
  grab_victim = noone;
}

//Reset the LOYAL FANS
ring_summon_count = 0;

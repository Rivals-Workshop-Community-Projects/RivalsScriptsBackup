trap_timer -= (trap_timer > 0);

var joymove_x = 0;
var joymove_y = 0;

with(trap_playerid){

  if (variable_instance_exists(self, "temp_level") && other.ai_rand_x == -4){
    var ai_dir = random_func(id % 24, 360, true );
    other.ai_rand_x = abs(lengthdir_x(0.1,ai_dir)) * other.facing;
    other.ai_rand_y = lengthdir_y(0.1,ai_dir);
  }

  set_state(PS_WRAPPED);
  x = other.x+bubble_x;
  y = other.y+20+bubble_y;

  if (hitpause) {
    other.trap_timer = 0;
    break;
  }

  if (other.ai_rand_x != -4){
    joymove_x = other.ai_rand_x;
    joymove_y = other.ai_rand_y;
  } else {
    if (!joy_pad_idle){
      joymove_x = lengthdir_x(0.1,joy_dir);
      joymove_y = lengthdir_y(0.1,joy_dir);
    }
  }

}

if (x < stage_left || x > stage_right){
  trap_timer = 0;
}

if (!hit_wall){
  trap_addhspd += joymove_x != 0 ? joymove_x : -sign(trap_addhspd)*0.1;
  trap_addvspd += joymove_y != 0 ? joymove_y : -sign(trap_addvspd)*0.1;

  trap_addhspd = clamp(trap_addhspd, -trap_maxspd, trap_maxspd);
  trap_addvspd = clamp(trap_addvspd, -trap_maxspd, trap_maxspd);
  hsp = trap_spd * facing + trap_addhspd;
  vsp = trap_addvspd;

} else {
  hsp = 0;
  vsp = 0;
}

if (trap_timer == 0){
  if (instance_exists(trap_playerid)){
    spawn_hit_fx(trap_playerid.x, trap_playerid.y-40+trap_playerid.bubble_y, 67);
    trap_playerid.hitpause = true;
    trap_playerid.hitstop = 10;
  }
  sound_play(asset_get("sfx_ori_glide_end"));
  player_id.blackhole_obj = noone;
  player_id.move_cooldown[42] = 60;
  instance_destroy();
}

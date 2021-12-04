
rocket_lifetime--;
image_index = (image_index + 0.5) % 10;

if (rocket_lifetime < 0){
    instance_destroy();
}

if (rocket_lifetime == 1)
{
   vsp = 0;
   hsp = 0;
   create_hitbox(AT_USPECIAL_2, 1, x + 22 * spr_dir, y - 40);
   create_hitbox(AT_USPECIAL_2, 3, x + 22 * spr_dir, y - 40);
  // rocket_blow = true;
   sound_play(sound_get("FRAG"));
}

hsp = 28 * spr_dir;

if (!free)
{
    vsp = 0;
	hsp = 0;
    create_hitbox(AT_USPECIAL_2, 1, x + 22 * spr_dir, y - 40);
    create_hitbox(AT_USPECIAL_2, 3, x + 22 * spr_dir, y - 40);
    sound_play(sound_get("FRAG"));
    //rocket_blow = true;
    instance_destroy();
}

if (hit_wall)
{
    vsp = 0;
	hsp = 0;
    create_hitbox(AT_USPECIAL_2, 1, x + 22 * spr_dir, y - 40);
    create_hitbox(AT_USPECIAL_2, 3, x + 22 * spr_dir, y - 40);
    sound_play(sound_get("FRAG"));
    //rocket_blow = true;
    instance_destroy();
}

with (oPlayer)
{
if (id != other.player_id) {    
  if (place_meeting(x, y, other))
  {
      with (other)
      {
    vsp = 0;
    hsp = 0;
    create_hitbox(AT_USPECIAL_2, 1, x + 22 * spr_dir, y - 40);
    create_hitbox(AT_USPECIAL_2, 3, x + 22 * spr_dir, y - 40);
    sound_play(sound_get("FRAG"));
      }
    instance_destroy();
  }
  }
}


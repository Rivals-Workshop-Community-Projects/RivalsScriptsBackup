
image_index = (image_index + 0.15) % 100; 
//apple_lifetime--;

depth = -10;

article_xscale = 1;
article_yscale = 1;


image_xscale = spr_dir*article_xscale; //ensure direction is correct at all times, flips mask.
image_yscale = article_yscale;




if (free == false)
{
    sprite_index = sprite_get("leftovers_floor");
    mask_index = sprite_get("leftovers_floor");
    //sound_play(asset_get("sfx_blow_heavy2"));
    hsp = 0;
    vsp = 0;
}

if (hsp == 0 and vsp == 0)
{
    ready = true;
}

if (free == true)
{
    hsp = 4 * spr_dir;
    vsp += grav;
}

with (oPlayer)
{
if (id != other.player_id or id = other.player_id) {    
  if (place_meeting(x, y, other))
  {
      with (other)
      {
        if (ready == true)
        {
        create_hitbox(AT_NSPECIAL, 4, x + (28 *spr_dir), y - 36);
        instance_destroy();
        }
      }
    
  }
  }
}

//destroy the trap if it goes offscreen
var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );
var stage_side = get_stage_data(SD_SIDE_BLASTZONE);
var stage_bot = get_stage_data(SD_BOTTOM_BLASTZONE);

if (y > stage_bot + stage_y or x < stage_x- stage_side or x > room_width + stage_x+ stage_side)
{
    instance_destroy();      
}






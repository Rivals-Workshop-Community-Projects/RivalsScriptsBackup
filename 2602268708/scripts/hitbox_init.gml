trace("hitbox_init was called");

if (attack == AT_TAUNT_2 && hbox_num == 1)
{
   //I am a freshly spawned cosmetic hitbox.
   //was there one like me, before me? the player knows
   if (player_id.last_cosmetic_proj != noone)
   {
      //there is one. it can delete itself so there's only me.
      player_id.last_cosmetic_proj.the_variable_to_check_if_you_need_to_stop_existing = true;
   }

   //tell the player that now I'M the cosmetic hitbox
   player_id.last_cosmetic_proj = self
   
   //to check when I need to die later
   the_variable_to_check_if_you_need_to_stop_existing = false;
}

if attack == AT_FSPECIAL
{

    if (player_id.bomb_numbering >= 3.5)
    {
        sprite_index = sprite_get("fspecial_bullyproj");
        destroy_fx = player_id.bullybomb_explode;
    }
    bounced = false;
    bouncetime = 0;
}
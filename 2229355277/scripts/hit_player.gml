// Variable Definition
var hitmove = my_hitboxID.attack;

//Increase mana on hitting an enemy.
if (my_hitboxID.hbox_num == 4)
  {
  manabar += 3;
  jab_flash = 10;
  }
else
  {
  manabar += 2;
  }

// Allow for Jab to cancel into other moves.
if (hitmove == AT_JAB){
    if my_hitboxID.hbox_num != 4 {
        can_attack = true;
        can_special = true;
        can_strong = true;
        can_ustrong = true;
        can_move = true;
        can_jump = true;
    }
}


// Empower Ring
if hitmove == AT_THUNDER or hitmove == AT_GUILLOTINE or hitmove == AT_EXPLOSION or hitmove == AT_BOMB or hitmove == AT_RAGNAROK or hitmove == AT_CROSSFIRE or hitmove == AT_EXTRA_2 or hitmove == AT_FSTRONG_2 or hitmove == AT_DTHROW{
  if spellslot[0] == 29 or spellslot[1] == 29{
      take_damage(hit_player_obj.player,player, floor(my_hitboxID.damage * .5));
  }
}

if hitmove == AT_EXPLOSION{
  spawn_hit_fx(hit_player.x - 60, hit_player.y, 148);
}

if (hitmove == AT_FSPECIAL)
  {
  djumps = 0;
  }

if (hitmove == AT_UAIR){
    if my_hitboxID.hbox_num == 1{
        uair_hitcheckvar++;
        print_debug(string(uair_hitcheckvar));
    }
    if my_hitboxID.hbox_num == 3{
        uair_hitcheckvar++;
        print_debug(string(uair_hitcheckvar));
    }
    if my_hitboxID.hbox_num == 4{
        uair_hitcheckvar++;
        print_debug(string(uair_hitcheckvar));
    }
    if uair_hitcheckvar == 3{
        sound_play(asset_get("sfx_ice_shatter_big"));
        take_damage(hit_player_obj.player,player, 7);
    }
}

//Bomb exploding on contaxt with the enemy.
if (hitmove == AT_EXTRA_3)
  {
  if (my_hitboxID.hbox_num == 1)
    {
    explosionbox = create_hitbox(AT_EXTRA_3, 2, my_hitboxID.x, my_hitboxID.y);
    explosionbox.player = my_hitboxID.player;
    my_hitboxID.destroyed = true;
    }
  }

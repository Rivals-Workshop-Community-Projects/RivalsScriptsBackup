//
// Variable Definition
var hitmove = my_hitboxID.attack;
var hitnum = my_hitboxID.hbox_num;

//hit_player_obj.should_make_shockwave = false;
switch(hitmove){
    case AT_NAIR:
        if hitnum < 7{
            hit_player_obj.should_make_shockwave = false;
        }
        break;
    case AT_UAIR:
        if hitnum == 1{
            vsp -= 2;
            hit_player_obj.should_make_shockwave = false;
        }
        break;
    case AT_DAIR:
        if hitnum == 2{
            do_dairhit2 = true;
            hit_player_obj.should_make_shockwave = false;
        }
        break;
    case AT_FSTRONG:
        if hitnum == 1 {
            hit_player_obj.should_make_shockwave = false;
            instance_destroy(illusion.hitbox);
            illusion.state = 2;
            illusion.state_timer = 0;
            illusion.hsp = 0;
        }
        break;
    case AT_NSPECIAL:
        switch(hitnum){
            case 3:
                hit_player_obj.should_make_shockwave = false;
                next_explosion = create_hitbox(AT_NSPECIAL, 4, my_hitboxID.x, my_hitboxID.y);
                next_explosion.player = my_hitboxID.player;
                break;
            case 4:
            case 7:
            case 8:
                hit_player_obj.should_make_shockwave = false;
                break;
        }
        break;
    case AT_FSPECIAL:
        if hitnum == 1 or hitnum == 4{
            hit_player_obj.should_make_shockwave = false;
        }
        if hitnum == 6 and !snapped {
            hit_player_obj.should_make_shockwave = false;
            next_explosion = create_hitbox(AT_FSPECIAL, 1, my_hitboxID.x, my_hitboxID.y-5);
            next_explosion.player = my_hitboxID.player;
            //hitbox_spawned = true;
        }
        break;
}

/*
if hitmove == AT_NSPECIAL
  {
  if my_hitboxID.hbox_num == 3
    {
    next_explosion = create_hitbox(AT_NSPECIAL, 4, my_hitboxID.x, my_hitboxID.y);
    next_explosion.player = my_hitboxID.player;
    }
  }

if hitmove == AT_FSPECIAL
  {
  if my_hitboxID.hbox_num == 6 and !snapped
    {
        print_debug("CAT")
    next_explosion = create_hitbox(AT_FSPECIAL, 1, my_hitboxID.x, my_hitboxID.y-5);
    next_explosion.player = my_hitboxID.player;
    //hitbox_spawned = true;
    }
  }
  
if hitmove == AT_FSTRONG{
    if (my_hitboxID.hbox_num == 1)
    {
        instance_destroy(illusion.hitbox);
        illusion.state = 2;
        illusion.state_timer = 0;
        illusion.hsp = 0;
    }
}*/
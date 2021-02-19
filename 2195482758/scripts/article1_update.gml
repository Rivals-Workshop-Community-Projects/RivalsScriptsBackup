// Old jank move. Probably will reuse for an abyss rune or something.

// image_index = 21-((((despawn_timer - 0) * (21 - 0)) / (60 - 0)) + 0)
// ignores_walls = true;
// hit_wall = false;


// switch(fc_timer)
// {
//     case 10:
//     fc_hitbox[0] = create_hitbox(AT_NSPECIAL, 1, x+84*spr_dir, y-46);
//     break;
//     case 8:
//     fc_hitbox[1] = create_hitbox(AT_NSPECIAL, 1, x+84*spr_dir, y-46);
//     break;
//     case 6:
//     fc_hitbox[2] = create_hitbox(AT_NSPECIAL, 1, x+84*spr_dir, y-46);
//     break;
//     case 4:
//     fc_hitbox[3] = create_hitbox(AT_NSPECIAL, 1, x+84*spr_dir, y-46);
//     break;
//     case 2:
//     fc_hitbox[4] = create_hitbox(AT_NSPECIAL, 1, x+84*spr_dir, y-46);
//     break;

// }
// fc_timer-= 0.5;

// if(despawn_timer == 0)
// {
//     instance_destroy();
// }
// else
// {
//     despawn_timer--;
// }
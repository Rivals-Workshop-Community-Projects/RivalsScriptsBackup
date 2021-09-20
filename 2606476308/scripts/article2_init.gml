
state_timer = 0

sprite_index = sprite_get("magnet")
image_index = 0

uses_shader = true

can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;        //If the article moves into a wall on its own, this variable will be true.

//article1_init - runs once, when the article is created
//Sprite and direction
mask_index = asset_get("empty_sprite");
sprite_index = asset_get("empty_sprite");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
uses_shader = true;

image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
//free = false;
//depth = 8;

//hitsmoke = hit_fx_create( sprite_get( "hfx_flower_small" ), 15 );

array_size = 0;
poison_array = array_create(array_size, -1);
mark_for_destroyal = false;
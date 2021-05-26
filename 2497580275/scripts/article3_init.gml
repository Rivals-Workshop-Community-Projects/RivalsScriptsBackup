//Afterimage buddy. Template by Muno

//Sprite and directio
sprite_index = sprite_get("parasiteinstall");          //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = 1;                                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
image_alpha = 0;

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 20*player_id.parasiteSpawn;           //The point in time during that state the article should start in. (0 = beginning)
eyeNo = player_id.parasiteSpawn;

//Terrain behavior
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//microplatform init

//article standard variables
visible = false; //debug visibility toggle
uses_shader = false;

sprite_index = sprite_get("microplatform");
through_platforms = true;
can_be_grounded = false;
ignores_walls = true;


//custom variables
client_id = noone; //which player article do we need to follow
die_condition = 0; //what condition to stop existing (see update)

lifetime = 15; //minimum time to exist regardless of death condition

external_should_die = false; //use this for external control over platform removal

act_as_solid = false; //if this platform prevents fallthrough
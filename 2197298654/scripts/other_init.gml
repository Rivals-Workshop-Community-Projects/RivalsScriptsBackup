//otherinit
sleepytimeszzz = false;
sleepytimeszzzid = 0;
sleepytimesr = 0;

init_jump_speed = jump_speed
init_sh_speed = short_hop_speed
init_djump_speed = djump_speed
init_knockback_adj = knockback_adj

if(select == clamp(select, 2, 15)){
defchar = select - 1;
} else if (url == 1865940669){
defchar = 16
			}
			else if (url == 1866016173){
			defchar = 17
			}  else {
			    defchar = 0
		}

if (url == 2152557624 || 2178888206){
localsupport = 1;
}

if (url != 2178888206 && url != 2152557624) {
localsupport = 0;
}

if (variable_instance_exists(id, "childsupport")){
supportschild = 1;
} else {
supportschild = 0;
}


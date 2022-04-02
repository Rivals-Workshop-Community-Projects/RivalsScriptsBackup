//user_event3 - Custom Actions

//Default action enums - do not edit!
enum EVT {
	START,
	DO
}

enum P {
    LOAD,
    ROOM_ID,
    SCENE_ID,
    ACTION_ID,
    ALIVE_TIME,
    ACTION_INDEX,
    DIE,
    REL_ID
}

enum L {
    ACTION_TYPE,
    PARAM,
    ON_EXIT
}
//

enum ACT { //Last default action is 23
    CUSTOM = 24,
}


//Get the action parameters
var _param = custom_action[P.LOAD][L.PARAM];

switch custom_action[P.LOAD][L.ACTION_TYPE] {
    case ACT.CUSTOM:
        switch event_flag {
            case EVT.START:
		    	with room_manager {
		    		switch_to_room_pos = _param[2];
		    		room_switch_type = _param[1];
		    		switch_to_room = _param[0];
		    		switch_room = true;
			        show_gui = false;
		    	}
                perpetual = false; //Set to true if the action needs to run EVT.DO - remember to set up exit conditions!
                break;
            case EVT.DO:
                // _action[P.DIE] = true;
                break;
        }
}
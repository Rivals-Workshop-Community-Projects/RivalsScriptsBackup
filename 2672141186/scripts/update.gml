#macro TMS_LENGTH 60
#macro TMS_CHARGE 120

sprite_index = sprite_get("blank");

//Save the current state
with(owner) {
	if (other.tms_mode == "normal") {
		//Instance variables
		var _array = variable_instance_get_names(id);
		var _length = array_length(_array);
		var _state = [];
		var i = 0;
		for(i = 0; i < _length; i++) {
			var _name = _array[@ i];
			_state[@ i] = [_name, variable_instance_get(id, _name)];
		}

		//Builtin variables
		_state[@ i] = ["x", x]; i++;
		_state[@ i] = ["y", y]; i++;
		_state[@ i] = ["sprite_index", sprite_index]; i++;
		_state[@ i] = ["image_index", image_index]; i++;
		_state[@ i] = ["visible", visible]; i++;

		//Save the state
		other.tms[@ other.tms_current] = _state;
		other.tms_current = (other.tms_current + 1) % TMS_LENGTH;
		
		//Start rewind
		other.tms_charge++;
		if (taunt_pressed && other.tms_charge > TMS_CHARGE) {
			clear_button_buffer(PC_TAUNT_PRESSED);
			taunt_pressed = false;
			other.tms_mode = "rewind";
			other.tms_load = (TMS_LENGTH - 1);
			other.tms_charge = 0;
		}
	} else if (other.tms_mode == "rewind") {
		//Time travel
		var _end_rewind = false;
		
		//Go back a frame
		other.tms_current--;
		if (other.tms_current<= 0) {
			other.tms_current = TMS_LENGTH - 1;
		}
		
		//Load that state
		var _state = other.tms[@ other.tms_current];
		if (_state != undefined) {
			var _length = array_length(_state);
			for(var i = 0; i < _length; i++) {
				var _data = _state[@ i];
				if (_data[@ 1] != undefined) {
					variable_instance_set(id, _data[@ 0], _data[@ 1]);
				}
			}
			
			//Stop the rewind once you go through all of the previous states
			other.tms_load--;
			if (other.tms_load <= 0) {
				_end_rewind = true;
			}
		} else {
			_end_rewind = true;
		}
		
		//Ending
		if (_end_rewind) {
			other.tms_mode = "normal";
			other.tms_charge = 0;
		}
	}
}


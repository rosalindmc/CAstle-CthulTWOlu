/// @description Get a string for a key 
/// @param {real} key

var map, name;

//test var
map = true;

//Switch the argument
if (argument0 >= 48 && argument0 <= 59)
{
  name = argument0-48;
}
else if (argument0 >= 65 && argument0 <= 90)
{
  name = chr(argument0);
}
else 
{
  switch (argument0)
  {
    case vk_control: name="Ctrl"; break;
	case vk_lcontrol: name="L Ctrl"; break;
    case vk_rcontrol: name="R Trl"; break;
	case vk_shift: name="Shift"; break;
    case vk_lshift: name="L Shift"; break;
    case vk_rshift: name="R Shift"; break;
	case vk_alt: name="Alt"; break;
	case vk_lalt: name="L Alt"; break;
	case vk_ralt: name="R Alt"; break;
    case vk_tab: name="Tab"; break;
    case vk_space: name="Space"; break;

    //ARROW KEYS
    case vk_left: name="Left"; break;
    case vk_right: name="Right"; break;
    case vk_up: name="Up"; break;
    case vk_down: name="Down"; break;

    //NUMPAD
    case vk_numpad0: name="Num0"; break;
    case vk_numpad1: name="Num1"; break;
    case vk_numpad2: name="Num2"; break;
    case vk_numpad3: name="Num3"; break;
    case vk_numpad4: name="Num4"; break;
    case vk_numpad5: name="Num5"; break;
    case vk_numpad6: name="Num6"; break;
    case vk_numpad7: name="Num7"; break;
    case vk_numpad8: name="Num8"; break;
    case vk_numpad9: name="Num9"; break;

    //UNCHARTED KEY
    default: map=false; break;
  }
}

//Return the correct name for the key or an empty string if no valid key has been pressed
if map return name else return ""
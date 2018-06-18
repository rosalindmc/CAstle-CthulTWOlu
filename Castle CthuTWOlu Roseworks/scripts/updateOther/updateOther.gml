destroyMini()

with(argument0)
{
	with(obj_content)
	{
		if active = true
		{
			if other.object_index = obj_editString
			{
				texts[other.code] = other.value
			}
			else
			{
				attributes[other.code] = other.value
			}
		
			global.savechanges = true
		}
	}
}
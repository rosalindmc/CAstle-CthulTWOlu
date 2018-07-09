with(obj_content)
{
	if active = true
	{
		if object_index = obj_editString
		{
			texts[argument0] = argument1
		}
		else
		{
			attributes[argument0] = argument1
		}
		
		global.savechanges = true
	}
}

if global.activeMenu = 4
{
	updateAnimation()
}
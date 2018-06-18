with(obj_editor)
{
	if object_index = obj_editReal
	{
		minValue = 1000000
		value = -1000000
		maxValue = -1000000
	}
}

global.contentSelected = 0
		

with(obj_content)
{
	if active = true
	{
		global.contentSelected ++
		
		with(obj_editor)
		{
			if object_index = obj_editString
			{
				value = other.texts[code]
			}
			else if object_index = obj_editReal
			{
				minValue = min(minValue,other.attributes[code])
				value = other.attributes[code]
				maxValue = max(maxValue,other.attributes[code])
			}	
			else if object_index = obj_editColour
			{
				value = other.attributes[code]
			}
		}
	}
}
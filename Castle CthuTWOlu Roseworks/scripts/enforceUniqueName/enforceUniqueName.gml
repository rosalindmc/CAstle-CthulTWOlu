var done = 0
var iterations = 0

while(done = 0)
{
	done = 1
	iterations++
	
	with(obj_content)
	{
		if id != other.id
		{
			if iterations = 1
			{
				if text = other.text
				{
					done = 0
				}
			}
			else
			{
				if string(text) = string(other.text)+string(iterations)
				{
					done = 0
				}
			}
		}
	}
}

if iterations > 1
{
	text = string(text)+string(iterations)
}
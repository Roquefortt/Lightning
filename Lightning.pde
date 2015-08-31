int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
	size(300, 300);
	strokeWeight(1);
	background(255, 255, 255);
}

void draw()
{
	//stroke((int)(Math.random()*0) + 255, (int)(Math.random()*0) + 255, (int)(Math.random()*0) + 255);

	line(startX, startY, endX, endY);	

	while (endX == 0) //CHANGE endX=0 TO SOMETHING ELSE
	{
		endX = startX + (int)(Math.random() * 1) + 9;
		endY = startY + (int)(Math.random() * 9) - 18;

		line(startX, startY, endX, endY);	

		startX = endX;
		startY = endY;
	}

}
void mousePressed()
{
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}


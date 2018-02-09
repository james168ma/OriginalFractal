int w = 800;
int h = 800;

public void setup() {

	size(800, 800);
	rectMode(CENTER);
	stroke(0, 255, 0);

}

public void draw() {

	background(0);
	fractal(200, 400, 1, 1, 1, 5, 8, 1);
	fractal(600, 400, 1, 1, 1, 5, 8, 1);
	fractal(400, 200, 1, 1, 1, 5, 8, 1);
	fractal(400, 600, 1, 1, 1, 5, 8, 1);

}

public void fractal(float x, float y, float xShift, float yShift, float siz, float increment, float sensitivity, float numCount) {

	float adjustedX = (numCount*x + sensitivity*mouseX)/(sensitivity+numCount);
	float adjustedY = (numCount*y + sensitivity*mouseY)/(sensitivity+numCount);

	if(siz >= 300 || increment <= 0) {

		// fill(0);
		// rect(adjustedX - xShift, adjustedY - yShift, siz, siz);
		// rect(adjustedX + xShift, adjustedY - yShift, siz, siz);
		// rect(adjustedX - xShift, adjustedY + yShift, siz, siz);
		// rect(adjustedX + xShift, adjustedY + yShift, siz, siz);
		noFill();
		rect(adjustedX, adjustedY, siz*2 + xShift, siz*2 + yShift);
		//ellipse(adjustedX, adjustedY, sqrt(2*(siz*2 + xShift)*(siz*2 + xShift)), sqrt(2*(siz*2 + xShift)*(siz*2 + xShift)));
	}

	else {

		fractal(x, y, xShift + increment, yShift + increment, siz + increment, increment-.2, sensitivity - .2, numCount+1);

		// fill(0);
		// rect(adjustedX - xShift, adjustedY - yShift, siz, siz);
		// rect(adjustedX + xShift, adjustedY - yShift, siz, siz);
		// rect(adjustedX - xShift, adjustedY + yShift, siz, siz);
		// rect(adjustedX + xShift, adjustedY + yShift, siz, siz);
		noFill();
		rect(adjustedX, adjustedY, siz*2 + xShift, siz*2 + yShift);
		//ellipse(adjustedX, adjustedY, sqrt(2*(siz*2 + xShift)*(siz*2 + xShift)), sqrt(2*(siz*2 + xShift)*(siz*2 + xShift)));

	}
}
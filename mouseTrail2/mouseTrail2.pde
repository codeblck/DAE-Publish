import processing.pdf.*;
import java.util.Calendar;



int num=200;			// num of circles
int[] x = new int[num];	// Declare & Create Arrays
int[] y = new int[num];





void setup() {

	size(displayWidth, displayHeight);	// size of sketch == size of window
	noStroke();
	smooth();
	fill(255, 122);

}


void draw() {

	background(0); 

	// Shift value to the right
	for (int i=num-1; i>0; i--) { 	
		x[i] = x[i-1];
		y[i] = y[i-1];
	}


	// Add Values to the beginning of the array
	x[0] = mouseX;
	y[0] = mouseY;


	// Draw the circles
	for (int i = 0; i < num; i++) {

		float randCirclemin = 1;
		float randCirclemax = 20;

		ellipse (x[i], y[i], i/2, i/2);
		ellipse (x[i]+random(randCirclemin,randCirclemax), y[i]+random(randCirclemin, randCirclemax), i/2, i/2);

		// ellipse (x[i], y[i], 40, 40);
		// ellipse (x[i]+random(randCirclemin,randCirclemax), y[i]+random(randCirclemin, randCirclemax), 40, 40);

	}
		
	

}

boolean sketchFullScreen() { 	//make sketch Fullscreen

	return true;
}














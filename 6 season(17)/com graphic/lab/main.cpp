/*
* Hexagon drawing assignment
* Written by A.Lkhagvadorj 17B1NUM2406
*/
#include <math.h>
#include <gl/freeglut.h>
int W=800, H=600;
void tween(float a[][4], float b[][4], float t){
    glBegin(GL_POLYGON);
        for (int i=0; i<4; i++){
                int x = (1-t)*a[i][0] + (t*b[i][0]);
                int y = (1-t)*a[i][1] + (t*b[i][1]);
            glVertex2f( x, y );
        }
    glEnd();




}
void display(void) {
    float a[4][4]={ {-3,3},{-3,-3},{3,-3},{3,3} };
    float b[4][4]={ {-3,4},{-3,-4},{3,-0.5},{3,0.5} };

    glLoadIdentity();
    glPushMatrix();
    //Set color on a line (light yellow)
    glColor3f(1.0, 1.0, 0.5);
   glPointSize(5);
    /**drawing**/
    float t=0, difT=0.001;
    for (t,difT;  ; t+=difT){
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        tween(a, b, t);
        glutSwapBuffers();
        if(t>1 || t<0) difT = - difT;
    }
    glPopMatrix();
    glFlush();
}
//Set color on background (gray)
void setup(void) {
glClearColor(0.5, 0.5, 0.5, 0.0);
}
void reshape(GLsizei w, GLsizei h) {
W=w; H=h;
glViewport(0, 0, (GLsizei) w, (GLsizei) h);
glMatrixMode(GL_PROJECTION);
glLoadIdentity();
glOrtho(-5.0, 5.0, -5.0, 5.0, 1.0, -1.0);
glMatrixMode(GL_MODELVIEW);
}
int main(int argc, char** argv) {
glutInit(&argc, argv);
glutInitDisplayMode(GLUT_DOUBLE |GLUT_RGB);
//glutInitDisplayMode(GLUT_SINGLE| GLUT_RGBA);
glutCreateWindow("Simple");
glutDisplayFunc(display);
glutReshapeFunc(reshape);
setup();
glutMainLoop();

return EXIT_SUCCESS;
}


#include <windows.h>
#include <GL/glut.h>
#include <math.h>
int W=800, H=600;
void initGL() {
   glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
}
void setWindow(float left, float right, float bottom, float top)
{
glMatrixMode(GL_PROJECTION);
glLoadIdentity();
gluOrtho2D(left, right, bottom, top);
}
void hee1(double x){
    int i, v,n=6;
    float durs[100][2],ang,hex=6.2832/n, diff=0,rad=0.04;
    for(i=0; i<25; i++) {
        for(v=0;v<n;v++){
           ang=v*hex+diff;
           durs[v][0]=cos(ang)*rad;
           durs[v][1]=sin(ang)*rad;
        }
        diff=diff+x;
        rad=rad+0.02;
        glBegin(GL_LINE_STRIP);
        for(v=0;v<n;v++)
            glVertex2fv(durs[v]);
        glVertex2fv(durs[0]);
        glEnd();
        glFlush();
   }
}

void display() {
    hee1(0.1);
}
int main(int argc, char** argv) {

    glutInitWindowSize(320, 320);
    glutInitWindowPosition(300, 100);
    glutInit(&argc, argv);
    glutCreateWindow("LAB Hee");
    glutDisplayFunc(display);
    initGL();
    glutMainLoop();
    return 0;
}

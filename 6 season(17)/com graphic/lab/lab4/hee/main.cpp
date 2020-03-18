#include<OpenGL/gl.h>
#include<OpenGL/glu.h>
#include<GLUT/glut.h>
#include <math.h>
#include<stdio.h>
#include<stdlib.h>
float limit=0;
void init(void);

void init(void) {
    glClearColor(1.0,1.0,1.0,1.0);
    glMatrixMode(GL_PROJECTION);
    gluOrtho2D(0.0,300.0,0.0,300.0);
}
void circle (int x,int y,float radius)
{
    float tx,ty;
    float i;
    float a=0,b=0;
    glPointSize(3);
    glBegin(GL_POINTS);
    for (i = 0; i < limit; i=i+.05)
    {
        a=a+.05;
        b=b+.05;
        tx=x+b*cos(i);
        ty=y+a*sin(i);
        glVertex2f(tx,ty);
    }
    glEnd();
}
void draw(void) {
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(0.0,0.0,0.0);
    circle(150,150,1);
    glFlush();
}
void keypress(int key,int x,int y) {
    if(key==27){
        exit(1);
    }
    if(key=='s') {
        limit=limit+0.05;
        circle(250,250,1);
    }
    if(key=='r') {
        limit=limit-0.05;
        circle(250,250,1);
    }
   glutPostRedisplay();
}
int main(int argc, char**argv) {
    glutInit(&argc, argv);
    glutInitWindowPosition(10,10);
    glutInitWindowSize(500,500);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutCreateWindow("Spiral");
    init();
    glutDisplayFunc(draw);
    glutSpecialFunc(keypress);
    glutMainLoop();
    return 0;
}

#include <windows.h>
#include <gl/glut.h>
#include <math.h>
#include <stdio.h>

GLfloat xstep=1.0f;
GLfloat ystep=1.0f;
GLfloat winWidth=2, winHeight=2;

int i, v,n=2;
float durs1[4][2],durs2[4][2],ang,rad=1;
bool tom = true, jij = false;

//Ehleed dursuudiin tseguud haana bhiig zaaj ogno
void beldeh(){
    float hex=6.2832/3;
    for(v=0;v<3;v++){
       ang=v*hex;
       durs1[v][0]=cos(ang)*rad;
       durs1[v][1]=sin(ang)*rad;
    }
    durs1[3][1]=sin(ang)*rad;
    durs1[3][0]=cos(ang)*rad;
    hex=6.2832/4;
    for(v=0;v<4;v++){
       ang=v*hex;
       durs2[v][0]=cos(ang)*rad;
       durs2[v][1]=sin(ang)*rad;
    }
}

void myinit ()
{
    glClearColor(0.0, 0.0, 0.0, 1.0);
    glColor3f(1.0, 0.0, 1.0);
    glShadeModel(GL_FLAT);
}

void resize (GLsizei w, GLsizei h) {
    if (h==0) h=1;
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-2, winWidth, -2, winHeight, 1.0f, -1.0f);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
}

void display(void) {
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(1.0f, 0.0f, 0.0f);
    glBegin(GL_TRIANGLE_FAN);
        for(v=0;v<4;v++)
            glVertex2fv(durs1[v]);
    glEnd();
    //Flush drawing commands and swap
    glutSwapBuffers();
}

//Dursiin shiljiltiig todorhoilno
void transaction (float t){
    for(i=0; i<4; i++){
        durs1[i][0]=(1-t)*durs1[i][0]+durs2[i][0]*t;
        durs1[i][1]=(1-t)*durs1[i][1]+durs2[i][1]*t;
    }
    glutPostRedisplay();
}

//Shiljiltiin hugatsaag todorhoilno
void timer(int value) {
    transaction(0.1);
    glutTimerFunc(value, timer, value);
}

int main (int argc, char** argv) {
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
    glutCreateWindow("Animation Lab_6");
    myinit ();
    glutDisplayFunc(display);
    glutReshapeFunc(resize);
    beldeh();
    timer(100);
    glutMainLoop();
}

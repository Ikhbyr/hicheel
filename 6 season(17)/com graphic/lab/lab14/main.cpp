#include<GL/glut.h>
#include<stdio.h>
#include <windows.h>
#include<math.h>
const GLfloat light_ambient[]  = { 0.0f, 0.0f, 0.0f, 1.0f };
const GLfloat light_diffuse[]  = { 1.0f, 1.0f, 1.0f, 1.0f };
const GLfloat light_specular[] = { 1.0f, 1.0f, 4.0f, 1.0f };
const GLfloat light_position[] = { 2.0f, 5.0f, 5.0f, 0.0f };

const GLfloat mat_ambient[]    = { 0.7f, 0.7f, 0.7f, 1.0f };
const GLfloat mat_diffuse[]    = { 0.8f, 0.8f, 0.8f, 1.0f };
const GLfloat mat_specular[]   = { 1.0f, 1.0f, 1.0f, 1.0f };
const GLfloat high_shininess[] = { 100.0f };

typedef struct{
    float x,y,z;
} vertex;

typedef struct{
    float u,v;
} vt;

int num_texture=-1;
float durs[1605][12];
float durs1[1605][8];
float durs2[1605][12];
int screen_width=640;
int screen_height=480;

typedef struct {
    vertex v[1616];
    vt vt[1970];
    vertex vn[1616];
    int id_texture;
} obj_type, *obj_type_ptr;

typedef struct{
    int vf,vtf,vnf;
} norF;
typedef struct{
    norF c1[1605];
    norF c2[1605];
    norF c3[1605];
    norF c4[1605];
} fullF;
obj_type obj;
fullF ff;


int width = 600, height = 500;
double xRot = 0.0f;
double yRot = 0.0f;
double zRot = 0.0f;

void specialKey(int key, int x, int y)
{
    switch(key){
        case GLUT_KEY_UP:
            xRot+=10.0f;
            break;
        case GLUT_KEY_DOWN:
            xRot-=10.0f;
            break;
        case GLUT_KEY_LEFT:
            yRot+=10.0f;
            break;
        case GLUT_KEY_RIGHT:
            yRot-=10.0f;
            break;
    }
    glutPostRedisplay();
}



static void display(void)
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glPushMatrix();
    glRotatef(xRot,1.0f,0.0f,0.0f);
    glRotatef(yRot,0.0f,1.0f,0.0f);
    glRotatef(zRot,0.0f,0.0f,1.0f);
    glOrtho(-20,20,-20,20,20,-20);
        glPushMatrix();
        glRotatef(180,0,1,0);

        for(int i = 0; i < 1605; i++){
            float v1[] = {durs[i][0] ,durs[i][1] ,durs[i][2]};
            float v2[] = {durs[i][3] ,durs[i][4] ,durs[i][5]};
            float v3[] = {durs[i][6] ,durs[i][7] ,durs[i][8]};
            float v4[] = {durs[i][9] ,durs[i][10] ,durs[i][11]};

            glBegin(GL_QUADS);
                glBindTexture(GL_TEXTURE_2D, obj.id_texture);
                glNormal3f(durs2[i][0],durs2[i][1],durs2[i][2]);
                glTexCoord2f( durs1[i][0], durs1[i][1]);
                glVertex3fv(v1);
                glNormal3f(durs2[i][3],durs2[i][4],durs2[i][5]);
                glTexCoord2f( durs1[i][2], durs1[i][3]);
                glVertex3fv(v2);
                glNormal3f(durs2[i][6],durs2[i][7],durs2[i][8]);
                glTexCoord2f( durs1[i][4], durs1[i][5]);
                glVertex3fv(v3);
                glNormal3f(durs2[i][9],durs2[i][10],durs2[i][11]);
                glTexCoord2f( durs1[i][6], durs1[i][7]);
                glVertex3fv(v4);
            glEnd();
        }
        glPopMatrix();
    glPopMatrix();
    glutSwapBuffers();
}
int LoadBitmap(char *filename)
{
    int i, j=0;
    FILE *l_file;
    unsigned char *l_texture;
    BITMAPFILEHEADER fileheader;
    BITMAPINFOHEADER infoheader;
    RGBTRIPLE rgb;
    num_texture++;
    if( (l_file = fopen(filename, "rb"))==NULL) return (-1);

    fread(&fileheader, sizeof(fileheader), 1, l_file);

    fseek(l_file, sizeof(fileheader), SEEK_SET);
    fread(&infoheader, sizeof(infoheader), 1, l_file);

    l_texture = (BYTE *) malloc(infoheader.biWidth * infoheader.biHeight * 4);
    memset(l_texture, 0, infoheader.biWidth * infoheader.biHeight * 4);

    for (i=0; i < infoheader.biWidth*infoheader.biHeight; i++)
    {
            fread(&rgb, sizeof(rgb), 1, l_file);
            l_texture[j+0] = rgb.rgbtRed;
            l_texture[j+1] = rgb.rgbtGreen;
            l_texture[j+2] = rgb.rgbtBlue;
            l_texture[j+3] = 255;
            j += 4;
    }

    fclose(l_file);
    glBindTexture(GL_TEXTURE_2D, num_texture);

    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_NEAREST);

    glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
    glTexImage2D(GL_TEXTURE_2D, 0, 4, infoheader.biWidth, infoheader.biHeight, 0, GL_RGBA, GL_UNSIGNED_BYTE, l_texture);
    gluBuild2DMipmaps(GL_TEXTURE_2D, 4, infoheader.biWidth, infoheader.biHeight, GL_RGBA, GL_UNSIGNED_BYTE, l_texture);
    free(l_texture);
    return (num_texture);
}

void myInit(void)
{
    glFrontFace(GL_CW);
    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    glEnable(GL_AUTO_NORMAL);
    glEnable(GL_NORMALIZE);
    glEnable(GL_DEPTH_TEST);
    glEndList();
    glShadeModel(GL_SMOOTH);
    glViewport(0,0,screen_width,screen_height);

    glLoadIdentity();
    gluPerspective(45.0f,(GLfloat)screen_width/(GLfloat)screen_height,1.0f,1000.0f);
    glEnable(GL_DEPTH_TEST);
    glPolygonMode (GL_FRONT_AND_BACK, GL_FILL);
    glEnable(GL_TEXTURE_2D);

    obj.id_texture=LoadBitmap("E:\\hicheel\\6 season(17)\\com graphic\\Maya_3D_Character\\Maya-3D-Character\\TextureMap_Checker.bmp");

    if (obj.id_texture==-1)
    {
        MessageBox(NULL,"Image file: texture1.bmp not found", "Zetadeck",MB_OK | MB_ICONERROR);
        exit (0);
    }
}

int readFile(){


    char line_header[128];
    float v1,v2,v3;
    int f[12];
    FILE *fil;
    if ((fil = fopen( "E:\\hicheel\\6 season(17)\\com graphic\\Maya_3D_Character\\Maya-3D-Character\\Character.obj", "r" )) == NULL )
    {
        printf( "File could not be opened\n" );
        return 0;

    }

    int i = 0, j = 0, k=0, l=0;
    while(!feof(fil)){
        fscanf(fil, "%s",line_header);
        if(strcmp(line_header,"v")==0){
            fscanf(fil, "%f %f %f",&v1,&v2,&v3);
            obj.v[i].x = v1;
            obj.v[i].y = v2;
            obj.v[i].z = v3;
            i++;
        }else if(strcmp(line_header,"vt")==0){
            fscanf(fil, "%f %f",&v1,&v2);
            obj.vt[j].u = v1;
            obj.vt[j].v = v2;
            j++;
        }else if(strcmp(line_header,"vn")==0){
            fscanf(fil, "%f %f %f",&v1,&v2,&v3);
            obj.vn[k].x = v1;
            obj.vn[k].y = v2;
            obj.vn[k].z = v3;
            k++;
        }else
        if(strcmp(line_header,"f")==0){
            fscanf(fil, "%d/%d/%d %d/%d/%d %d/%d/%d %d/%d/%d",&f[0],&f[1],&f[2], &f[3],&f[4],&f[5], &f[6],&f[7],&f[8], &f[9],&f[10],&f[11]);
            ff.c1[l].vf=f[0];
            ff.c1[l].vtf=f[1];
            ff.c1[l].vnf=f[2];

            ff.c2[l].vf=f[3];
            ff.c2[l].vtf=f[4];
            ff.c2[l].vnf=f[5];

            ff.c3[l].vf=f[6];
            ff.c3[l].vtf=f[7];
            ff.c3[l].vnf=f[8];

            ff.c4[l].vf=f[9];
            ff.c4[l].vtf=f[10];
            ff.c4[l].vnf=f[11];
            l++;
        }
    }
    int line1, line2, line3, line4, s = 0;
    for(i = 0; i < l-1; i++){
        line1 = ff.c1[i].vf-1;
        line2 = ff.c2[i].vf-1;
        line3 = ff.c3[i].vf-1;
        line4 = ff.c4[i].vf-1;
        durs[s][0] = obj.v[line1].x;
        durs[s][1] = obj.v[line1].y;
        durs[s][2] = obj.v[line1].z;

        durs[s][3] = obj.v[line2].x;
        durs[s][4] = obj.v[line2].y;
        durs[s][5] = obj.v[line2].z;

        durs[s][6] = obj.v[line3].x;
        durs[s][7] = obj.v[line3].y;
        durs[s][8] = obj.v[line3].z;

        durs[s][9] = obj.v[line4].x;
        durs[s][10] = obj.v[line4].y;
        durs[s][11] = obj.v[line4].z;
        s++;
    }
    s=0;
    for(i = 0; i < l-1; i++){
        line1 = ff.c1[i].vtf-1;
        line2 = ff.c2[i].vtf-1;
        line3 = ff.c3[i].vtf-1;
        line4 = ff.c4[i].vtf-1;
        durs1[s][0] = obj.vt[line1].u;
        durs1[s][1] = obj.vt[line1].v;
        durs1[s][2] = obj.vt[line2].u;
        durs1[s][3] = obj.vt[line2].v;
        durs1[s][4] = obj.vt[line3].u;
        durs1[s][5] = obj.vt[line3].v;
        durs1[s][6] = obj.vt[line4].u;
        durs1[s][7] = obj.vt[line4].v;
        s++;
    }
    s=0;
    for(i = 0; i < l-1; i++){
        line1 = ff.c1[i].vnf-1;
        line2 = ff.c2[i].vnf-1;
        line3 = ff.c3[i].vnf-1;
        line4 = ff.c4[i].vnf-1;
        durs2[s][0] = obj.vn[line1].x;
        durs2[s][1] = obj.vn[line1].y;
        durs2[s][2] = obj.vn[line1].z;

        durs2[s][3] = obj.vn[line2].x;
        durs2[s][4] = obj.vn[line2].y;
        durs2[s][5] = obj.vn[line2].z;

        durs2[s][6] = obj.vn[line3].x;
        durs2[s][7] = obj.vn[line3].y;
        durs2[s][8] = obj.vn[line3].z;

        durs2[s][9] = obj.vn[line4].x;
        durs2[s][10] = obj.vn[line4].y;
        durs2[s][11] = obj.vn[line4].z;
        s++;
    }
}

int main(int argc, char *argv[]){
    glutInit(&argc, argv);
    glutInitWindowSize(width,height);
    glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH);
    glutCreateWindow("Character");
    myInit();
    glutDisplayFunc(display);
    glutSpecialFunc(specialKey);
    readFile();
    glClearColor(1,1,1,1);
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    glEnable(GL_LIGHT0);
    glEnable(GL_NORMALIZE);
    glEnable(GL_COLOR_MATERIAL);
    glEnable(GL_LIGHTING);

    glLightfv(GL_LIGHT0, GL_AMBIENT,  light_ambient);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  light_diffuse);
    glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular);
    glLightfv(GL_LIGHT0, GL_POSITION, light_position);

    glMaterialfv(GL_FRONT, GL_AMBIENT,   mat_ambient);
    glMaterialfv(GL_FRONT, GL_DIFFUSE,   mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR,  mat_specular);
    glMaterialfv(GL_FRONT, GL_SHININESS, high_shininess);
    glutMainLoop();
    return EXIT_SUCCESS;
}

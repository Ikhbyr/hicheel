#if !defined(Utilities)
#define Utilities

#include <GL/glu.h>
#include <GL/glut.h>
#include <string.h>
#include <iostream>
#include <vector>
// https://www.one-tab.com/page/r2waW4lpRHyraWTgUQSW_A

using namespace std;

bool ReadFromFile(const char*path, std::vector<std::vector<float>> &vertices, vector<vector<float>> &texture,
                  vector<vector<float>> &normal, std::vector<std::vector<int>> &faces) {
    FILE *file = fopen(path, "r");
    if (file == NULL) {
        printf("Impossible to open the file !\n");
        return false;
    }
    while (1) {
        char lineHeader[128];
        // read the first word of the line
        int res = fscanf(file, "%s", lineHeader);
        if (res == EOF) break;  // EOF = End Of File. Quit the loop.}
        if (strcmp(lineHeader, "v") == 0) {
            float x, y, z;
            vector<float> temp;
            fscanf(file, "%f %f %f\n", &x, &y, &z);
            temp.push_back(x);
            temp.push_back(y);
            temp.push_back(z);
            vertices.push_back(temp);
        } else if (strcmp(lineHeader, "vt") == 0) {
            float x, y, z;
            vector<float> temp;
            fscanf(file, "%f %f %f\n", &x, &y, &z);
            temp.push_back(x);
            temp.push_back(y);
            temp.push_back(z);
            texture.push_back(temp);
        } else if (strcmp(lineHeader, "vn") == 0) {
            float x, y, z;
            vector<float> temp;
            fscanf(file, "%f %f %f\n", &x, &y, &z);
            temp.push_back(x);
            temp.push_back(y);
            temp.push_back(z);
            normal.push_back(temp);
        } else if (strcmp(lineHeader, "f") == 0) {
            int a1, a2, a3, b1, b2, b3, c1, c2, c3, d1, d2, d3;
            vector<int> temp;
            fscanf(file, "%d/%d/%d %d/%d/%d %d/%d/%d %d/%d/%d\n", &a1, &a2, &a3, &b1,
                   &b2, &b3, &c1, &c2, &c3, &d1, &d2, &d3);
            temp.push_back(a1);
            temp.push_back(a2);
            temp.push_back(a3);
            temp.push_back(b1);
            temp.push_back(b2);
            temp.push_back(b3);
            temp.push_back(c1);
            temp.push_back(c2);
            temp.push_back(c3);
            temp.push_back(d1);
            temp.push_back(d2);
            temp.push_back(d3);
            faces.push_back(temp);
        }
    }
}

#endif  // Utilities

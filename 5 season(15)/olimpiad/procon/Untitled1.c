
int count=0;
            for(j=0;j<100;j++){
                    x1=b1;y1=b2;
                    //cout<<"toolloo "<<count<<endl;
                if(x1==c[i] && y1==p[i]){
                    switch(count){
                    case 1:
                        y1++;
                        break;
                    case 2:
                        y1--;
                        break;
                    case 3:
                        x1++;
                        break;
                    case 5:
                        x1--;//cout<<"-1 "<<"0\n";
                        break;
                    case 6:
                        x1--;y1++;//cout<<"-1 "<<"1\n";
                        break;
                    case 7:
                        x1--; y1--;//cout<<"-1 "<<"-1\n";
                        break;
                    case 0:
                        x1++;y1--;//cout<<"1 "<<"-1\n";
                        break;
                    case 4:
                        x1++; y1++;//cout<<"1 "<<"1\n";
                        break;
                    default:
                        break;
                    }
                    if(count==9){
                        max=a[b1-1][b2-1];
                        q1=-1;q2=-1;
                        if(max<a[b1][b2-1]){
                            max2=max;
                            max=a[b1][b2-1];
                            q1=0;q2=-1;
                        }
                        if(max<a[b1+1][b2-1]){
                            max2=max;
                            max=a[b1+1][b2-1];
                            q1=1;q2=-1;
                        }
                        if(max<a[b1+1][b2]){
                            max2=max;
                            max=a[b1+1][b2];
                            q1=1;q2=0;
                        }
                        if(max<a[b1+1][b2+1]){
                            max2=max;
                            max=a[b1+1][b2+1];
                            q1=1;q2=1;
                        }
                        if(max<a[b1][b2+1]){
                            max2=max;
                            max=a[b1][b2+1];
                            q1=0;q2=+1;
                        }
                        if(max<a[b1-1][b2+1]){
                            max2=max;
                            max=a[b1-1][b2+1];
                            q1=-1;q2=1;
                        }
                        if(max<a[b1-1][b2]){
                            max2=max;
                            max=a[b1-1][b2];
                            q1=-1;q2=0;
                        }
                        if(x1+q1<col && x1+q1>=0){
                            x1=x1+q1;
                        };
                        if(y1+q2<row && y1+q2>=0){
                            y1=y1+q2;
                        };
                    }
                    count++;
                    j=0;
                }
            }

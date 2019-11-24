class Matrix{
  render(){
      var field;
      var tiled;
      var number;
      var width;
      var fuckers;
      let req = new XMLHttpRequest();
      req.onreadystatechange = () => {
          if (req.readyState == XMLHttpRequest.DONE) {
              field=JSON.parse(req.responseText).points;
              tiled=JSON.parse(req.responseText).tiled;
              number=JSON.parse(req.responseText).height;
              width=JSON.parse(req.responseText).width;
              fuckers=JSON.parse(req.responseText).teams;
              this.field=field;
              this.tiled=tiled;
              this.number=number;
              this.width=width;
              this.fuckers=fuckers; 
              var cell;
              for(var i=0; i<number; i++){
                  var row=document.createElement("div");
                  row.setAttribute("class","row");
                  row.setAttribute("id","row"+i);
                  document.getElementById("matrix").appendChild(row);
                  for(var j=0; j<width; j++){
                  cell=document.createElement("div");
                  if(tiled[i][j]==2){
                      cell.setAttribute("class","Mytrack");
                      }else if(tiled[i][j]==1){
                      cell.setAttribute("class","Optrack");
                      }else{
                      cell.setAttribute("class","cell");
                      cell.setAttribute("id","cell"+j);
                      }
                  row.appendChild(cell);
                  cell.innerHTML=field[i][j];
                  }
              }

              var agentsJSON=JSON.parse(req.responseText).teams;
              for (const j in agentsJSON[1].agents){
                  console.log(agentsJSON[1].agents[j].y-1);
                  console.log(i);
                  var Myrow=document.getElementById("row"+(agentsJSON[1].agents[j].y-1));
                  var Mycell=Myrow.childNodes[agentsJSON[1].agents[j].x-1];
                  Mycell.setAttribute("class","Myagent");
                  console.log(Mycell);
                  var Oprow=document.getElementById("row"+(agentsJSON[0].agents[j].y-1));
                  var Opcell=Oprow.childNodes[agentsJSON[0].agents[j].x-1];
                  console.log(Opcell);
                  Opcell.setAttribute("class","Opagent");
              }
              this.buj2();
          }
      }    
      req.open("GET", "http://10.22.91.185:8081/status", true);
      // req.open("GET", "https://api.jsonbin.io/b/5dd54f942e22356f234ed37b/latest", true);
      req.send();
  }
  buj2() {
      console.log(" ");
      console.log(" ");
      console.log(" ");
      console.log("Let's get it started yeahhhhh");
      console.log(this.field);
      console.log(this.tiled);
      console.log(this.number);
      console.log(this.width);
      console.log(this.fuckers[1]);
      var x1, y1, id, n;
      var max=-100;
      var maxx, maxy;
      var tmp;
      this.id = this.fuckers[1].teamID;
      for (var i = 0 ; i <= this.fuckers[1].agents.length; i++){ 
          console.log(this.fuckers[1].agents[i].x);
          console.log(this.fuckers[1].agents[i].y);
          x1 = this.fuckers[1].agents[i].x-1;
          y1 = this.fuckers[1].agents[i].y-1;
          console.log(x1+" "+y1);
          console.log(this.tiled[b][a]);
          // n = 3;
          // while(n > 0){
          //     n--;
          // }
          
          for(var a = x1-1; a < x1+2; a++){
              for(var b = y1-1; b < y1+2; b++){
                  if(this.tiled[b][a] !== this.id){
                      if(tmp > max){
                          max = tmp;
                          maxx = a;
                          maxy = b; 
                      }
                  }
              }
          }

          console.log(this.tiled[3][1]);
          console.log("pizdakaaxaghak");
          console.log(max + " "+ maxx +" "+ maxy);
          
      }
      
  }
  // check(a, b, x, y, n){
  //     var tmp;
  //     if(n == 3){
  //         return this.field[a][b];
  //     }
  //     for(var i = a-1; i < a+2 ; i++){
  //         for(var j = b-1; j < b+2; j++){
  //             if(this.id !== this.tiled[i][j] || (i !==  a && j !== b)){
  //                 tmp = check(i, j, a, b, n+1) + this.field[a][b];
  //                 return tmp;
  //             }
  //         }
  //     }
  // }
}
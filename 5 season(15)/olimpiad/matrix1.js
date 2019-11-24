class Matrix{
  render(number){
    var field;
    let req = new XMLHttpRequest();
    req.onreadystatechange = () => {
      if (req.readyState == XMLHttpRequest.DONE) {
        field=JSON.parse(req.responseText).points;
        console.log(field)
        for(var i=0; i<number; i++){
          var row=document.createElement("div");
          row.setAttribute("class","row");
          row.setAttribute("id","row"+i);
          document.getElementById("matrix").appendChild(row);
          for(var j=0; j<number; j++){
            var cell=document.createElement("div");
            cell.setAttribute("class","cell");
            cell.setAttribute("id","cell"+j);
            row.appendChild(cell);
            cell.innerHTML=field[i][j];
          }
        }
      }
    }
  //setInterval(function(){
    req.open("GET", "https://api.jsonbin.io/b/5dd54f942e22356f234ed37b", true);
    req.send();
  }
  //Агентаа будна
  buildAgent(){
    var agentRow=document.getElementById("row2");
    var agentCell=agentRow.childNodes[1];
    agentCell.setAttribute("class", "agent");
  }
  //Агентаа хөдөлгөнө.
  /*moveAgent(){
    for(var i=0; i<10; i++){
      for(var j=0; j<9; j++){
        var agentRow=document.getElementById("row"+i);
        var agentCell=agentRow.childNodes[j].getAttribute("class");
        //var class=agentCell.getAttribute(class);
        if(agentCell==="agent"){
          var pizda=agentRow.childNodes[j];
          pizda.setAttribute("class", "track");
          pizda=agentRow.childNodes[j+1];
          pizda.setAttribute("class", "agent");
          break;
        }
      }
    }
  }*/
  moveAgent(){
    for(var i=0; i<10; i++){
      for(var j=0; j<9; j++){
        var agentRow=document.getElementById("row"+i);
        var agentCell=agentRow.childNodes[j];
        var agentClass=agentCell.getAttribute("class");
        if(agentClass==="agent"){
          agentCell.setAttribute("class", "track");
          var max=this.findMax(i,j);
          //console.log(max.innerHTML);
          max.setAttribute("class","agent");
        }
      }
    }
  }

  findMax(i,j){
  /*  var agentRow=document.getElementById("row"+i);
    var agentCell=agentRow.childNodes[j];
    var max=agentCell;
    console.log(max.innerHTML);
    //-1,-1
    //var tmpRow=document.getElementById("row"+i).previousSibling;
    var tmpRow=document.getElementById("row"+(i-1));
    var tmpCell=tmpRow.childNodes[j-1];
    console.log(tmpCell.innerHTML);
    if(tmpCell.innerHTML>max.innerHTML){
      max=tmpCell;
      console.log(max);
    }
    //0,-1
    tmpCell=tmpRow.childNodes[j];
    console.log(tmpCell.innerHTML);
    if(tmpCell.innerHTML>max.innerHTML){
      max=tmpCell;
      console.log(max);
    }
    //1,-1
    tmpCell=tmpRow.childNodes[j+1];
    console.log(tmpCell.innerHTML);
    if(tmpCell.innerHTML>max.innerHTML){
      max=tmpCell;
      console.log(max);
    }
    //-1,0
    tmpCell=agentRow.childNodes[j-1];
    console.log(tmpCell.innerHTML);
    if(tmpCell.innerHTML>max.innerHTML){
      max=tmpCell;
      console.log(max);
    }
    //1,0
    tmpCell=agentRow.childNodes[j+1];
    console.log(tmpCell.innerHTML);
    if(tmpCell.innerHTML>max.innerHTML){
      max=agentRow.childNodes[j+1];
      console.log(max);
    }
    //
    else console.log("fuck you");
    console.log(max.innerHTML);*/
    var agentRow=document.getElementById("row"+i);
      var agentCell=agentRow.childNodes[j];
      var max=agentCell;
      console.log("baigaa: "+ max.innerHTML);
    for(var x=-1; x<2; x++){
      var tmpRow=document.getElementById("row"+(i+x));
      for(var y=-1; y<2; y++){
        if(j+y>=0){
          var tmpCell=tmpRow.childNodes[j+y];
          console.log(tmpCell.innerHTML);
          if(tmpCell.innerHTML>=max.innerHTML){
            max.innerHTML=tmpCell.innerHTML;
            console.log('ih ni'+max.innerHTML);
          }
        }
      }
    }
    return max;
  }

}

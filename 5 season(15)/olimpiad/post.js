function sendJSON(){ 
               
    let result = document.querySelector('.result'); 
    let type1 = document.querySelector('#type1'); 
    let type2 = document.querySelector('#type2');
    let type3 = document.querySelector('#type3');
    //let type4 = document.querySelector('#type4');
    //let type5 = document.querySelector('#type5');
    var x1 = document.querySelector('#x1');
    var x2 = document.querySelector('#x2');
    let x3 = document.querySelector('#x3');
    
     y1 = document.querySelector('#y1');
    var y2 = document.querySelector('#y2');
    let y3 = document.querySelector('#y3');
    // let y4 = document.querySelector('#y4');
    // let x4 = document.querySelector('#x4');   
    // Creating a XHR object 
    let xhr = new XMLHttpRequest();
    let url = "http://localhost:8081/procon/123/move"; 

    // open a connection 
    xhr.open("POST", url, true); 

    // Set the request header i.e. which type of content you are sending 
    xhr.setRequestHeader("Content-Type", "application/json; charset=UTF-8"); 
    // Create a state change callback 
    xhr.onreadystatechange = function () { 
        if (xhr.readyState === 4 && xhr.status === 200) { 

            // Print received data from server 
            result.innerHTML = this.responseText; 
            console.log("ilgeelee")
        } 
    }; 

    // Converting JSON data to string 
    var data = JSON.stringify({
        "actions": [
          {
              "agentID": 9,
              "type": type1.value,
              "dx": parseInt(x1.value),
              "dy": parseInt(y1.value)
          },
          {
              "agentID": 10,
              "type": type2.value,
              "dx": parseInt(x2.value),
              "dy": parseInt(y2.value)
          }
        ]
      }); 
    document.getElementById("msj").innerHTML = data;
    // Sending data with the request 
    xhr.send(data);
    console.log(data)
}

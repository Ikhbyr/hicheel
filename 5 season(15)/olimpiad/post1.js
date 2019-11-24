function sendJSON(){ 
    const axios = require('axios').default;
    let result = document.querySelector('.result'); 
    let type1 = document.querySelector('#type1'); 
    let type2 = document.querySelector('#type2');
    let type3 = document.querySelector('#type3');
    //let type4 = document.querySelector('#type4');
    //let type5 = document.querySelector('#type5');
    let x1 = document.querySelector('#x1');
    let x2 = document.querySelector('#x2');
    let x3 = document.querySelector('#x3');
    
    let y1 = document.querySelector('#y1');
    let y2 = document.querySelector('#y2');
    let y3 = document.querySelector('#y3');
    // let y4 = document.querySelector('#y4');
    // let x4 = document.querySelector('#x4');   
    // Creating a XHR object 
    let url = "http://10.3.132.190:8081/procon/123/move"; 

    // Converting JSON data to string 
    var data = JSON.stringify({
        "actions": [
          {
              "agentID": 11,
              "type": type1.value,
              "dx": x1.value,
              "dy": y1.value,
              "turn": 1
          },
          {
              "agentID": 12,
              "type": type2.value,
              "dx": x2.value,
              "dy": y2.value
          }
          // {
          //   "agentID": 11,
          //   "type": type3.value,
          //   "dx": x3.value,
          //   "dy": y3.value
          // }
        //   {
        //     "agentID": 10,
        //     "type": type4.value,
        //     "dx": x4.value,
        //     "dy": y5.value
        // },
        // {
        //   "agentID": 11,
        //   "type": type3.value,
        //   "dx": x3.value,
        //   "dy": y3.value
        // }
        ]
      }); 
    document.getElementById("msj").innerHTML = data;
    // Sending data with the request 
    axios.post(url, data)
      .then(function (response) {
        console.log(response);
      })
      .catch(function (error) {
        console.log(error);
    });
}
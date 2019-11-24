window.onload=function()
    {
        let req = new XMLHttpRequest();

        req.onreadystatechange = () => {
            if (req.readyState == XMLHttpRequest.DONE) {
                let tablesJSON=JSON.parse(req.responseText).points;
                let tables=document.getElementById("tables");
                //let tr = trs.getElementsByTagName("tr");
                var mor, td;
                for (const i in tablesJSON)
                {
                    for(const j in tablesJSON){
                        if(i%10==0){
                            mor=document.createElement("tr");
                        }
                        td=document.createElement("td");
                        td.innerHTML=`${tablesJSON[i][j]}`;
                        mor.appendChild(td);
                        tables.appendChild(mor);
                    }
                }
            }
        };

        req.open("GET", "https://api.jsonbin.io/b/5dd54f942e22356f234ed37b", true);
        req.send();
    }
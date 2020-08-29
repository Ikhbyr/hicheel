function sendJSON() {
    let r = 1;
    setInterval(function () {
        let xhr = new XMLHttpRequest();
        let url = "https://sisi.num.edu.mn/schedsel/api/values/insert_sched";
        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                console.log(this.responseText)
            }
        };
        let data = JSON.stringify([{"id":"131832","sid":"d883e570-9e31-4f11-add6-185660ea1834","curid":"2809","grid":"22668"}]);
        xhr.send(data);
    }, 1000
    )
}

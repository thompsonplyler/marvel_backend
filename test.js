let tst_btn = document.getElementById("test")
tst_btn.addEventListener("click", test)

function test(){
    fetch("http://localhost:3000/api/v1/users/", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            user: {
                name: 'Jim',
                password: 'hi',
                email: 'mike@bob.com'
              }
        }

        )
    }).then(r=>r.json()).then(obj=>console.log(obj)).catch(err=>console.log(err))
    console.log("Button clicked.")
}
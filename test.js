let tst_btn = document.getElementById("test")
let lgout_btn = document.getElementById("logout")
let check_btn = document.getElementById("check")
tst_btn.addEventListener("click", test)
lgout_btn.addEventListener("click",logout)
check_btn.addEventListener("click", check)


function test(event){
    event.preventDefault()
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
    }).then(r=>r.json()).then(obj=>{
        window.sessionStorage.accessToken = obj.jwt
        console.log(obj.jwt)}).catch(err=>console.log(err))
    console.log("Button clicked.")
}

function logout(event){
    event.preventDefault()
    window.sessionStorage.clear()
}

function check(){
    console.log(window.sessionStorage.valueOf())
}
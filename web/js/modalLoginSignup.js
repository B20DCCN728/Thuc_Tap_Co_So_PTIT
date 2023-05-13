//Created by Campus

//Get the Modal
var modal = document.getElementsByClassName("modal")[0];
//Get the Modal overlay
var modal_overlay = document.getElementsByClassName("modal_overlay")[0];
//Get the button that open the modal -> login
var labelSignup = document.getElementById("signup");
//Get the button open the modal -> signup
var labelLogin = document.getElementById("login");
//Get the Signup Form 
let loginForm = document.getElementsByClassName("auth-form")[0];
//Get the Login Form 
let signupForm = document.getElementsByClassName("auth-form register")[0];

//Switch Login button
var switchLoginBtn = document.getElementById("switchLoginBtn");
//Switch Register button
var switchSignupBtn = document.getElementById("switchSignupBtn");

//Control back modal button
var controlBackModal = document.getElementsByClassName("auth-form__control-back");

//When the user clicks the button, open the Signup modal
labelSignup.onclick = function() {
    modal.style.display = "flex";
    signupForm.style.display = "block";
    loginForm.style.display = "none";
    
}

//When the user clicks the button, open the Login modal
labelLogin.onclick = function() {
    modal.style.display = "flex";
    loginForm.style.display = "block";
    signupForm.style.display = "none";
}

//When the user clicks the button, switch the Signup Form 
switchSignupBtn.onclick = function() {
    loginForm.style.display = "none";
    signupForm.style.display = "block";
} 

//When the user clicks the button, switch the Login Form
switchLoginBtn.onclick = function() {
    signupForm.style.display = "none";
    loginForm.style.display = "block";
}

//When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if(event.target == modal_overlay) {
        modal.style.display = "none";    
    }
}

// When the user clicks the button, close the modal -> Back the index.html
for(var i = 0;i < controlBackModal.length;i++) {
    controlBackModal[i].addEventListener("click", function() {
        modal.style.display = "none";    
    });
}
    
//When the user click the button Login
function callLoginServlet() {
    var username = document.getElementById("auth-form__login-username").value;
    var password = document.getElementById("auth-form__login-password").value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
          if(this.responseText == "success") {
              window.location.href = "./HomeControl";
          }
          else {
              document.getElementById("auth-form__login-announcement").innerHTML = "Sai Tai Khoan Hoac Mat Khau";
          }
      }
    };
    xhttp.open("POST", "LoginControl", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("username=" + username + "&password=" + password);
}

//When the user click the button Signup
function callSignupServlet() {
    var username = document.getElementById("auth-form__signup-username").value;
    var password = document.getElementById("auth-form__signup-password").value;
    var repassword = document.getElementById("auth-form__signup-repassword").value;
    
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
          if(this.responseText == "success") {
              document.getElementById("auth-form__signup-announcement").innerHTML = "Tạo tài khoản thành công vui lòng đăng nhập";
          }
          else if(this.responseText == "exist") {
              document.getElementById("auth-form__signup-announcement").innerHTML = "Tên tài khoản đã tồn tại vui lòng chọn tên khác!!!";
          }
          else {
              document.getElementById("auth-form__signup-announcement").innerHTML = "Đã có lỗi xảy ra trong quá trình đăng kí vui lòng thử lại sau ít phút!!!";
          }
      }
    };
    
    xhttp.open("POST", "SignupControl", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("username=" + username + "&password=" + password);
}

//When the user clicks the search icon
function callSearchServlet() {
    var searchContent = document.getElementById("searchContent").value;
    var content = "./SearchProductControl?searchContent=" + searchContent;
    window.location.href = content;
}


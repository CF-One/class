

//登录按钮
function loginBtn() {
    let phone=document.getElementById("phone").value.trim();
    let password=document.getElementById("password").value.trim();
    let radio=document.getElementsByName("user");
    if (phoneBlur()&&passwordBlur()){
        for (let i=0;i<=radio.length;i++){
            if (radio[i].checked){
                let user=radio[i].value;
                window.location.href="/servlet/studentLoginServlet?phone="+phone+"&passWord="+password+"&radio="+user;
            }
        }
    }else {
        alert("请检查您的用户名和密码");
    }
}

//学生注册按钮
function registerStudentBtn() {
    let registerPhone=document.getElementById("phone").value.trim();
    let registerPassword=document.getElementById("password").value.trim();
    let registerName=document.getElementById("registerName").value.trim();
    let registerId=document.getElementById("registerId").value.trim();
    let registerSchool=document.getElementById("registerSchool").value.trim();
    if (phoneBlur()&&passwordBlur()&&surePasswordBlur()&&nameBlur()&&idBlur()&&schoolBlur()){
        window.location.href="/servlet/studentRegisterServlet?phone="+registerPhone+"&passWord="+registerPassword+"&registerName="+registerName+"&registerId="+registerId+"&registerSchool="+registerSchool;
    }else {
        alert("请检查您注册信息是否完善");
    }
}
//老师注册按钮
function registerTeacherBtn() {
    let registerPhone=document.getElementById("phone").value.trim();
    let registerPassword=document.getElementById("password").value.trim();
    let registerName=document.getElementById("registerName").value.trim();
    let registerSchool=document.getElementById("registerSchool").value.trim();
    if (phoneBlur()&&passwordBlur()&&surePasswordBlur()&&nameBlur()&&schoolBlur()){
        window.location.href="/servlet/teacherRegisterServlet?phone="+registerPhone+"&passWord="+registerPassword+"&registerName="+registerName+"&registerSchool="+registerSchool;
    }else {
        alert("请检查您注册信息是否完善");
    }
}
//忘记密码下一步按钮
function nextBtn() {
    let phone=document.getElementById("phone").value.trim();
    let name=document.getElementById("registerName").value.trim();
    let school=document.getElementById("registerSchool").value.trim();
    let radio=document.getElementsByName("user");
    if (phoneBlur()&&nameBlur()&&schoolBlur()){
        for (let i=0;i<=radio.length;i++){
            if (radio[i].checked){
                let user=radio[i].value;
                window.location.href="/servlet/forgetPassWordServlet?phone="+phone+"&radio="+user+"&name="+name+"&school="+school;
            }
        }
    }else {
        alert("请检查您填写的信息是否完善");
    }
}
//确认修改密码按钮
function sureUpdate() {
    let registerPassword=document.getElementById("password").value.trim();
    if (passwordBlur()&&surePasswordBlur()){
        window.location.href="/servlet/updatePassWordServlet?&passWord="+registerPassword;
    }else {
        alert("请检查您的信息是否完善");
    }
}
//手机号输入框内容验证
function phoneBlur() {
    let phone=document.getElementById("phone").value.trim();
    let phoneVerification = /^1\d{10}$/;//十一位数字
    if (phone == "") {
        document.getElementById("phoneHint").innerHTML = "手机不能为空";
        return false;
    } else {
        if (!phoneVerification.test(phone)) {
            document.getElementById("phoneHint").innerHTML = "输入11位数字";
            return false;
        } else {
            document.getElementById("phoneHint").innerHTML = "";
            return true;
        }
    }
}
//确认密码输入框内容验证
function surePasswordBlur() {
    let surePassword = document.getElementById("registerSurePassword").value.trim();
    let password = document.getElementById("password").value.trim();
    let passwordVerification = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,12}$/;//6-12位字母或数字
    if (surePassword == "") {
        document.getElementById("registerSurePasswordHint").innerHTML = "密码内容不能为空";
        return false;
    } else {
        if (surePassword!=password) {
            document.getElementById("registerSurePasswordHint").innerHTML = "两次密码不一致";
            return false;
        } else {
            document.getElementById("registerSurePasswordHint").innerHTML = "";
            return true;
        }
    }
}
//密码输入框内容验证
function passwordBlur() {
    let password = document.getElementById("password").value.trim();
    let phoneVerification = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,12}$/;//6-12位字母或数字
    if (password == "") {
        document.getElementById("passwordHint").innerHTML = "密码内容不能为空";
        return false;
    } else {
        if (!phoneVerification.test(password)) {
            document.getElementById("passwordHint").innerHTML = "输入6-12位字母加数字";
            return false;
        } else {
            document.getElementById("passwordHint").innerHTML = "";
            return true;
        }
    }
}
//姓名输入框内容验证
function nameBlur() {
    let registerName = document.getElementById("registerName").value.trim();
    let nameVerification = /^[\u4e00-\u9fa5]{2,4}$/;//2-4位中文
    if (registerName == "") {
        document.getElementById("registerNameHint").innerHTML = "姓名框不能为空";
        return false;
    } else {
        if (!nameVerification.test(registerName)) {
            document.getElementById("registerNameHint").innerHTML = "输入2-4位中文";
            return false;
        } else {
            document.getElementById("registerNameHint").innerHTML = "";
            return true;
        }
    }
}
//学号输入框内容验证
function idBlur() {
    let registerId = document.getElementById("registerId").value.trim();
    let nameVerification = /[0-9][0-9]{9,13}/;//10-14位数字
    if (registerId == "") {
        document.getElementById("registerIdHint").innerHTML = "学号内容不能为空";
        return false;
    } else {
        if (!nameVerification.test(registerId)) {
            document.getElementById("registerIdHint").innerHTML = "输入10-14位数字";
            return false;
        } else {
            document.getElementById("registerIdHint").innerHTML = "";
            return true;
        }
    }
}
//学校输入框内容验证
function schoolBlur() {
    let registerSchool = document.getElementById("registerSchool").value.trim();
    let nameVerification = /^[\u4e00-\u9fa5]{2,16}$/;//2-16位中文
    if (registerSchool == "") {
        document.getElementById("registerSchoolHint").innerHTML = "学校名不能为空";
        return false;
    } else {
        if (!nameVerification.test(registerSchool)) {
            document.getElementById("registerSchoolHint").innerHTML = "输入2-16位中文";
            return false;
        } else {
            document.getElementById("registerSchoolHint").innerHTML = "";
            return true;
        }
    }
}
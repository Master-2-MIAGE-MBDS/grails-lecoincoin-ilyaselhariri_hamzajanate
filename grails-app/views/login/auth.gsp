<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
    <title><g:message code='springSecurity.login.title'/></title>
    <style type="text/css" media="screen">
    @import "compass/css3";

    * { box-sizing: border-box; }

    body {
        font-family: "HelveticaNeue-Light","Helvetica Neue Light","Helvetica Neue",Helvetica,Arial,"Lucida Grande",sans-serif;
        color:white;
        font-size:12px;
        background:#333 url(/images/classy_fabric.png);
    }

    form {
        background:#111;
        width:300px;
        margin:30px auto;
        border-radius:0.4em;
        border:1px solid #191919;
        overflow:hidden;
        position:relative;
        box-shadow: 0 5px 10px 5px rgba(0,0,0,0.2);
    }

    form:after {
        content:"";
        display:block;
        position:absolute;
        height:1px;
        width:100px;
        left:20%;
        background:linear-gradient(left, #111, #444, #b6b6b8, #444, #111);
        top:0;
    }

    form:before {
        content:"";
        display:block;
        position:absolute;
        width:8px;
        height:5px;
        border-radius:50%;
        left:34%;
        top:-7px;
        box-shadow: 0 0 6px 4px #fff;
    }

    .inset {
        padding:20px;
        border-top:1px solid #19191a;
    }

    form h1 {
        font-size:18px;
        text-shadow:0 1px 0 black;
        text-align:center;
        padding:15px 0;
        border-bottom:1px solid rgba(0,0,0,1);
        position:relative;
    }

    form h1:after {
        content:"";
        display:block;
        width:250px;
        height:100px;
        position:absolute;
        top:0;
        left:50px;
        pointer-events:none;
        transform:rotate(70deg);
        background:linear-gradient(50deg, rgba(255,255,255,0.15), rgba(0,0,0,0));

    }

    label {
        color:#666;
        display:block;
        padding-bottom:9px;
    }

    input[type=text],
    input[type=password] {
        width:100%;
        padding:8px 5px;
        background:linear-gradient(#1f2124, #27292c);
        border:1px solid #222;
        box-shadow:
                0 1px 0 rgba(255,255,255,0.1);
        border-radius:0.3em;
        margin-bottom:20px;
    }

    label[for=remember]{
        color:white;
        display:inline-block;
        padding-bottom:0;
        padding-top:5px;
    }

    input[type=checkbox] {
        display:inline-block;
        vertical-align:top;
    }

    .p-container {
        padding:0 20px 20px 20px;
    }

    .p-container:after {
        clear:both;
        display:table;
        content:"";
    }

    .p-container span {
        display:block;
        float:left;
        color:#0d93ff;
        padding-top:8px;
    }

    input[type=submit] {
        padding:5px 20px;
        border:1px solid rgba(0,0,0,0.4);
        text-shadow:0 -1px 0 rgba(0,0,0,0.4);
        box-shadow:
                inset 0 1px 0 rgba(255,255,255,0.3),
                inset 0 10px 10px rgba(255,255,255,0.1);
        border-radius:0.3em;
        background:#0184ff;
        color:white;
        float:right;
        font-weight:bold;
        cursor:pointer;
        font-size:13px;
    }

    input[type=submit]:hover {
        box-shadow:
                inset 0 1px 0 rgba(255,255,255,0.3),
                inset 0 -10px 10px rgba(255,255,255,0.1);
    }

    input[type=text]:hover,
    input[type=password]:hover,
    label:hover ~ input[type=text],
    label:hover ~ input[type=password] {
        background:#27292c;
    }
    </style>
</head>

<body>
<div id="login">
    <div class="inner">
        <div class="fheader"><g:message code='springSecurity.login.header'/></div>

        <g:if test='${flash.message}'>
            <div class="login_message">${flash.message}</div>
        </g:if>



        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
            <h1>Log in</h1>
            <div class="inset">
                <p>
                    <label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
                    <input type="text" class="text_" name="${usernameParameter ?: 'username'}" id="username"/>
                </p>
                <p>
                    <label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
                    <input type="password" class="text_" name="${passwordParameter ?: 'password'}" id="password"/>
                </p>
                <p>
                    <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                    <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
                </p>
            </div>
            <p class="p-container">
                <span>Forgot password ?</span>
                <input type="submit" name="go" id="go" value="Log in">
            </p>
        </form>
    </div>
</div>
<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</body>
</html>












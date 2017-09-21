<!DOCTYPE html>
<html>
    <head>
        <!--<script type="text/javascript">
            if (screen.width <= 800) {
                window.location = "/MobileLogin.html";
            }
        </script>-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="tabIcon" href="palm.ico" />
            <title>Data Assesment</title>
            <asset:stylesheet src="adminProfile.css"/>
    </head>
    <body>
        <div class=leftPanel>
            <div class="profileInfo">
                <img class="img-circle" src="blankPerson.jpg">
                <br>
                <p>${session?.user?.firstName} ${session?.user?.lastName}<p>
            </div>
            <button class="button">Assessment Goals</button>
            <br>
            <button class="button button2">Completed Courses</button>
            <br>
            <g:link controller="user" action="logout">
                <button class="button button2">Log Out</button>
            </g:link>
        </div>
        <div class="rightPanel">
            <div class="newTab">
                <p>Assessment Goals
                  <g:link controller="Assessments" action="create">
                    <button class="add">New<div class="plus"> &oplus;</div></button>
                	  </g:link>
                </p>
            </div>
            <div class="mainArea">
            			<g:each in="${currentAssessment}" var="currentAssessment" status="i">
            			<div class="listings">
                			<h1>${currentAssessment.title}</h1>
                     	<p>Completed: ${currentAssessment.completed}</p>
                     </div>
                		<br/>
            		</g:each>
            </div>
        </div>
    </body>
</html>

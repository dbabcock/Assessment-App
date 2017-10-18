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
            <g:layoutHead/>
    </head>
    <body>
        <div class=leftPanel>
            <div class="profileInfo">
                <g:img class="img-circle" dir="images" file="blankPerson.jpg"/>
                <br>
                <p>${session?.teacher?.firstName} ${session?.teacher?.lastName}<p>
            </div>
            <g:link controller="user" action="home">
            		<button class="button">Home</button>
            </g:link>
            <br>
            <g:link controller="assessments" action="viewMeasuresUser">
            		<button class="button button2">Measures</button>
            </g:link>
            <br>
            <g:link controller="assessments" action="editAssessments">
            		<button class="button button2">Assessments</button>
            </g:link>
            <br>
            <g:link controller="user" action="logout">
                <button class="button button2">Log Out</button>
            </g:link>
        </div>
        <div class="rightPanel">
            	<g:layoutBody/>
        </div>
    </body>
</html>

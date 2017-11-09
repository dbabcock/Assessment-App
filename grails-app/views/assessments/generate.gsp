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
            <asset:stylesheet src="fileDisplay.css"/>
            <asset:javascript src="jspdf.js"/>
            <asset:javascript src="jquery-2.1.3.js"/>
            <asset:javascript src="pdfFromHTML.js"/>
    </head>
    <body>
      <g:if test="${session.teacher == null}">
        ${response.sendRedirect("/")}
      </g:if>
        <!-- right half of the page -->
        <div id="HTMLtoPDF">
          (${indicator.indicatorName}) - ${indicator.indicatorDescription}
          ${measure.measureTitle} - ${assessmentDocTitle}
          Course: ${classes.title}
          Work used: ${}
          Description: ${Assessment_Documentation.summary}
          Target goal: ${targetGoal}
          Needs improvement: ${Assessment_Documentation.needsImprovement}/${Assessment_Documentation.numberOfStudents} (%) :1
          Meets expectations: ${Assessment_Documentation.meetsExpectations}/${Assessment_Documentation.numberOfStudents} (%) :1
          Exceeds expectations: ${Assessment_Documentation.exceedsExpectations}/${Assessment_Documentation.numberOfStudents} (%) :1
          Results: ${Assessment_Documentation.resultComment}
          Summary/Observations: ${Assessment_Documentation.comments}
          Actions: ${Assessment_Documentation.requiredAction}
        </div>
        <a href="#" onclick="HTMLtoPDF()">Download PDF</a>
    </body>
</html>

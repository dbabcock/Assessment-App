<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="adminProfileLayout"/>
        <asset:stylesheet src="adminProfile.css"/>
    </head>
    <body>
    		<div class="newTab">
                <p>Teachers
                  <g:link controller="user" action="register">
                    <button class="add">Register<div class="plus"> &oplus;</div></button>
                </g:link>
                </p>
            </div>
            <div class="mainArea">
            		<g:each in="${User}" var="u" status="i">
            			<div class="listings">
<<<<<<< HEAD
                			<h1>${u.lastName}, ${u.firstName}</h1>
                			<g:if test="${true == u.admin}">
                					<p>Admin</p>
						</g:if>
						<p>Registered: ${u.dateCreated}</p>
						<g:link controller="user" action="edit">
							<button class="add">Edit</button>
						</g:link>
						<g:link controller="user" action="delete">
							<button class="add">Delete</button>
						</g:link>
=======
                			<h1>${i+1}. ${u.lastName}, ${u.firstName}</h1>
                			<p>Registered: ${u.dateCreated}</p>
                      <P>Is Admin: ${u.admin}</p>
>>>>>>> 0a53cfcbd5ff03005958b94ed69b1db2a5d333f9
        				</div>
        				<br/>
        			</g:each>
            </div>
        </div>
    </body>
</html>

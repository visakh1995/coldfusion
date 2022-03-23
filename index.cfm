<!--- [1] COLD FUSION SYNTAX --->


<tagname attribute="value">
<!---   cold fusion beginning.... --->
</tagname>

<!--- output--->
<!--- <cfoutput>#firstname#</cfoutput> --->

<!--- loop through myQuery --->
<!--- <ul> --->
<!---   <cfoutput query = "myQuery"> --->
<!---     <li>#firstname#</li> --->
<!---   </cfoutput> --->
<!--- </ul>  --->

<!--- [2] COLD FUSION INCLUDES --->

<h3>---Includes---</h3>
<!--- <cfinclude template = "included_filename"> --->
<cfinclude  template="header.cfm">
<p>Welcome to cold fusion community</p>
<cfinclude  template="footer.cfm">

<hr>
<!--- [3] CF VARIABLES --->

<h3>--Variables---</h3>
<cfset variable = "hey am variable value,">
<cfoutput>#variable#</cfoutput>

<cfset firstName = "reino august">
<cfoutput>glad to see you <h3>#firstname#</h3></cfoutput>

<!---[3.1] - CF PARAM (if the variable value is not provided)--->

 <cfparam name="person" default = "random guy">
 <cfoutput>#person#</cfoutput>

<!---[3.2] - CF PARAM (if the variable value is provided)--->

 <cfset lastName="joan">
 <cfparam  name="lastName" default = "rony">
 <cfoutput>#lastName#</cfoutput>
 <!---[3.2] - checking if a variable exist or not--->

 <hr>
 <cfif isDefined(lastName)>
   hello #lastName#
 <cfelse>
   hello stranger
 </cfif>
<hr>
<!---  [4] SCOPING YOUR VARIABLE --->

<h2>scope of variable</h2>

<cfset scope.variableName = "example">
<cfoutput>
  #scope.variableName#
</cfoutput>

<cfset session.middleName = "kyle">
<cfoutput>#session.middleName#</cfoutput>
<hr>

<!--- [5] CF IF stattements --->

<h2>conditional statements/if statements</h2>
<cfset surName="Armstrong">
<cfif surName eq "Neils">
  found what im looking for,neil
<cfelseif surName eq "Armstrong">
  we got you Armstrong,lets crack!!
<cfelse>
  abort,wrong path 
</cfif>
<hr>
<p>Not equal to</p>
<cfset officialName = "Telios">
<cfif officialName neq "Tenon">
  actual founder is tenon,please find tenon.
</cfif>
<hr>
<p>Less than</p>
<cfset sales = 2000>
<cfif sales lt 200>
  sales,not up to the mark
<cfelseif sales gt 300>
  sales is getting onto our marginal limit
</cfif>
<hr>
<p>less than or eaual to /greater than or equal to</p>
<cfset count = 2000>
<cfif count gte 4000>
    congrats,entered the correct count
<cfelseif count lte 2000>
   lesser amount
</cfif>

<!--- [6] LOOPS --->

<hr>
<h2>loop</h2>
<p>Index loop</p>
<cfloop from ="1" to ="5" index="i">
   <cfoutput>
       #i# <br>
   </cfoutput>
</cfloop>
<p>step attribute</p>
<cfloop from ="1" to="10" index="i" step="2">
  <cfoutput>
    #i#
  </cfoutput>
</cfloop>
<hr>
<!--- [7] conditional loop --->

<h3>conditional loop</h3>
<cfset exp = true>
<cfloop condition="exp eq true">
  <cfoutput>
    output = #exp# (still in loop) <br>
  </cfoutput>
  <cfif RandRange(1,10) eq 10>
    <cfset exp = "false">
  </cfif>
</cfloop>

<hr>
<!--- <p>query loop</p> --->
<!---<cfquery name="getMovies" datasource = "Entertainment">--->
<!---select top 4 movieName from movies>--->
<!---</cfquery>>--->
<!--- <cfloop query ="getMovies">#movieName#</cfloop> --->
<hr>
<!--- <p>List Loop</p> --->
<!--- <cfloop list = "cold fusion,HTML,XML" index="ListItem" --->
<!--- delimeters=",;"> --->
<!--- <cfoutput> --->
<!---   #ListItem# --->
<!--- </cfoutput> --->
<!--- </cfloop> --->
<hr>
<!--- <p>The file loop</p> --->
<!--- <cfloop list = "#myFile#" index = "fileItem"  --->
<!--- delimeters ="#chr(10)##chr(13)#"> --->
<!---    <cfoutput> --->
<!---      #fileItem# --->
<!---    </cfoutput> --->
<!--- </cfloop> --->
<br>
<hr>
<h3>Com collection/dtructure loop</h3>
<cfset myBooks = StructNew()>
<cfset myVariable = StructInsert(myBooks,"ColdFusion","Coldfusion Mx Bible")>
<cfset myVariable = StructInsert(myBooks,"html", "html Visual quick start")>
<cfloop collection="#myBooks#" item="subject">
  <cfoutput>
 #subject#: #StructFind(myBooks,subject)#<br />
 </cfoutput>
</cfloop>

<!--- database --->
<cfquery datasource="basic">
  select *
  from sakila.actor
</cfquery>

<hr>
<p>query loop</p> 
<cfquery name="getActor" datasource = "basic">
  select *
  from sakila.actor
</cfquery>

<table cellpadding = "5" cellspacing ="7" style ="border: 1px solid black">
  <tr>
     <th>ID</th>
     <th>First Name</th>
     <th>Last Name</th>
     <th>Last Updated</th>
  </tr>
  <cfoutput query = getActor>
    <tr>
      <th>#actor_id#</th>
      <th>#first_name#</th>
      <th>#last_name#</th>
      <th>#last_update#</th>
    </tr>
 </cfoutput>
</table>





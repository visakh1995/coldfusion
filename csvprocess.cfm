<!--- Name your DSN here. Change DSN to your actual DSN. --->
<cfset mydatasource = "DSN">
<!--- You will also need to modify this to fit your needs --->
<cfquery name="daily" datasource="cruddb" dbtype="ODBC" >
   SELECT *
   FROM sakila.info
</cfquery>
   <!--- create some variables to store the dirctory and file name. --->
   <Cfset thisPath = ExpandPath("*.*")>
   <cfset f_dir = "C:/ColdFusion2021/cfusion/wwwroot/test/reports/">

   <!--- I like to use the date and time for a file name, but you can name it anything you like by changing the value below. --->
   <cfset f_name = "#dateformat(now(), 'mmddyy')##timeformat(now(), 'hhmm')#.csv">
   <!--- Lets make the file, and put the first row of Column headings in --->
   <cffile action="WRITE" file="#f_dir##f_name#"
   output="userId, firstName, lastName, email" addnewline="Yes">
   <!--- Now lets loop over the RecordSet and fill in the data --->
   <!--- You will notice that that Commas will get you into trouble. --->
   <!--- So you need to find and replace them before you write them in the CSV file. --->
   <!--- I show you how in the Company name field below --->
   <cfloop query="daily">
   <cffile action="APPEND" file="#f_dir##f_name#"
   output="#REPLACE(userId, ",", "","AlL")#, #firstName#, #lastName#, #email#"
   addnewline="Yes">
   <!--- End the loop here --->
   </cfloop>
   <br>
   <!--- Now give them the URL to the file. You will need to modify this as well. --->
<!---    <cflocation  url="./desk.cfm"> --->
<a href="./reports/#f_name#">Here is the file</a>
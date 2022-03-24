<!--- [1]. Cold fusion lists. --->

<h4>Cold fusion list</h4>
<cfset coldfusion_list = "cold_lists,cold_arrays,cold_structures">

<!--- list length --->

<cfset lengthcf = listLen(coldfusion_list)>
<cfoutput>
    List items  : #coldfusion_list#
    <br>
    List length : #lengthcf#
</cfoutput>

<!--- loop through list --->

<h4>loop through list</h4>
<cfloop list = "#coldfusion_list#" index="i">
    <cfoutput>
        #i#
    </cfoutput>
</cfloop>

<!--- add item to the list,@last@beg@middle --->

<h4>add item to the list</h4>
<cfset addedList = listAppend(coldfusion_list,"cold_functions",":")>
<cfset addedListBeg = listPrepend(coldfusion_list,"cold_beginning")>
<cfset addedListMiddle = listInsertAt(coldfusion_list,"2","cold_middle")>
<cfloop list = "#addedList#" index="i">
    <cfoutput>
        #i#
    </cfoutput>
</cfloop>

<!--- find out list contains given string --->

<h4>Find out the list contains given string</h4>
<cfif listContains(coldfusion_list,"cold_lists")>
    list item exist.
<cfelse>
    list item not exist
</cfif>
<!--- dont want to be case sensitive--->
<!--- <cfif listContainsNoCase(coldfusion_list,"cold_lists")> --->

<!---convert list into array --->
 <h4>list into array</h4> 
<cfset list = "red,orange,yellow,green,blue,violet">  
<cfset arr = listToArray(list)> 
<cfloop array = "#arr#" index = "idx">
    <cfoutput> 
        #idx#
    </cfoutput> 
</cfloop>
<p>checking....</p>
<cfdump var ="#arr#" >

<!--- convert array to list --->
<h4>Array to list</h4>
<cfset myArray = ["google","microsoft","adobe"]>
<cfset myConvertedList = myArray.toList()>
<cfoutput>
    #myConvertedList#
</cfoutput>


<!--- [2]. ARRAYS --->
<hr>
<h3>ARRAYS</h3>
<h4>Creating Array In Cold Fusion</h4>
<cfset seedsArray = ArrayNew(1)>
<!--- <cfset ArrayAppend(array_name,{value}); --->
<cfset ArrayAppend(seedsArray,"seed-1")>
<cfset arrayAppend(seedsArray,"seed-2")>
<cfset ArrayAppend(seedsArray,"seed-3")>
<cfloop array ="#seedsArray#" index="idex">
    <cfoutput>
       #idex#<br>
    </cfoutput>
</cfloop>
<p>checking....</p>
<cfdump var="#seedsArray#">

<!---accessing arrays in cold fusion  --->
<!--- <h4>accessing arrays in cold fusion </h4. --->
<!---     <cfoutput> --->
<!---         #seedsArray[1]# --->
<!---     </cfoutput> --->

<!---Modifying the content of an array--->
<br>
<h4>Modify ontent of an arry</h4>
<cfset stoneArray = ArrayNew(1)>
<cfset modified_1 = ArrayAppend(stoneArray, "stone-2")>
<cfset modified_2 = ArrayAppend(stoneArray, "stone-3")>
<!--- Array append return boolean value,not array --->
<cfset modified_beg = ArrayPrepend(stoneArray,"stone-1")>
<cfset modified_middle = ArrayInsertAt(stoneArray,"2","stone-middler")>
<cfloop array="#stoneArray#" index="indiecx">
<cfoutput> 
#indiecx#<br>
</cfoutput> 
</cfloop>


<!---[3] FUNCTIONS--->
<hr>
<h3>Functions</h3>
<cfset myNumber = RandRange(1,10)>
<cfoutput>
   random :  #myNumber#
</cfoutput>
<br>
<cfoutput>
    direct : #RandRange(1,10)#
 </cfoutput>
<p>checkin...</p>
<cfdump  var =#myNumber#>
<br>
<cfoutput>
    Time : #Now()#
</cfoutput>
<br>
<cfoutput>
    date format : #DateFormat(Now(), "ddd dd mmmm yyyy")#
</cfoutput>

<!---[]REDIRECT  --->
<!--- temporary redirect --->
<!--- <cflocation  url ="./listCustomers.cfm"> --->
<!--- permanant redirect --->
<!--- <cfheader statuscode ="301" statustext = "Moved Permananantly"> --->
<!--- <cfheader name ="location" value = "wwww.gooogle.com"> --->
<!--- <cfabort> --->


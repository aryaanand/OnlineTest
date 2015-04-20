<html>  
      <head>  
      <title>test</title> 
      <script type="text/javascript" src="ajax.js"></script>
      </head>
      <h1><center>Add Subjects</center></h1>
        <body bgcolor="yellow">
            <form action="./addSub" method="post">
                <select onchange="addNew(this.value);">
                    <option value="0" selected>select</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>
                <div id="addNew">
                </div>     
                <%
            String b="1";
            //String msg=request.getParameter("id");
            if(b.equals(request.getParameter("id1")))

             out.println(":Data not entered : Use differnt ID and try again");
            %>
           </form>
       </body>
     </html>
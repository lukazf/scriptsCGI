#!/bin/bash
  
echo "content-type: text/html"
echo
echo 
echo "
  <html> <head> <meta charset='utf-8' /> <title> CGI script </title> </head>
  <body>
  <h1> Digite o nome do usuario que deseja obter informacoes:</h1>
	<td>
		<form>
			<input type="text" name="$usuario" size="40" />
			
		</form> 
	</td>

  "
usuario="`echo $QUERY_STRING | awk -F= '{print $2}'`"
echo "$usuario"
echo "<pre>$( cat /etc/passwd | grep $usuario)</pre>"
echo "
  </body>
  </html>
  "




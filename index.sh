#!/bin/bash

echo "content-type: text/html"
echo
echo
echo "
  <html> <head> <meta charset='utf-8' /> <title> CGI script </title> </head>
  <body>
  <h1> Regras de IPTABLES</h1>
	<h1> </h1>
        <td>
                 <form method='get'>
                        <select name="chain">
                        <option value="INPUT">INPUT</option>
                        <option value="OUTPUT">OUTPUT</option>
                        <option value="FORWARD">FORWARD</option>
			<option value="ALL">ALL</option>
                        </select>

                        <input type="submit" value="Listar">				
			<input type="submit" value="Submeter">
                </form>
        </td>

  "
chain=$(echo $QUERY_STRING | awk -F "&" '{print $1}'| awk -F "=" '{print $1}')

echo iptables -L $chain -nv --line-numbers

echo "<h4>LISTAR IPTABLES</h4>"
echo "<pre>$(sudo iptables -L  -nv --line-numbers)</pre>"
echo 


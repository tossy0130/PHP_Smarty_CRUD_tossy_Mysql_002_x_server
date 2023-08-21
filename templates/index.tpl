<!DOCTYPE html>
<html>
<head>
    <title>{$data.title}</title>
</head>
<body>
    <h1>Smarty CURD APP</h1>
	
    <table>
     <tr>
     <th>ID</th>
     <th>名前</th>
     <th>メール</th>
     </tr>

     {foreach $get_user as $user} 
	<tr>
	   <td>{$user.id}</td>
	   <td>{$user.name}</td>
	   <td>{$user.email}</td>
	</tr>
      {/foreach}
      </table>	
	
      <a href="./create.php">データ挿入</a>

</body>
</html>


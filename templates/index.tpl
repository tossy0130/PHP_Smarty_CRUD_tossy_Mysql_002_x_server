<!DOCTYPE html>
<html>
<head>
    <title>Main index</title>



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
	   <td>{$user.id}
       <span class="i_btn"><a href="delete.php?id={$user.id}">削除</a></span>
       <span class="i_btn"><a href="edit.php?id={$user.id}">変更</a></span>
       </td>
	   <td>{$user.name}</td>
	   <td>{$user.email}</td>
	</tr>
      {/foreach}
      </table>	
	
      <span class="i_btn"><a href="./create.php">データ挿入</a></span>
      
</body>
</html>


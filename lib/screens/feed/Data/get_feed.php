<?php

$mysqli = new mysqli("Hote de serveur","Identifiant","password","Nom_database");
if (mysqli_connect_errno()) {
    printf("Can't connect to SQL Server. Error Code %s\n", mysqli_connect_error($mysqli));
    exit;
}



// Set the default namespace to utf8
$mysqli->query("SET NAMES 'utf8'");
$json   = array();
if($result = $mysqli->query("SELECT *  FROM news")) {

$title = $row["titre"];
$date = $row["date_pub"];
$image = $row["img_news"];
$type = $row["type"];
$id_news = $row["id"];
    
        while ($row=$result->fetch_assoc()) {
        
                 $json[]=array(
                 'titre'=>$row['titre'],
                 'date_pub'=>$row['date_pub'],
                 'img_news'=>$row['img_news'],
                 'type'=>$row['type'],
                 'description'=>$row['description'],
                 'id'=>$row['id']
                 );
          
          
        }
    
}
$result->close();
 
header("Content-Type: text/json");
echo json_encode(array( 'Q22_ListFeed'  =>  $json )); 
 
$mysqli->close(); 
?>
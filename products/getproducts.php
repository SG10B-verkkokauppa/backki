<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$uri = parse_url(filter_input(INPUT_SERVER,'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/',$uri);
$category_id = $parameters[1];

try {
  // avataan tietokantayhteys
  $db = openDb();

  // luodaan sql-käsky ja suoritetaan se
  $sql = "select * from category where id = $category_id";
  $query = $db->query($sql);

  // haetaan tulokset ja tallenetaan ne $category-muuttujaan
  $category = $query->fetch(PDO::FETCH_ASSOC);

  $sql = "select * from product where category_id = $category_id";
  $query = $db->query($sql);
  $products = $query->fetchAll(PDO::FETCH_ASSOC);

  header('HTTP/1.1 200 OK');
  echo json_encode(array(
    "category" => $category['name'],
    "products" => $products
  ));
}
catch (PDOException $pdoex) {
  returnError($pdoex);
}
<?php

$dataArticlesList = [];
$dataCategoriesList = [];
$dataAuthorsList = [];

$dsn = "mysql:host=localhost;dbname=oblog";
$user = "oblog";
$password = "oblog";

$pdo = new PDO($dsn, $user, $password, array(
    PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING
));

$articleRequest = 
"
SELECT * FROM post
";

$categoryRequest = 
"
SELECT * FROM category
";

$authorRequest = 
"
SELECT * FROM author
";

$sth = $pdo->query($articleRequest);
$tmpPosts = $sth->fetchAll(PDO::FETCH_ASSOC);
$sth = $pdo->query($categoryRequest);
$tmpCategories = $sth->fetchAll(PDO::FETCH_ASSOC);
$sth = $pdo->query($authorRequest);
$tmpAuthors = $sth->fetchAll(PDO::FETCH_ASSOC);

foreach ($tmpAuthors as $key => $author) {
    $tmp = new Author($author['name']);
    $dataAuthorsList[$author['id']] = $tmp;
}

foreach ($tmpCategories as $key => $category) {
    $tmp = new Category($category['name']);
    $dataCategoriesList[$category['id']] = $tmp;
}

foreach ($tmpPosts as $post) {
    $tmp = new Article (
        $post['title'],
        $post['content'],
        // $post['author_id']->authorName,
        $post['published_date'],
        // $post['category_id']->categoryName,
    );

    $dataArticlesList[$post['id']] = $tmp;
}

?>
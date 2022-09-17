<?php
$indexCategory = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);
?>

<h1>Articles rangés dans la catégorie <?=$dataCategoriesList[$indexCategory]->categoryName?></h1>

<?php

foreach ($dataArticlesList as $article) {
    if ($dataCategoriesList[$indexCategory]->categoryName === $article->category) { ?>
        <article class="card">
        <div class="card-body">
            <h2 class="card-title"><?= $article->title ?></h2>
            <p class="infos">
            Posté par <a href="#" class="card-link"><?= $article->author ?></a> le <time datetime="<?= $article->date ?>"><?= $article->getDateFr() ?></time> dans <a href="#"
                class="card-link">#<?= $article->category ?></a>
            </p>
            <p class="card-text">
                <?= $article->content ?>
            </p>
        </div>
        </article>
        <?php
    }
}


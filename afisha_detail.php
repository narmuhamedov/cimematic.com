<?php
include ('header.php');
include ('db.php');
?>

<?php
$id = $_GET['id'];
$res = mysqli_query($link,"SELECT * FROM afisha WHERE id=$id");
$row = mysqli_fetch_array($res);
?>
    <div class="container">
        <section class="toc-wrapper">
            <div class="logo-wrapper">
                <div class="logo"><span></span></div>
            </div>


                 
            <div class="content-wrapper">
                <h1>Название - <? echo $row['title']?></h1>
                <ul class="toc">
                    <li>Цена - <? echo $row['cost']?></li>
                    <li>Описание - <? echo $row['description']?></li>
                </ul> <center><iframe src="<? echo $row['video_url']?>" frameborder="0" width="640" height="420"></iframe></center>
            </div>
        </section>
    </div>
    <center><img src="<? echo $row['image']?>" class="center"></center>

<?php include ('footer.php')?>
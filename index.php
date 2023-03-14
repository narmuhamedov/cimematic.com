<?php
include('header.php');
include ('db.php');
?>

  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
        <div class="introtxt">
            <p class="font-xs nospace">Цитаты про кино</p>
    <?php
    $result = mysqli_query($link, "SELECT * FROM quotes");
    $mass = mysqli_fetch_array($result);
    do{
        printf('
        
        <h2 class="heading">%s</h2>
        <p>%s</p>
        ----------------------
     ', $mass['title'], $mass['description']);
    }
    while($mass = mysqli_fetch_array($result))


    ?>

        </div>
    </article>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="center btmspace-50">
      <h2 class="heading">Афиша</h2>
    </div>

      <style>
          * {
              margin: 0;
              box-sizing: border-box;
          }
          body {
              background: #FFF9F2;
          }
          .post-wrap {
              max-width: 1120px;
              margin: 0 auto;
              display: flex;
              justify-content: center;
              flex-wrap: wrap;
          }
          .post-item {
              padding: 10px;
          }
          .post-link {
              text-decoration: none;
              display: block;
          }
          .post-item-wrap {
              overflow: hidden;
              position: relative;
          }
          .post-item img {
              display: block;
              width: 100%;
          }
          .text-wrapper {
              position: absolute;
              display: flex;
              justify-content: flex-end;
              flex-direction: column;
              height: 100%;
              top: 0;
              left: 0;
              z-index: 10;
              width: 86%;
              padding: 20px;
              background: #FFEFD7;
              transform: translate3d(-100%, 0, 0);
              transition: transform .5s cubic-bezier(.33, .02, 0, .93);
          }
          .post-item:hover .text-wrapper {
              transform: translate3d(0, 0, 0);
              transition: transform .5s cubic-bezier(.33, .02, 0, .93) .3s;
          }
          .overlay {
              position: absolute;
              width: 100%;
              height: 100%;
              top: 0;
              left: 0;
              z-index: 5;
              background: #D1AFA6;
              transform: translate3d(-100%, 0, 0);
              transition: transform .4s cubic-bezier(.33, .02, 0, .93) .2s;
          }
          .post-item:hover .overlay {
              transform: translate3d(0, 0, 0);
              transition: transform .5s cubic-bezier(.33, .02, 0, .93);
          }
          .post-cat {
              text-transform: uppercase;
              margin-bottom: 5px;
              color: #000200;
              font-weight: 500;
          }
          .post-title {
              font-size: 12px;
              font-weight: 400;
              color: #4A4A40;
              font-style: italic;
          }
          @media (min-width: 768px) {
              .post-item {
                  flex-basis: 50%;
                  flex-shrink: 0;
              }
          }
          @media (min-width: 960px) {
              .post-item {
                  flex-basis: 33.333333333%;
              }
          }
      </style>
      <?php
        $result_afisha = mysqli_query($link, "SELECT * FROM afisha");
        $row_afisha = mysqli_fetch_array($result_afisha);
        do{
            printf(' <div class="post-wrap">
          <div class="post-item">
              <div class="post-item-wrap">
                  <a href="" class="post-link">
                      <div class="image-wrapper">
                          <img src="%s">
                      </div>
                      <div class="text-wrapper">
                          <div class="post-cat">%s</div>
                          <h3 class="post-title"><h3><button><a href="afisha_detail.php?id=%s">Подробнее</a></button></h3></h3>
                      </div>
                      <div class="overlay"></div></a>
              </div>
          </div>
', $row_afisha['image'], $row_afisha['title'], $row_afisha['id']);
        }while($row_afisha = mysqli_fetch_array($result_afisha));
      ?>




    <!-- ################################################################################################ -->
    <!-- / main body -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/01.png');">
  <section id="testimonials" class="hoc container clear">
    <!-- ################################################################################################ -->
    <div class="center btmspace-50">
      <h2 class="heading">Популярный фильм за неделю</h2>

    </div>

      <!-- -->
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">

</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper coloured">

</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<hr>
<hr>
<hr>
<h1><strong>Популярный фильм за неделю</strong></h1>
<?php
$result_video = mysqli_query($link, "SELECT * FROM film_weeks");
$mass_video = mysqli_fetch_array($result_video);

do{
    printf(' <ul class="nospace group">
      <li class="one_half first">
          <iframe src="%s" frameborder="0" width="1000" height="480"></iframe>
      </li>
    </ul>', $mass_video['video']);
}
while($mass_video = mysqli_fetch_array($result_video));

?>
<?php include('footer.php') ?>

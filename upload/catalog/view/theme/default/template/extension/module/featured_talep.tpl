<h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($taleps as $talep) { ?>
  <div class="talep-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="talep-thumb transition">
      <div class="image"><a href="<?php echo $talep['href']; ?>"><img src="<?php echo $talep['thumb']; ?>" alt="<?php echo $talep['name']; ?>" title="<?php echo $talep['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $talep['href']; ?>"><?php echo $talep['name']; ?></a></h4>
        <p><?php echo $talep['description']; ?></p>
        <?php if ($talep['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($talep['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($talep['price']) { ?>
        <p class="price">
          <?php if (!$talep['special']) { ?>
          <?php echo $talep['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $talep['special']; ?></span> <span class="price-old"><?php echo $talep['price']; ?></span>
          <?php } ?>
          <?php if ($talep['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $talep['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $talep['talep_id']; ?>');"><i class="fa fa-heart"></i></button>
       
      </div>
    </div>
  </div>
  <?php } ?>
</div>

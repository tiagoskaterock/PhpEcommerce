<div class="text-center">
		
	<ul class="pagination justify-content-center">
	  <?php

	  global $count;
	  global $page;

	  for ($i=1; $i <= $count ; $i++) { 
	    if ($page == $i) {
	      ?>
	      <li class="active" ><a href="index?page=<?= $i ?>"><?= $i ?></a></li>
	      <?php
	    }
	    else {
	      ?>
	      <li><a href="index?page=<?= $i ?>"><?= $i ?></a></li>
	      <?php
	    }
	  }
	  ?>
	</ul>

</div>
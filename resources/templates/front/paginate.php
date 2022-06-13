<div class="text-center">
		
	<ul class="pagination justify-content-center">
	  <?php

	  global $count;
	  global $page;

	  // previous button
	  if ($page == 1) {
	  	?>
	  	<li class="disabled"><a href="javascript:void(0)">Previous</a></li>
	  	<?php
	  }
	  else {
	  	?>
	  	<li><a href="index?page=<?= $page - 1 ?>">Previous</a></li>  
	  	<?php
	  }
	  // end previous button

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

	  // next button
	  if ($page == $count) {
	  	?>
	  	<li class="disabled"><a href="javascript:void(0)">Next</a></li>
	  	<?php
	  }
	  else {
	  	?>
	  	<li><a href="index?page=<?= $page + 1 ?>">Next</a></li>  
	  	<?php
	  }
	  // end next button
	  ?>
	</ul>

</div>
<div id="page-wrapper">

    <?php info_message() ?>

    <div class="container-fluid">

        <h1 class="page-header">Product Categories</h1>


        <div class="col-md-4">

            <form action="" method="post">

                <div class="form-group">
                    <label for="title" >Title</label>
                    <input type="text" class="form-control" name="title">
                </div>

                <!--
                <div class="form-group">
                    <label for="description" >Description</label>
                    <input type="text" class="form-control" name="description">
                </div>
            -->

                <div class="form-group">
                    <input name="add_category" type="submit" class="btn btn-primary" value="Add Category">
                </div>      

            </form>

        </div>





        <div class="col-md-8">

            <table class="table">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Title</th>
                    </tr>
                </thead>

                <tbody>
                    <?php admin_categories() ?>
                </tbody>

            </table>

        </div>

    </div> <!-- /.container-fluid -->

</div> <!-- /#page-wrapper -->

<?php add_category() ?>

<?php delete_category() ?>
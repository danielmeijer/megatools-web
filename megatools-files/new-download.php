<html>
    <body>
        <?php include "includes/header.html" ?>
        <!-- Begin page content -->
        <main role="main" class="container">
        <?php 
        $output = shell_exec('date');
        echo $output;
        ?>
        </main>
        <?php include "includes/footer.html" ?>
    </body>
</html>
<?php

$second_last = '';
?>
<html>
<head>
    <title>Create Simple Pagination Using PHP and MySQLi - AllPHPTricks.com</title>
    <link rel="stylesheet" href="<?php echo base_url('css/bootstrap.min.css'); ?>">
</head>
<body>
    <div style="width:700px; margin:0 auto;">

        <h3>Demo Create Simple Pagination Using PHP and MySQLi</h3>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th style='width:50px;'>ID</th>
                    <th style='width:150px;'>Name</th>
                    <th style='width:50px;'>Age</th>
                    <th style='width:150px;'>Department</th>
                </tr>
            </thead>
            <tbody>


                <?php
                     
                    //print_r($result);
                 foreach ($result as $row) { ?>
                    <tr>
                        <td><?php echo $row->id; ?></td>
                        <td><?php echo $row->name; ?></td>
                        <td><?php echo $row->age; ?></td>
                        <td><?php echo $row->dept; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

        <div style='padding: 10px 20px 0px; border-top: dotted 1px #CCC;'>
            <strong>Page <?php echo $page_no." of ".$total_no_of_pages; ?></strong>
        </div>

        <ul class="pagination">
            <li <?php if($page_no <= 1){ echo "class='disabled'"; } ?>>
                <a <?php if($page_no > 1){ echo "href='".site_url("?page_no=".($page_no-1))."'"; } ?>>Previous</a>
            </li>

            <?php
            $adjacents = 2; // Define the variable $adjacents here

            if ($total_no_of_pages <= 10) {  
                for ($counter = 1; $counter <= $total_no_of_pages; $counter++) {
                    if ($counter == $page_no) {
                        echo "<li class='active'><a>$counter</a></li>";
                    } else {
                        echo "<li><a href='".site_url("?page_no=$counter")."'>$counter</a></li>";
                    }
                }
            } elseif ($total_no_of_pages > 10) {
                if ($page_no <= 4) {
                    for ($counter = 1; $counter < 8; $counter++) {
                        if ($counter == $page_no) {
                            echo "<li class='active'><a>$counter</a></li>";
                        } else {
                            echo "<li><a href='".site_url("?page_no=$counter")."'>$counter</a></li>";
                        }
                    }
                    $second_last = $total_no_of_pages - 1;

                    echo "<li><a>...</a></li>";
                    // echo "<li><a href='".site_url("?page_no=$second_last")."'>$second_last</a></li>";
                    echo "<li><a href='".site_url("?page_no=$total_no_of_pages")."'>$total_no_of_pages</a></li>";
                } elseif ($page_no > 4 && $page_no < $total_no_of_pages - 4) {
                    echo "<li><a href='".site_url("?page_no=1")."'>1</a></li>";
                    echo "<li><a href='".site_url("?page_no=2")."'>2</a></li>";
                    echo "<li><a>...</a></li>";
                    for ($counter = $page_no - $adjacents; $counter <= $page_no + $adjacents; $counter++) {
                        if ($counter == $page_no) {
                            echo "<li class='active'><a>$counter</a></li>";
                        } else {
                            echo "<li><a href='".site_url("?page_no=$counter")."'>$counter</a></li>";
                        }
                    }
                    echo "<li><a>...</a></li>";
                    echo "<li><a href='".site_url("?page_no=$second_last")."'>$second_last</a></li>";
                    echo "<li><a href='".site_url("?page_no=$total_no_of_pages")."'>$total_no_of_pages</a></li>";
                } else {
                    echo "<li><a href='".site_url("?page_no=1")."'>1</a></li>";
                    echo "<li><a href='".site_url("?page_no=2")."'>2</a></li>";
                    echo "<li><a>...</a></li>";
                    for ($counter = $total_no_of_pages - 6; $counter <= $total_no_of_pages; $counter++) {
                        if ($counter == $page_no) {
                            echo "<li class='active'><a>$counter</a></li>";
                        } else {
                            echo "<li><a href='".site_url("?page_no=$counter")."'>$counter</a></li>";
                        }
                    }
                }
            }
            ?>

            <li <?php if($page_no >= $total_no_of_pages){ echo "class='disabled'"; } ?>>
                <a <?php if($page_no < $total_no_of_pages) { echo "href='".site_url("?page_no=".($page_no+1))."'"; } ?>>Next</a>
            </li>
            <?php if($page_no < $total_no_of_pages) { ?>
                <li><a href='<?php echo site_url("?page_no=$total_no_of_pages"); ?>'>Last &rsaquo;&rsaquo;</a></li>
            <?php } ?>
        </ul>

        <br /><br />
        <a href="https://www.allphptricks.com/create-simple-pagination-using-php-and-mysqli/"><strong>Tutorial Link</strong></a> <br /><br />
        For More Web Development Tutorials Visit: <a href="https://www.allphptricks.com/"><strong>AllPHPTricks.com</strong></a>
    </div>
</body>
</html>

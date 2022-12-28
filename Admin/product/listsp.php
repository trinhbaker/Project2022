<div class="row">
    <div class="row formtitle">
        <h1>List sản phẩm</h1>
    </div>
    <div class="row  formcontent">
        <div class="row sanpham mb">
            <form method="get" style="width: 200px; float:right">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search..." id="s" name="s">
                </div>
            </form>
            <table>
                <thead>
                    <tr>
                        <th>Chọn</th>
                        <th>Tên sản phẩm</th>
                        <th>Tên danh mục</th>
                        <th>Hình ảnh</th>
                        <th>Giá</th>
                        <th>Ngày cập nhật</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $limit = 5;
                    if (!isset($_GET['page'])) {
                        $page = 1;
                    } else {
                        $page = $_GET['page'];
                    }
                    $firstIndex = ($page - 1) * $limit;
                    $s = "";
                    if (isset($_GET['s'])) {
                        $s = $_GET['s'];
                    }
                    $additional = "";
                    if (!empty($s)) {
                        $additional = 'productname like "%' . $s . '%"';
                        $search = search($additional, $limit, $firstIndex);
                    } else {
                        $search =  searchelse($limit, $firstIndex);
                    }

                    if (isset($search)) {
                        foreach ($search as $value) {
                            echo '
                        <tr>
                        <td><input type="checkbox" name="chon" id="' . $value['product_id'] . '"></td>
                        <td>' . $value['productname'] . '</td>
                        <td>' . $value['category_name'] . '</td>
                        <td><img src="' . $value['thumbnail'] . '"style="width:50px"></td>
                        <td>' . $value['price'] . '</td>
                        <td>' .  $value['update_at']  . '</td>
                        <td><a href="index.php?act=suasp&id=' . $value['product_id'] . '"><input type="button" value="Sửa"></a> <a href="index.php?act=xoasp&id=' . $value['product_id'] . '"><input type="button" value="Xóa"></a></td>
                    </tr>';
                        }
                    }
                    ?>
                </tbody>
            </table>

        </div>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <?php
                if ($page > 1) {
                    echo '<li class="page-item">
                        <a class="page-link" href="?page='.($page-1).'" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                        </a>
                        </li>';
                }
                if (!empty($s)) {
                    $sql = 'select count(*) from sanpham1 where ' . $additional . '';
                } else {
                    $sql = 'select count(*) from sanpham1';
                }
                $results = pdo_query($sql);
                $record= $results['0']['count(*)'];
                $num_of_Page = ceil($record / $limit);
                for ($i = 1; $i <= $num_of_Page; $i++) {
                echo '<li class="page-item">' .
                    '<a class="page-link" href="index.php?act=listsp?page=' . $i . '&s=' . $s . '">' . $i . '</a></li>';
                }
                if ($page < $num_of_Page) {
                    echo '<li class="page-item">
                            <a class="page-link" href="index.php?act=listsp?page=' . ($page + 1) . '" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                            </a>
                        </li>';
                }
                ?>
            </ul>
        </nav>
        <div class="row mr">
            <input type="button" value="Chọn tất cả">
            <input type="button" value="Bỏ chọn tất cả">
            <a href="#"><input type="button" value="Xóa"></a>
            <a href="index.php?act=addsp"><input type="button" value="Thêm mới"></a>
        </div>

    </div>
</div>
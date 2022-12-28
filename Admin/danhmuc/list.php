<div class="row">
    <div class="row formtitle">
        <h1>List danh mục</h1>
    </div>
    <div class="row  formcontent">
        <div class="row mb danhmuc">
            <table>
                <thead>
                    <tr>
                        <th>Chọn</th>
                        <th>Mã danh mục</th>
                        <th>Tên danh mục</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if (isset($listdm)) {
    
                        foreach ($listdm as $value) {
                            echo '
                        <tr>
                        <td><input type="checkbox" name="chon" id="' . $value['id'] . '"></td>
                        <td>' . $value['id'] . '</td>
                        <td>' . $value['name'] . '</td>
                        <td><a href="index.php?act=suadm&id=' . $value['id'] . '"><input type="button" value="Sửa"></a>&nbsp
                        <a href="index.php?act=xoadm&id=' . $value['id'] . '"><input type="button" value="Xóa"></a></td>
                    </tr>';
                        }
                    }
                    ?>
                </tbody>
            </table>
        </div>
        <div class="row mr">
            <input type="button" value="Chọn tất cả">
            <input type="button" value="Bỏ chọn tất cả">
            <a href="#"><input type="button" value="Xóa"></a>
            <a href="index.php?act=adddm"><input type="button" value="Thêm mới"></a>
        </div>

    </div>
</div>
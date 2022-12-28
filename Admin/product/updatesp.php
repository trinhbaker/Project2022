    <div class="row">
        <div class="row formtitle">
            <h1>Update sản phẩm</h1>
        </div>

        <div class="row  formcontent">
            <form action="index.php?act=updatesp" method="POST">
                <div class="row mb">
                    <lable>Tên Sản phẩm</lable>
                    <input type="text" name="productname">
                </div>
                <div class="row mb">
                    Danh mục sản phẩm</br>
                    <select class="form-control" name="id_dm" id="id_dm">
                        <option>--Lua chon danh muc--</option>
                        <?php
                        $categorylist = listoption();
                        foreach ($categorylist as $item) {
                            if ($item["id"] == $id_dm) {
                                echo '<option selected value="' . $item['id'] . '">' . $item['name'] . '</option>';
                            } else {
                                echo '<option value="' . $item['id'] . '">' . $item['name'] . '</option>';
                            }
                        }
                        ?>
                    </select>
                </div>
                <div class="row mb">
                    Giá bán</br>
                    <input type="number" name="price">
                </div>
                <div class="row mb">
                    Link hình ảnh</br>
                    <input type="text" name="thumbnail">
                </div>
                <div class="row mb">
                    Nội dung</br>
                    <textarea name="content" id="" cols="30" rows="10"></textarea>
                </div>
                <div class="row mr">
                    <input type="text" name="id" value="<?= $sp['product_id'] ?>" hidden="true">
                    <a href="index.php?act=updatedm"><input type="submit" name="update" value="Update"></a>
                    <input type="reset" name="reset" value="Đặt lại">
                    <a href="index.php?act=list"><input type="button" name="list" value="Danh sách"></a>
                </div>
            </form>
        </div>
    </div>
    </div>
    <div class="row">
        <div class="row formtitle">
            <h1>Thêm mới sản phẩm</h1>
        </div>
        <div class="row  formcontent">
            <form action="index.php?act=addsp" method="POST">
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
                    <input type="submit" name="themmoi" value="Thêm">
                    <input type="reset" name="reset" value="Đặt lại">
                    <a href="index.php?act=listsp"><input type="button" name="list" value="Danh sách"></a>
                </div>
            </form>
        </div>
    </div>
    </div>
    <div class="row">
        <div class="row formtitle">
            <h1>Thêm mới danh mục</h1>
        </div>

        <div class="row  formcontent">
            <form action="index.php?act=updatedm" method="POST">
                <div class="row mb">
                    Mã Danh Mục</br>
                    <input type="text" name="maloai" value="<?= $dm['id'] ?>" disabled>
                </div>
                <div class="row mb">
                    Tên Danh Mục</br>
                    <input type="text" name="name" value="<?= $dm['name'] ?>">
                </div>
                <div class="row mr">
                    <input type="text" name="id" value="<?= $dm['id'] ?>" hidden="true">
                    <a href="index.php?act=updatedm"><input type="submit" name="update" value="Update"></a>
                    <input type="reset" name="reset" value="Đặt lại">
                    <a href="index.php?act=list"><input type="button" name="list" value="Danh sách"></a>
                </div>
            </form>
        </div>
    </div>
    </div>
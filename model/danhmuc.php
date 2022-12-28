<?php
function insert_danhmuc($name){
    $sql = "insert into dmsanpham1(name) values ('$name')";
    pdo_execute($sql);
}
function list_danhmuc(){
    $sql = 'select*from dmsanpham1';
    $listdm = pdo_query($sql);
    return $listdm;
}
function delete_danhmuc($id)
{
    $sql = 'delete from dmsanpham1 where id=' . $id;
    pdo_execute($sql);
}
function edit_danhmuc($id)
{
    $sql = 'select * from dmsanpham1 where id=' . $id;
    $dm = pdo_query_one($sql);
    return $dm;
}
function update_danhmuc($name, $id)
{
    $sql = 'update dmsanpham1 set name ="' . $name . '" where id=' . $id;
    pdo_execute($sql);
}


?>
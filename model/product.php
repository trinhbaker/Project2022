<?php
function insert_product($productname, $id_dm, $price, $thumbnail, $content, $update_at){
    $sql = "insert into sanpham1(productname, id_dm, price, thumbnail, content, update_at) 
     values ('$productname','$id_dm', '$price','$thumbnail','$content','$update_at')";
    pdo_execute($sql);
}
function list_product(){
    $sql = 'select 
            sanpham1.product_id, 
            sanpham1.productname,
            sanpham1.price,
            sanpham1.thumbnail,
            sanpham1.update_at,
            dmsanpham1.name category_name 
            from sanpham1 left join dmsanpham1 
            on sanpham1.id_dm=dmsanpham1.id';         
    $listsp = pdo_query($sql);
    return $listsp;
}
function delete_product($id)
{
    $sql = 'delete from sanpham1 where product_id=' . $id;
    pdo_execute($sql);
}
function edit_product($id)
{
    $sql ='select 
                sanpham1.product_id, 
                sanpham1.productname,
                sanpham1.price,
                sanpham1.thumbnail,
                sanpham1.update_at,
                dmsanpham1.name category_name 
                from sanpham1 left join dmsanpham1 
                on sanpham1.id_dm=dmsanpham1.id    where product_id=' . $id;
    $sp = pdo_query_one($sql);
    return $sp;
}
function update_product($id,$productname, $id_dm, $price, $thumbnail, $content, $update_at)
{
    
    $sql = 'update sanpham1 set productname = "' . $productname . '", id_dm="' . $id_dm . '",price="' . $price . '" 
     ,thumbnail="' . $thumbnail . '",content="' . $content . '" ,update_at="' . $update_at . '" where product_id=' . $id;
    pdo_execute($sql);
}
function listoption()
{
    $sql = 'select * from dmsanpham1';
    $categorylist = pdo_query($sql);
    return $categorylist;
}
function search($additional,$limit, $firstIndex){
  $sql = 'select
           sanpham1.product_id,
           sanpham1.productname,
           sanpham1.price,
           sanpham1.thumbnail,
           sanpham1.update_at,
           dmsanpham1.name category_name
           from sanpham1 left join dmsanpham1
           on sanpham1.id_dm=dmsanpham1.id
           where ' . $additional . '
           LIMIT ' . $limit . ' OFFSET ' . $firstIndex;
           $search= pdo_query($sql);
           return $search;
           } 
function searchelse($limit, $firstIndex) {
           $sql = 'select
           sanpham1.product_id,
           sanpham1.productname,
           sanpham1.price,
           sanpham1.thumbnail,
           sanpham1.update_at,
           dmsanpham1.name category_name
           from sanpham1 left join dmsanpham1
           on sanpham1.id_dm=dmsanpham1.id
           LIMIT ' . $limit . ' OFFSET ' . $firstIndex;
    
    $searchelse=pdo_query($sql);
    return $searchelse;
           }  

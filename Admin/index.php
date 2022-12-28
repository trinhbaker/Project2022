<?php
include "header.php";
include "../db/dbhelp.php";
include "../model/danhmuc.php";
include "../model/product.php";
//controller
if (isset($_GET['act'])) {
    $act = $_GET['act'];
    switch ($act) {
        case 'adddm':
            if (!empty($_POST['themmoi'])) {
                $name = $_POST["name"];
                if (!empty($name)) {
                    insert_danhmuc($name);
                }
            }
            include "danhmuc/adddm.php";
            break;

        case 'list':
            $listdm = list_danhmuc();
            include "danhmuc/list.php";
            break;
        case 'xoadm':
            if (isset($_GET['id'])) {
                $id = $_GET['id'];
                delete_danhmuc($id);
            }
            $listdm = list_danhmuc();
            include "danhmuc/list.php";
            break;

        case 'suadm':
            if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $dm= edit_danhmuc($id);
            }
            include "danhmuc/update.php";
            break;

        case 'updatedm':
            if (isset($_POST['update']) && ($_POST['update'])) {
            $id = $_POST['id'];
            $name = $_POST['name'];
            update_danhmuc($name, $id);
            }
            $listdm = list_danhmuc();
            include "danhmuc/list.php";
            break;

        case 'addsp':
            if (!empty($_POST['themmoi'])) {
                    if (isset($_POST["productname"])) {
                        $productname = $_POST["productname"];
                        $productname = str_replace('"', '\\"', $productname);
                    }
                    if (isset($_POST["product_id"])) {
                        $product_id = $_POST["product_id"];
                    }
                    if (isset($_POST["price"])) {
                        $price = $_POST["price"];
                    }
                    if (isset($_POST["thumbnail"])) {
                        $thumbnail = $_POST["thumbnail"];
                    }
                    if (isset($_POST["id_dm"])) {
                        $id_dm = $_POST["id_dm"];
                    }
                    if (isset($_POST["content"])) {
                        $content = $_POST["content"];
                        $content = str_replace('"', '\\"', $content);
                    }
            }
            if (!empty($productname)) {
            $update_at = date("Y-m-d");
            insert_product($productname, $id_dm, $price, $thumbnail, $content, $update_at); 
           }
            include "product/addsp.php";
            break;

        case 'listsp':
            $listsp = list_product();
            include "product/listsp.php";
            break;

        case 'xoasp':
            if (isset($_GET['id'])) {
                $id = $_GET['id'];
                delete_product($id);
            }
            $listsp = list_product();
            include "product/listsp.php";
            break;
        case 'suasp':
            if (isset($_GET['id'])) {
                $id = $_GET['id'];
                $sp=edit_product($id);
                if ($sp != null) {
                    $productname = $category["productname"];
                    $price = $category["price"];
                    $thumbnail = $category["thumbnail"];
                    $content = $category["content"];
                    $id_dm =  $category["id_dm"];
                }
            }
            $listsp = list_product();
            include "product/updatesp.php";
            break;

        case 'updatesp':
            if (isset($_POST['updatesp']) && ($_POST['updatesp'])) {
                $update_at = date("Y-m-d");
                $id = $_POST['product_id'];
                $name = $_POST['productname'];
                $id_dm =$_POST['id_dm'];
                $price = $_POST["price"];
                $thumbnail = $_POST["thumbnail"];
                $content = $_POST["content"];
                update_product($id,$productname, $id_dm, $price, $thumbnail, $content, $update_at);
            }
            $listsp = list_product();
            include "product/listsp.php";
            break;


        default:
            include "home.php";
            break;
    }
} else {
    include "home.php";
}
include "footer.php";

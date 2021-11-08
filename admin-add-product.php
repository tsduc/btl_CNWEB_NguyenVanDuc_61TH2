<?php
include("check-logged.php");
$user = checkLoggedUser();
include("lib_db.php");
//get input
$fields = "cid,avatar,img,discount,percent,price,name,size,color,gift,payment_type,category_name";
$data = array();
$cid = isset($_REQUEST["cid"]) ? $_REQUEST["cid"] : 0;
$avatar = isset($_REQUEST["avatar"]) ? $_REQUEST["avatar"] : "";
$img = isset($_REQUEST["img"]) ? $_REQUEST["img"] : "";
$name = isset($_REQUEST["name"]) ? $_REQUEST["name"] : "";
$discount = isset($_REQUEST["discount"]) ? $_REQUEST["discount"] : "";
$percent = isset($_REQUEST["percent"]) ? $_REQUEST["percent"] : "";
$size = isset($_REQUEST["size"]) ? $_REQUEST["size"] : "";
$color = isset($_REQUEST["color"]) ? $_REQUEST["color"] : "";
$gift = isset($_REQUEST["gift"]) ? $_REQUEST["gift"] : "";
$payment = isset($_REQUEST["payment_type"]) ? $_REQUEST["payment_type"] : "";
$categoryName = isset($_REQUEST["category_name"]) ? $_REQUEST["category_name"] : "";
//tao sql
$sql = "insert into grab_content 
	(cid,avatar,img,discount,percent,price,name,size,color,gift,payment_type,category_name)
	values 
	('{$cid}','{$avatar}','{$img}','{$discount}','{$percent}','','{$name}','{$size}','{$color}','{$gift}','{$payment}','{$categoryName}')";
//cid,img,title,code,description,body,status
//echo $sql;exit();
$ret = exec_update($sql);
//print_r($ret);exit();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/logodmx.png">
    <title>ADMIN THÊM SẢN PHẨM</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/respon.css">
    <link rel="stylesheet" href="css/caroucell.css">

</head>

<body>
    <div class="wrapper">
        <!-- header -->
        <div class="header">
            <div class="header-top">
                <a href="#"><img src="images/banne-top-1200-44-1200x44-1.png" alt=""></a>
            </div>
            <div class="header-mid">
                <section>
                    <div class="section-logodmx">
                        <a href="./admin.php"><img class="logo-dmx" src="images/Capturedmx.PNG" alt=""></a>
                    </div>
                    <div class="space"></div>
                    <div class="section-address">
                        <a href="#">
                            Xem giá, tồn kho tại:
                            <span>Hồ Chí Minh <img src="images/Capturse-removebg-preview.png" alt=""></span>
                        </a>
                    </div>
                    <div class="section-search">
                        <input type="text" name="" id="" placeholder="Bạn tìm gì...">
                        <button type="submit">
                            <img src="images/z2827202144146_2252214e2fab261d036a55ebf218fd88.jpg" alt="">
                        </button>
                    </div>
                    <div class="section-cart">
                        <a href="#">
                            <img src="images/Captudre-removebg-preview.png" alt="">
                            <span>Giỏ hàng</span>
                        </a>
                    </div>
                    <a href="#" class="order-history">Lịch sử đơn hàng</a>
                    <div class="space"></div>
                    <div class="n-space"></div>
                    <div class="header-content">
                        <div class="space"></div>
                        <a href="#" class="advise">Tư vấn <br> chọn mua</a>
                        <div class="space"></div>
                        <a href="#" class="promotion">Khuyễn mãi</a>
                        <div class="space"></div>
                        <a href="#" class="kitchen">Vào bếp</a>
                    </div>


                </section>
            </div>
            <div class="header-bot">
                <section>
                    <div class="section-category">
                        <div class="category">
                            <span>Danh mục<i class="fas fa-sort-down"></i></span>
                            <a class="all" href="#">Tất cả nhóm hàng</a>
                            <div class="banner-top-left">
                                <ul>
                                    <li id="show-tivi">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 2 OFFSET  0"; ?>
                                        <?php $results = select_list($sql); ?>
                                        <?php $arrtivi = (explode(" ; ", $results[0]["divice"])); ?>
                                        <?php $arrDtivi = (explode(" ; ", $results[0]["divice_first"])); ?>
                                        <?php $arrDtivie = (explode(" ; ", $results[0]["divice_second"])); ?>
                                        <?php $arrloa = (explode(" ; ", $results[1]["divice"])); ?>
                                        <?php $arrDloa = (explode(" ; ", $results[1]["divice_first"])); ?>
                                        <div class="show-right">
                                            <span class="tivi-volume">
                                                <img src="images/z2827202144074_04fac587c34448d24f3cb03bc447a50c.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrtivi[0]; ?></a>,
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrloa[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-tivi">
                                            <div>
                                                <p><?php echo $arrtivi[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrtivi[3]; ?><i class="fas fa-caret-right"></i></a></p>
                                                <?php for ($i = 0; $i < 10; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDtivi[$i]; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrloa[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrloa[2]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arrDloa as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrtivi[2]; ?></p>
                                                <?php foreach ($arrDtivie as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-fridge">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 2 OFFSET  2"; ?>
                                        <?php $results = select_list($sql); ?>
                                        <?php $arrDfridge = (explode(" ; ", $results[0]["divice"])); ?>
                                        <?php $arrfridge = (explode(" ; ", $results[0]["divice_first"])); ?>
                                        <?php $arrDfridged = (explode(" ; ", $results[1]["divice"])); ?>
                                        <?php $arrfridged = (explode(" ; ", $results[1]["divice_first"])); ?>
                                        <div class="show-right">
                                            <span class="fridge">
                                                <img src="images/z2827202143526_2a77f1aa1da1eecfd44a94e8d295cf8e.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDfridge[0]; ?></a>,
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDfridged[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-fridge">
                                            <div>
                                                <p><?php echo $arrDfridge[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDfridge[2]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arrfridge as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDfridged[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDfridged[2]; ?><i class="fas fa-caret-right"></i></a></p>
                                                <?php foreach ($arrfridged as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-washing">
                                        <div class="show-right">
                                            <?php $sql = "SELECT * FROM `grab_category` LIMIT 2 OFFSET  17"; ?>
                                            <?php $results = select_list($sql); ?>
                                            <?php $arrDwashing = (explode(" ; ", $results[0]["divice"])); ?>
                                            <?php $arrwashing = (explode(" ; ", $results[0]["divice_first"])); ?>
                                            <?php $arrwashinge = (explode(" ; ", $results[0]["divice_second"])); ?>
                                            <?php $arrDdryer = (explode(" ; ", $results[1]["divice"])); ?>
                                            <?php $arrdryer = (explode(" ; ", $results[1]["divice_first"])); ?>
                                            <span class="washing">
                                                <img src="images/z2827202143405_ecd9e168d97af76d203777891218c6c8.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDwashing[0]; ?></a>,
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDdryer[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-washing">
                                            <div>
                                                <p><?php echo $arrDwashing[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDwashing[3]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arrwashing as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDdryer[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDdryer[2]; ?><i class="fas fa-caret-right"></i></a></p>
                                                <?php foreach ($arrdryer as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDwashing[2]; ?></p>
                                                <?php foreach ($arrwashinge as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-harmonic">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 2 OFFSET  19"; ?>
                                        <?php $results = select_list($sql); ?>
                                        <?php $arrDconditioner = (explode(" ; ", $results[0]["divice"])); ?>
                                        <?php $arrconditioner = (explode(" ; ", $results[0]["divice_first"])); ?>
                                        <?php $arrDfandh = (explode(" ; ", $results[1]["divice"])); ?>
                                        <?php $arrfandh = (explode(" ; ", $results[1]["divice_first"])); ?>
                                        <?php $arrfandhe = (explode(" ; ", $results[1]["divice_second"])); ?>
                                        <div class="show-right" id="show-harmonic">
                                            <span class="harmonic">
                                                <img src="images/z2827202142942_5f8afbc42f31ecca41ed0e1a2ea3a1f1.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDconditioner[0]; ?></a>,
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDfandh[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-harmonic">
                                            <div>
                                                <p><?php echo $arrDconditioner[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDconditioner[2]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arrconditioner as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDfandh[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDfandh[3]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arrfandh as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDfandh[2]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDfandh[3]; ?><i class="fas fa-caret-right"></i></a></p>
                                                <?php foreach ($arrfandhe as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-electool">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 2 OFFSET  4"; ?>
                                        <?php $results = select_list($sql); ?>
                                        <?php $arrDgd = (explode(" ; ", $results[0]["divice"])); ?>
                                        <?php $arrgd = (explode(" ; ", $results[0]["divice_first"])); ?>
                                        <?php $arrgde = (explode(" ; ", $results[0]["divice_second"])); ?>
                                        <?php $arrgdt = (explode(" ; ", $results[0]["divice_thỉrd"])); ?>
                                        <?php $arrgdu = (explode(" ; ", $results[0]["divice_fourth"])); ?>
                                        <?php $arrDdc = (explode(" ; ", $results[1]["divice"])); ?>
                                        <?php $arrdcu = (explode(" ; ", $results[1]["divice_first"])); ?>
                                        <?php $arrduce = (explode(" ; ", $results[1]["divice_second"])); ?>
                                        <div class="show-right">
                                            <span class="elec-tool">
                                                <img src="images/z2827202141363_2ede65c36dfe8c2875998368bc57b045.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDgd[0]; ?></a>,
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDdc[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-electool">
                                            <div class="pots">
                                                <p><?php echo $arrDgd[1]; ?></p>
                                                <?php for ($i = 0; $i < 4; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrgd[$i]; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDgd[2]; ?></p>
                                                <?php for ($i = 4; $i < 10; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrgd[$i]; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div class="stove">
                                                <p><?php echo $arrDgd[3]; ?></p>
                                                <?php for ($i = 0; $i < 6; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrgde[$i]; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDgd[4]; ?></p>
                                                <?php for ($i = 6; $i < 10; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrgde[$i]; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div class="electric">
                                                <p><?php echo $arrDgd[5]; ?></p>
                                                <?php foreach ($arrgdt as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div class="healthy">
                                                <p><?php echo $arrDgd[6]; ?></p>
                                                <?php for ($i = 0; $i < 6; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrgdu[$i]; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDgd[7]; ?> <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDgd[8]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php for ($i = 6; $i < 10; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrgdu[$i]; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div class="repair">
                                                <p><?php echo $arrDdc[1]; ?></p>
                                                <?php foreach ($arrdcu as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDdc[2]; ?></p>
                                                <?php foreach ($arrduce as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-kitchen-utensils">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 2 OFFSET  6"; ?>
                                        <?php $results = select_list($sql); ?>
                                        <?php $arrDpot = (explode(" ; ", $results[0]["divice"])); ?>
                                        <?php $arrstove = (explode(" ; ", $results[0]["divice_first"])); ?>
                                        <?php $arrstovee = (explode(" ; ", $results[0]["divice_second"])); ?>
                                        <?php $arrstovet = (explode(" ; ", $results[0]["divice_thỉrd"])); ?>
                                        <?php $arrstoveu = (explode(" ; ", $results[0]["divice_fourth"])); ?>
                                        <?php $arrDmom = (explode(" ; ", $results[1]["divice"])); ?>
                                        <?php $arrmom = (explode(" ; ", $results[1]["divice_first"])); ?>
                                        <?php $arrmome = (explode(" ; ", $results[1]["divice_second"])); ?>
                                        <div class="show-right">
                                            <span class="kitchen-utensils">
                                                <img src="images/z2827202140284_6f8ccaddba3935205c429fbb5d9341d8.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDpot[0]; ?></a>,
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDmom[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-kitchen-utensils">
                                            <div>
                                                <p><?php echo $arrDpot[1]; ?></p>
                                                <?php for ($i = 0; $i < 6; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrstove[$i]; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDpot[2]; ?></p>
                                                <?php for ($i = 6; $i < 10; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrstove[$i]; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div class="kitch">
                                                <div class="kitchenn">
                                                    <p><?php echo $arrDpot[3]; ?></p>
                                                </div>
                                                <div class="kitchennn">
                                                    <div class="kitch-left">
                                                        <?php foreach ($arrstovee as $item) { ?>
                                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                        <?php } ?>
                                                        <br>
                                                        <p><?php echo $arrDpot[4]; ?></p>
                                                        <?php foreach ($arrstoveu as $item) { ?>
                                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                        <?php } ?>
                                                    </div>
                                                    <div class="kitch-right">
                                                        <?php foreach ($arrstovet as $item) { ?>
                                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                        <?php } ?>
                                                        <br>
                                                        <br>
                                                        <p><?php echo $arrDmom[2]; ?></p>
                                                        <?php foreach ($arrmome as $item) { ?>
                                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                        <?php } ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDmom[1]; ?> <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDmom[3]; ?><i class="fas fa-caret-right"></i></a></p>
                                                <?php foreach ($arrmom as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-water-purifier">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 2 OFFSET  8"; ?>
                                        <?php $results = select_list($sql); ?>
                                        <?php $arrDpure = (explode(" ; ", $results[0]["divice"])); ?>
                                        <?php $arrpure = (explode(" ; ", $results[0]["divice_first"])); ?>
                                        <?php $arrDheater = (explode(" ; ", $results[1]["divice"])); ?>
                                        <?php $arrheater = (explode(" ; ", $results[1]["divice_first"])); ?>
                                        <div class="show-right">
                                            <span class="water-purifier">
                                                <img src="images/z2827202140283_f80ed549a087b83a2d7245e2a36c631e.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDpure[0]; ?></a>,
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDheater[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-water-purifier">
                                            <div>
                                                <p><?php echo $arrDpure[1]; ?></p>
                                                <?php foreach ($arrpure as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDheater[1]; ?> </p>
                                                <?php foreach ($arrheater as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-mobile">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 2 OFFSET  10"; ?>
                                        <?php $results = select_list($sql); ?>
                                        <?php $arrDmobi = (explode(" ; ", $results[0]["divice"])); ?>
                                        <?php $arrmobi = (explode(" ; ", $results[0]["divice_first"])); ?>
                                        <?php $arrDlap = (explode(" ; ", $results[1]["divice"])); ?>
                                        <?php $arrlap = (explode(" ; ", $results[1]["divice_first"])); ?>
                                        <?php $arrtab = (explode(" ; ", $results[1]["divice_second"])); ?>
                                        <?php $arrscreen = (explode(" ; ", $results[1]["divice_thỉrd"])); ?>
                                        <?php $arrprint = (explode(" ; ", $results[1]["divice_fourth"])); ?>
                                        <div class="show-right">
                                            <span class="mobi-laptab">
                                                <img src="images/z2827202139837_9e0b333b083d1afc5b5a57adc47d0cb2.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDmobi[0]; ?></a>,
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDlap[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-mobile">
                                            <div class="mobile">
                                                <p><?php echo $arrDmobi[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDmobi[2]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arrmobi as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div class="mobile">
                                                <p><?php echo $arrDlap[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDlap[6]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arrlap as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div class="tablet">
                                                <p><?php echo $arrDlap[2]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDlap[6]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arrtab as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div class="mobile">
                                                <p><?php echo $arrDlap[3]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDlap[6]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php for ($i = 0; $i < 5; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrscreen[$i]; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDlap[4]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDlap[6]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php for ($i = 5; $i < 8; $i++) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrscreen[$i]; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDlap[5]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDlap[6]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arrprint as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-accessory">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 2 OFFSET  12"; ?>
                                        <?php $results = select_list($sql); ?>
                                        <?php $arrDaccessory = (explode(" ; ", $results[0]["divice"])); ?>
                                        <?php $arraccessory = (explode(" ; ", $results[0]["divice_first"])); ?>
                                        <?php $arraccessorye = (explode(" ; ", $results[0]["divice_second"])); ?>
                                        <?php $arraccessoryt = (explode(" ; ", $results[0]["divice_thỉrd"])); ?>
                                        <?php $arraccessoryu = (explode(" ; ", $results[0]["divice_fourth"])); ?>
                                        <?php $arrDwatch = (explode(" ; ", $results[1]["divice"])); ?>
                                        <?php $arrwatch = (explode(" ; ", $results[1]["divice_first"])); ?>
                                        <?php $arrwatche = (explode(" ; ", $results[1]["divice_second"])); ?>
                                        <div class="show-right">
                                            <span class="accessory">
                                                <img src="images/z2827202139461_5ba894d9f199520b055d61d8af13fc32.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDaccessory[0]; ?></a>,
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"> <?php echo $arrDwatch[0]; ?></a>,
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-accessory">
                                            <div>
                                                <p><?php echo $arrDwatch[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDwatch[3]; ?><i class="fas fa-caret-right"></i></a></p>
                                                <?php foreach ($arrwatch as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDwatch[2]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDwatch[3]; ?><i class="fas fa-caret-right"></i></a></p>
                                                <?php foreach ($arrwatche as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDaccessory[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDaccessory[5]; ?><i class="fas fa-caret-right"></i></a></p>
                                                <?php foreach ($arraccessory as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDaccessory[2]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDaccessory[5]; ?><i class="fas fa-caret-right"></i></a></p>
                                                <?php foreach ($arraccessorye as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDaccessory[3]; ?></p>
                                                <?php foreach ($arraccessoryt as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                                <br>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDaccessory[4]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDaccessory[5]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arraccessoryu as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-old-machine">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 1 OFFSET  14"; ?>
                                        <?php $results = select_one($sql); ?>
                                        <?php $arrDold = (explode(" ; ", $results["divice"])); ?>
                                        <?php $arrold = (explode(" ; ", $results["divice_first"])); ?>
                                        <?php $arrolde = (explode(" ; ", $results["divice_second"])); ?>
                                        <?php $arroldt = (explode(" ; ", $results["divice_thỉrd"])); ?>
                                        <?php $arroldu = (explode(" ; ", $results["divice_fourth"])); ?>
                                        <div class="show-right">
                                            <span class="old-machine">
                                                <img src="images/z2827202139324_e2d1fe066730cb8cbbcaa65258a9a8ca.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arrDold[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-old-machine">
                                            <div>
                                                <p><?php echo $arrDold[1]; ?></p>
                                                <?php for ($i = 0; $i < 3; $i++) {  ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arrold[$i]; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDold[2]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arrDold[9]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php for ($i = 3; $i < 9; $i++) {  ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arrold[$i]; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDold[3]; ?></p>
                                                <?php for ($i = 0; $i < 2; $i++) {  ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arrolde[$i]; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDold[4]; ?></p>
                                                <?php for ($i = 2; $i < 4; $i++) {  ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arrolde[$i]; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDold[5]; ?></p>
                                                <?php for ($i = 0; $i < 2; $i++) {  ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arroldt[$i]; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDold[6]; ?></p>
                                                <?php for ($i = 2; $i < 5; $i++) {  ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arroldt[$i]; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDold[7]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arrDold[9]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php for ($i = 0; $i < 6; $i++) {  ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arroldu[$i]; ?></a>
                                                <?php } ?>
                                                <br>
                                                <p><?php echo $arrDold[8]; ?></p>
                                                <?php for ($i = 6; $i < 10; $i++) {  ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arroldu[$i]; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-bike">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 2 OFFSET  15"; ?>
                                        <?php $results = select_list($sql); ?>
                                        <?php $arrDbike = (explode(" ; ", $results[0]["divice"])); ?>
                                        <?php $arrbike = (explode(" ; ", $results[0]["divice_first"])); ?>
                                        <?php $arrDaccbike = (explode(" ; ", $results[1]["divice"])); ?>
                                        <?php $arraccbike = (explode(" ; ", $results[1]["divice_first"])); ?>
                                        <div class="show-right">
                                            <span class="bike-accessory">
                                                <img src="images/z2827202139323_f3a06bcb99fb19c68ff00507ccc6fd1f.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDbike[0]; ?></a>,
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"> <?php echo $arrDaccbike[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-bike">
                                            <div>
                                                <p><?php echo $arrDbike[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $arrDbike[2]; ?><i class="fas fa-caret-right"></i></a>
                                                </p>
                                                <?php foreach ($arrbike as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[0]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                            <div>
                                                <p><?php echo $arrDbike[1]; ?><a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $arrDbike[2]; ?><i class="fas fa-caret-right"></i></a></p>
                                                <?php foreach ($arraccbike as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results[1]["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="show-useful">
                                        <?php $sql = "SELECT * FROM `grab_category` LIMIT 1 OFFSET  21"; ?>
                                        <?php $results = select_one($sql); ?>
                                        <?php $arrDuseful = (explode(" ; ", $results["divice"])); ?>
                                        <?php $arruseful = (explode(" ; ", $results["divice_first"])); ?>
                                        <div class="show-right">
                                            <span class="useful">
                                                <img src="images/z2827202138775_0762a4e8fafeaf443d98b64e23d701f9.jpg" alt="">
                                            </span>
                                            <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $arrDuseful[0]; ?></a>
                                            <p>›</p>
                                        </div>
                                        <div class="show-right-hiden" id="hiden-useful">
                                            <div>
                                                <p><?php echo $arrDuseful[1]; ?></p>
                                                <?php foreach ($arruseful as $item) { ?>
                                                    <a href="./chuyen-muc.php.php?id=<?php echo $results["id"]; ?>"><?php echo $item; ?></a>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <ul class="much-discount">
                        <li><a href="#">Máy Giặt mua Online giảm đến 30%</a></li>
                        <li><a href="#">Gia dụng Online giảm đến 49%</a></li>
                        <li class="end"><a href="#">Tủ Lạnh giảm sâu đến 24%</a></li>
                    </ul>
                </section>
            </div>
        </div>
        <!-- sticky sidebar -->
        <div class="sticky-sidebar">
            <a href="#" class="banner-left"><img src="images/sidebar_left.png" alt=""></a>
            <a href="#" class="banner-right"><img src="images/sidebar_right.png" alt=""></a>
        </div>
        <div class="content">
            <!--  -->
            <div class="edit-product">
                <h1>Bạn đã thêm sản phẩm thành công</h1>
                <button><a href="admin.php">Trở lại</a></button>
            </div>


            <div class="discount">
                <div class="discount-top">
                    <span class="animate-dot"></span>
                    <div class="bonus-fifth">
                        <a href="#"><img src="images/logoBHXnew.png" alt=""></a>
                        <span>Tặng 5 lần FREEship (tối đa 15k)</span>
                    </div>
                    <span class="promotion-mwg">(Đây là khuyến mãi của website cùng tập đoàn MWG)</span>
                    <span class="close-bhx">
                        Không hiển thị lại lần sau
                        <img onclick="closeBhx()" src="images/icon_Close.png" alt="">
                    </span>
                </div>

                <div class="discount-main">
                    <div class="get-code">
                        <span><b>Tặng thêm mã giảm 10%</b></span>
                        <input type="text" placeholder="Nhập email*">
                        <input type="text" placeholder="Nhập SĐT*">
                        <button type="button">NHẬN MÃ</button>
                        <div class="first-person">*Áp dụng cho khách lần đầu mua hàng tại BachhoaXANH</div>
                    </div>
                    <div class="discount-product">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <a class="infor-price" href="#">
                                        <img src="images/bhx-1_300x300.jpg" alt="">
                                        <span>Nước giặt Surf hương nước hoa túi 3 lít</span>
                                        <div class="price">
                                            <strong>94.500₫</strong>
                                            <del>136.000₫</del>
                                            <span>-31%</span>
                                        </div>
                                    </a>
                                    <a class="buy-product" href="#">Mua</a>
                                </div>
                                <div class="col">
                                    <a class="infor-price" href="#">
                                        <img src="images/bhx-2_300x300.jpg" alt="">
                                        <span>Nước giặt Surf hương nước hoa túi 3 lít</span>
                                        <div class="price">
                                            <strong>10.000₫</strong>
                                            <del>15.000₫</del>
                                            <span>-33%</span>
                                        </div>
                                    </a>
                                    <a class="buy-product" href="#">Mua</a>
                                </div>
                                <div class="col">
                                    <a class="infor-price" href="#">
                                        <img src="images/bhx-3_300x300.jpg" alt="">
                                        <span>Nước giặt Surf hương nước hoa túi 3 lít</span>
                                        <div class="price">
                                            <strong>18.000₫</strong>
                                            <del>24.000₫</del>
                                            <span>-25%</span>
                                        </div>
                                    </a>
                                    <a class="buy-product" href="#">Mua</a>
                                </div>
                                <div class="col">
                                    <a class="infor-price" href="#">
                                        <img src="images/bhx-4-202110071739169640.jpg" alt="">
                                        <span>Nước giặt Surf hương nước hoa túi 3 lít</span>
                                        <div class="price">
                                            <strong>54.500₫</strong>
                                            <del>60.000₫</del>
                                            <span>-10%</span>
                                        </div>
                                    </a>
                                    <a class="buy-product" href="#">Mua</a>
                                </div>
                                <div class="col">
                                    <a class="infor-price" href="#">
                                        <img src="images/bhx-5_300x300.jpg" alt="">
                                        <span>Nước giặt Surf hương nước hoa túi 3 lít</span>
                                        <div class="price">
                                            <strong>19.500₫</strong>
                                            <del>23.000₫</del>
                                            <span>-15%</span>
                                        </div>
                                    </a>
                                    <a class="buy-product" href="#">Mua</a>
                                </div>
                                <div class="col">
                                    <a class="infor-price" href="#">
                                        <img src="images/bhx-6.jpg" alt="">
                                        <span>Nước giặt Surf hương nước hoa túi 3 lít</span>
                                        <div class="price">
                                            <strong>15.600₫</strong>
                                            <del>17.000₫</del>
                                            <span>-8%</span>
                                        </div>
                                    </a>
                                    <a class="buy-product" href="#">Mua</a>
                                </div>
                                <div class="col">
                                    <a class="infor-price" href="#">
                                        <img src="images/bhx-7.jpg" alt="">
                                        <span>Nước giặt Surf hương nước hoa túi 3 lít</span>
                                        <div class="price">
                                            <strong>30.500₫</strong>
                                            <del>34.500₫</del>
                                            <span>-12%</span>
                                        </div>
                                    </a>
                                    <a class="buy-product" href="#">Mua</a>
                                </div>
                                <div class="col">
                                    <a class="bhx-next" href="#">
                                        <img src="images/dmxtgdd-next.png" alt="">
                                        <span>Xem <b>10.000+</b> <br> sản phẩm khác</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <!-- footer -->
        <div class="footer">
            <section class="service">
                <div class="container service-container">
                    <div class="row">
                        <div class="col-3 service-left">
                            <ul>
                                <li>
                                    <a href="#">DV vệ sinh máy lạnh, máy giặt, quạt</a>
                                </li>
                                <li>
                                    <a href="#"><b>Dịch vụ Sửa Điện - Nước </b><span>Mới</span></a>
                                    <br>
                                    <p> Dành cho Gia đình, Doanh nghiệp ở TP.HCM</p>
                                </li>
                                <li>
                                    <a href="#">Lịch sử mua hàng</a>
                                </li>
                                <li>
                                    <a href="#">Cộng tác bán hàng cùng TGDĐ</a>
                                </li>
                                <li>
                                    <a href="#">Tìm hiểu về mua trả góp</a>
                                </li>
                                <li>
                                    <a href="#">Xem thêm <i onclick="showMore()" class="fas fa-sort-down"></i></a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Chính sách bảo hành</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Chính sách đổi trả</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Giao hàng, lắp đặt</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Hướng dẫn mua online</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Bán hàng doanh nghiệp</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Phiếu mua hàng</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">In hóa đơn điện tử</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Quy chế hoạt động</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Nội quy cửa hàng</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Chất lượng phục vụ</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Cảnh báo giả mạo</a>
                                </li>
                                <li class="show-more">
                                    <a href="#">Chính sách khui hộp sản phẩm Apple</a>
                                </li>

                            </ul>
                        </div>
                        <div class="col-3 service-left">
                            <ul>
                                <li><a href="#">Giới thiệu công ty (MWG.vn)</a></li>
                                <li><a href="#">Tuyển dụng</a></li>
                                <li><a href="#">Gửi góp ý, khiếu nại</a></li>
                                <li><a href="#">Tìm siêu thị (1783 shop)</a></li>
                                <li><a href="#">Xem bản mobile</a></li>

                            </ul>
                        </div>
                        <div class="col-3 service-right">
                            <ul>
                                <li><strong>Tổng đài hỗ trợ </strong><span> (Miễn phí gọi)</span></li>
                                <li>
                                    <p>Gọi mua:</p> <a href="#"><strong>1800.1061</strong></a> (7:30 - 22:00)
                                </li>
                                <li>
                                    <p>Kỹ thuật:</p><a href="#"><strong>1800.1764</strong></a> (7:30 - 22:00)
                                </li>
                                <li>
                                    <p>Khiếu nại:</p><a href="#"><strong>1800.1063</strong></a> (8:00 - 21:00)
                                </li>
                                <li>
                                    <p>Bảo hành:</p><a href="#"><strong>1800.1065</strong></a> (8:00 - 21:00)
                                </li>
                            </ul>
                        </div>
                        <div class="col-3">
                            <div class="facebook-dmx">
                                <a href="#"><img class="facebook" src="images/icons8-facebook-circled-48.png" />1817.4k
                                    Fan </a>
                                <a href="#"><img class="dmx" src="images/logo-the-gioi-di-dong.jpg" />571k Đăng
                                    ký</a>
                            </div>
                            <div class="sponsor">
                                <a class="logo-infor" href="#"><img src="images/z2827202133656_8f32b1a19a93ee020c30dc280a0beb14.jpg" alt=""></a>
                                <a class="logo-xu" href="#"><img src="images/z2827202132920_c1c1c5f8fa233cacc9a0a6160302a512.jpg" alt=""></a>
                                <a class="logo-dmca" href="#"><img src="images/z2827202132918_a890e7ead06a0f96e8a1111a788dc3b4.jpg" alt=""></a>
                                <a class="logo-ncsc" href="#"><img src="images/ncsc.PNG" alt=""></a>
                            </div>
                            <div class="corporation">
                                <p>Website cùng tập đoàn</p>
                                <a class="logo-tgdd" href="#"><img src="images/logo-tgdd.svg.png" alt=""></a>
                                <a class="logo-bhx" href="#"><img src="images/z2821266547455_f145e5f37ff36adf05b4c9d66cfc4ef8.jpg" alt=""></a>
                                <a class="logo-haiam" href="#"><img src="images/z2821266545876_25222914e59d5acb6e871d7f99688c72.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <div class="title-bottom">
                <section>
                    <p>© 2018. Công ty cổ phần Thế Giới Di Động. GPDKKD: 0303217354 do sở KH & ĐT TP.HCM cấp ngày
                        02/01/2007. GPMXH: 238/GP-BTTTT do Bộ Thông Tin và Truyền Thông cấp ngày 04/06/2020.
                        <br>
                        Địa chỉ: 128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh. Điện thoại: 028 38125960.
                        Email:
                        cskh@thegioididong.com. Chịu trách nhiệm nội dung: Huỳnh Văn Tốt. <a href="#">Xem chính sách
                            sử
                            dụng</a>
                    </p>
                </section>
            </div>
        </div>
    </div>




    <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/chi-tiet.js"></script>
</body>

</html>
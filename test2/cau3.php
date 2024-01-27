<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cau3.css">
    <title>Document</title>
</head>
<body>
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $chieu_dai = $_POST["chieu_dai"];
        $chieu_rong = $_POST["chieu_rong"];

        if (empty($chieu_dai) || empty($chieu_rong)) {
            echo "Vui lòng nhập đầy đủ thông tin";
        } elseif (!is_numeric($chieu_dai) || !is_numeric($chieu_rong)) {
            echo "Vui lòng nhập giá trị số hợp lệ";
        } else {
            $dien_tich = $chieu_dai * $chieu_rong;
            echo "Diện tích hình chữ nhật là: " . $dien_tich;
        }
    }
    ?>
       <?php
       $resual = null;
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $chieu_dai = $_POST["chieu_dai"];
        $chieu_rong = $_POST["chieu_rong"];
        $dien_tich = $chieu_dai * $chieu_rong;
        print "Diện tích hình chữ nhật là: " . $dien_tich;
    }
    ?>
    <div class="container">
    <p>Tính diện tích hình chữ nhật</p>
        <div class="row">
            <label for="">Chiều dài</label>
            <input type="number" name="chieu_dai">
        </div>
        <div class="row">
            <label for="">Chiều rộng</label>
            <input type="number" name="chieu_rong">
        </div>
        <div class="row">
            <button type="submit" name="dien_tich">Diện tích</button>
           
            <input type="text" name="dien_tich" value = "<?php print $resual ?>">
        </div>
        <a href="">Thông báo lỗi nếu có</a>
    </div>
</body>
</html>
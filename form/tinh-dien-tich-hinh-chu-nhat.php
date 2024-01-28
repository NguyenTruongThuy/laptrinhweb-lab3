<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Lab 6 Solutions</title>
</head>
<?php
$chieu_dai = '';
$chieu_rong = '';
$dien_tich = '';
if (isset($_POST['tinh_dien_tich'])) {
    require 'da_giac.php';
    require 'hinh_chu_nhat.php';

    $hcn = new hinh_chu_nhat();

    $hcn->chieu_dai = $_POST['chieu_dai'];
    $hcn->chieu_rong = $_POST['chieu_rong'];

    $dien_tich = $hcn->dien_tich();
    $chieu_dai = $hcn->chieu_dai;
    $chieu_rong = $hcn->chieu_rong;
}
?>

<body>
    <div class="row">
            <form method="POST">
                <div class="form-row">
                    Chiều dài: <input type="text" name="chieu_dai" class="form-control" value="<?php echo $chieu_dai ?>"/>
                </div>

                <div class="form-row">
                    Chiều rộng: <input type="text" name="chieu_rong" class="form-control"  value="<?php echo $chieu_rong ?>"/>
                </div>

                <div class="form-row">
                    Diện tích: <label><?php if (isset($dien_tich)) echo $dien_tich?></label>
                    
                </div>

                <button type="submit" name="tinh_dien_tich" class="button-tinh">Tính diện tích</button>
            </form>
    </div>

</body>
</html>
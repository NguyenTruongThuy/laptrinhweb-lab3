<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>form1</title>
</head>
<style>
    h1{
        text-align: center;
    }
    label{
        margin-left: 500px;
        font-size: 20px;
    }
    input {
        padding: 10px; 
        font-size: 20px;
        margin-left: 30px;
        margin-bottom: 20px;
    }
    .dientich{
        margin-left: 505px;
        background-color: blue;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 10px;
    }
    .dongcuoi{
        margin-left: -475px;
        margin-bottom: 50px;
    }
    .tinh_dien_tich{}
</style>
<body>
    <h1>Tính diện tích hình vuông </h1>
    
    <?php
    $chieu_dai = '';
    $chieu_rong = '';
    $dien_tich = '';
   
    if (isset($_POST['tinh_dien_tich'])) {
        $chieu_dai = $_POST['num1']; 
        $chieu_rong = $_POST['num2']; 
        
        if (is_numeric($chieu_dai) && is_numeric($chieu_rong)) {
            if($chieu_dai == $chieu_rong){
                $dien_tich = $chieu_dai * $chieu_rong ;
            }
            else {

                print"Vui lòng nhập lại giá trị đúng";
            }
        } 
    }
    
    ?>

    <form method="post">
        <label for="num1">Chiều Dài :</label>
        <input type="text" name="num1" value="<?php echo $chieu_dai ?>" required>
        <br>
        <label for="num2">Chiều Rộng</label>
        <input type="text" name="num2" value="<?php echo $chieu_rong ?>" required>
        <br>
        <input class="dientich" type="submit" name="tinh_dien_tich" value="Diện Tích">
        <label>
            <input class="dongcuoi" type="text" value="<?php echo $dien_tich; ?>">
        </label>
    
    </form>
</body>
</html>
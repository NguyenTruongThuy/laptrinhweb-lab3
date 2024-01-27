<?php
$arr = [15, 25, 5, 7, 9, 4, 8, 10, 15];


$so_le = array_filter($arr, function($number) {
    return $number % 2 == 1;
});
//array_filter dùng để lọc phần tử trong mảng
asort($so_le);
//asort sắp xếp một mảng theo cách mà các chỉ mục mảng duy trì mối liên kết với các phần tử mảng mà chúng đã liên kết
foreach ($arr as &$number) {
    if ($number % 2 == 1) {
        $number = array_shift($so_le);
    }
}

print implode(' ', $arr);
?>
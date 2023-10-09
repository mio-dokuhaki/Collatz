#[allow(unused_macros)]
// 整数１つ読み込み(macro)
macro_rules! read {
    ($($t:ty),*) => {
        {
            let mut input = String::new();
            std::io::stdin().read_line(&mut input).ok();
            let mut iter = input.split_whitespace();
            ($(iter.next().unwrap().parse::<$t>().unwrap()),*)
        }
    };
}
#[allow(unused_macros)]
// 文字列１つ読み込み(macro)
macro_rules! read_str {
    () => {
        {
            let mut input = String::new();
            std::io::stdin().read_line(&mut input).ok();
            input.trim().to_string()
        }
    };
}

#[allow(unused_macros)]
// 整数の１次元ベクトル読み込み(macro)
macro_rules! read_vec {
    ($t:ty) => {
        {
            let mut input = String::new();
            std::io::stdin().read_line(&mut input).ok();
            input.trim().split_whitespace().map(|x| x.parse::<$t>().unwrap()).collect::<Vec<$t>>()
        }
    };
}

#[allow(unused_macros)]
// 文字列の１次元ベクトル読み込み(macro)
macro_rules! read_str_vec {
    () => {
        {
            let mut input = String::new();
            std::io::stdin().read_line(&mut input).ok();
            input.trim().split_whitespace().map(|x| x.to_string()).collect::<Vec<String>>()
        }
    };
}

#[allow(unused_macros)]
// 2次元ベクトル読み込み(macro)
macro_rules! read_2d_vec {
    ($t:ty, $rows:expr, $cols:expr) => {
        {
            let mut vec_2d: Vec<Vec<$t>> = Vec::with_capacity($rows);
            for _ in 0..$rows {
                vec_2d.push(read_vec!($t; $cols));
            }
            vec_2d
        }
    };
}

use std::io::Write;
use num_bigint::*;

fn main() {
    print!("開始する最初の値を入力してください : "); // プロンプトメッセージを表示
    std::io::stdout().flush().ok();
    let mut a = read!(BigInt);
    print!("{} -> ", a); // 最初の値を表示
    while a > BigInt::from(1) {
        if a.clone() % BigInt::from(2) == BigInt::from(1) {
            a = a.clone() * BigInt::from(3) + BigInt::from(1);
        } else {
            a /= BigInt::from(2);
        }
        if a != BigInt::from(1) { // aが1でない場合に" -> "を出力
            print!("{} -> ", a);
            std::io::stdout().flush().ok();
        } else {
            println!("{}", "1");
        }
    }
}
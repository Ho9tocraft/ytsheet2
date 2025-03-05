################ シンドローム ################
use strict;
use utf8;

package data;

## シンドロームリスト
our @syndromes = (
  'エンジェルハィロゥ',
  'バロール',
  'ブラックドッグ',
  'ブラム＝ストーカー',
  'キュマイラ',
  'エグザイル',
  'ハヌマーン',
  'モルフェウス',
  'ノイマン',
  'オルクス',
  'サラマンダー',
  'ソラリス',
  'ウロボロス',
  'ミストルティン',
  'グレイプニル',
  'アザトース',
);

## 能力値補正
our %syndrome_status = (
  'エンジェルハィロゥ' => [0,3,1,0],
  'バロール'           => [0,1,2,1],
  'ブラックドッグ'     => [2,1,1,0],
  'ブラム＝ストーカー' => [1,2,1,0],
  'キュマイラ'         => [3,0,0,1],
  'エグザイル'         => [2,1,0,1],
  'ハヌマーン'         => [1,1,1,1],
  'モルフェウス'       => [1,2,0,1],
  'ノイマン'           => [0,0,3,1],
  'オルクス'           => [0,1,1,2],
  'サラマンダー'       => [2,0,1,1],
  'ソラリス'           => [0,0,1,3],
  'ウロボロス'         => [1,1,2,0],
  'ミストルティン'     => [2,2,0,0],
  'グレイプニル'       => [1,0,2,1],
  'アザトース'         => [1,0,3,0],
);

## 覚醒・衝動リスト
our @awakens = (
  ['死'  ,18],
  ['憤怒',17],
  ['素体',16],
  ['感染',14],
  ['渇望',17],
  ['無知',15],
  ['犠牲',16],
  ['命令',15],
  ['忘却',17],
  ['探求',14],
  ['償い',18],
  ['生誕',17],
  ['label=CRC用'],
  ['恐怖',17],
  ['救済',16],
  ['狂気',15],
  ['神命',15],
  ['実験',18],
);
our @impulses = (
  ['解放',18],
  ['吸血',17],
  ['飢餓',14],
  ['殺戮',18],
  ['破壊',16],
  ['加虐',15],
  ['嫌悪',15],
  ['闘争',16],
  ['妄想',14],
  ['自傷',16],
  ['恐怖',17],
  ['憎悪',18],
  ['改変',30],
);

1;
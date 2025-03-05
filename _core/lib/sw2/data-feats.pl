#################### データ ####################
use strict;
use utf8;

package data;

# ['カテゴリ(常/宣/主)',習得できる最小Lv','名前','概要']
our @combat_feats = (
  ['常', 9,'足さばき',''],
  ['常', 3,'追い打ち','ヴァグランツ'],
  ['常', 5,'ガーディアンⅠ',''],
  ['常', 5,'ガーディアンⅡ',''],
  ['常', 0,'かいくぐり',''],
  ['常', 3,'回避行動Ⅰ',''],
  ['常', 3,'回避行動Ⅱ',''],
  ['常', 5,'頑強',''],
  ['常',11,'キャパシティ',''],
  ['常', 1,'鼓咆陣率追加Ⅰ',''],
  ['常', 1,'鼓咆陣率追加Ⅱ',''],
  ['常', 1,'鼓咆陣率追加Ⅲ',''],
  ['常', 7,'射手の体術',''],
  ['常', 3,'終律増強',''],
  ['常', 0,'呪歌追加Ⅰ',''],
  ['常', 0,'呪歌追加Ⅱ',''],
  ['常', 0,'呪歌追加Ⅲ',''],
  ['常', 0,'スローイングⅠ',''],
  ['常', 0,'スローイングⅡ',''],
  ['常', 3,'双撃',''],
  ['常', 1,'相克の標的',''],
  ['常', 3,'相克の別離',''],
  ['常', 0,'ターゲッティング',''],
  ['常', 3,'鷹の目',''],
  ['常', 7,'超頑強',''],
  ['常', 3,'抵抗強化Ⅰ','ヴァグランツ'],
  ['常', 3,'抵抗強化Ⅱ','ヴァグランツ'],
  ['常', 0,'特殊楽器習熟',''],
  ['常', 9,'跳び蹴り',''],
  ['常', 3,'投げ強化Ⅰ',''],
  ['常', 3,'投げ強化Ⅱ',''],
  ['常', 5,'二刀流',''],
  ['常',11,'二刀無双',''],
  ['常', 5,'ハーモニー',''],
  ['常', 0,'武器習熟Ａ／ソード',        ''],
  ['常', 0,'武器習熟Ａ／アックス',      ''],
  ['常', 0,'武器習熟Ａ／スピア',        ''],
  ['常', 0,'武器習熟Ａ／メイス',        ''],
  ['常', 0,'武器習熟Ａ／スタッフ',      ''],
  ['常', 0,'武器習熟Ａ／フレイル',      ''],
  ['常', 0,'武器習熟Ａ／ウォーハンマー',''],
  ['常', 0,'武器習熟Ａ／絡み',          ''],
  ['常', 0,'武器習熟Ａ／格闘',          ''],
  ['常', 0,'武器習熟Ａ／投擲',          ''],
  ['常', 0,'武器習熟Ａ／ボウ',          ''],
  ['常', 0,'武器習熟Ａ／クロスボウ',    ''],
  ['常', 0,'武器習熟Ａ／ブロウガン',    ''],
  ['常', 0,'武器習熟Ａ／ガン',          ''],
  ['常', 5,'武器習熟Ｓ／ソード',        ''],
  ['常', 5,'武器習熟Ｓ／アックス',      ''],
  ['常', 5,'武器習熟Ｓ／スピア',        ''],
  ['常', 5,'武器習熟Ｓ／メイス',        ''],
  ['常', 5,'武器習熟Ｓ／スタッフ',      ''],
  ['常', 5,'武器習熟Ｓ／フレイル',      ''],
  ['常', 5,'武器習熟Ｓ／ウォーハンマー',''],
  ['常', 5,'武器習熟Ｓ／絡み',          ''],
  ['常', 5,'武器習熟Ｓ／格闘',          ''],
  ['常', 5,'武器習熟Ｓ／投擲',          ''],
  ['常', 5,'武器習熟Ｓ／ボウ',          ''],
  ['常', 5,'武器習熟Ｓ／クロスボウ',    ''],
  ['常', 5,'武器習熟Ｓ／ブロウガン',    ''],
  ['常', 5,'武器習熟Ｓ／ガン',          ''],
  ['常',11,'武器の達人',''],
  ['常', 3,'賦術強化Ⅰ',''],
  ['常', 3,'賦術強化Ⅱ',''],
  ['常', 5,'賦術全遠隔化',''],
  ['常', 5,'踏みつけ',''],
  ['常', 3,'ブロッキング',''],
  ['常', 5,'変幻自在Ⅰ',''],
  ['常', 5,'変幻自在Ⅱ',''],
  ['常', 0,'防具習熟Ａ／金属鎧',  ''],
  ['常', 0,'防具習熟Ａ／非金属鎧',''],
  ['常', 0,'防具習熟Ａ／盾',      ''],
  ['常', 5,'防具習熟Ｓ／金属鎧',  ''],
  ['常', 5,'防具習熟Ｓ／非金属鎧',''],
  ['常', 5,'防具習熟Ｓ／盾',      ''],
  ['常',11,'防具の達人',''],
  ['常', 9,'魔晶石の達人',''],
  ['常', 5,'魔法拡大の達人',''],
  ['常', 5,'マリオネット',''],
  ['常', 6,'魔力強化Ⅰ',''],
  ['常', 6,'魔力強化Ⅱ',''],
  ['常', 7,'命中強化Ⅰ',''],
  ['常', 7,'命中強化Ⅱ',''],
  ['常', 0,'両手利き',''],
  ['常', 5,'連続賦術',''],
  ['常', 5,'練体の極意',''],
  ['常', 5,'ＭＰ軽減／ソーサラー',        ''],
  ['常', 5,'ＭＰ軽減／コンジャラー',      ''],
  ['常', 5,'ＭＰ軽減／プリースト',        ''],
  ['常', 5,'ＭＰ軽減／マギテック',        ''],
  ['常', 5,'ＭＰ軽減／フェアリーテイマー',''],
  ['常', 5,'ＭＰ軽減／ドルイド',          ''],
  ['常', 5,'ＭＰ軽減／デーモンルーラー',  ''],
  ['常', 5,'ＭＰ軽減／アビスゲイザー',    ''],
  ['常', 5,'ＭＰ軽減／ウィザード',        '2.0'],
  ['常', 5,'ＭＰ軽減／グリモワール',      '2.0'],

  ['常', 5,'自己占瞳','2.0'],
  ['常', 5,'占瞳操作','2.0'],
  ['常', 3,'代償軽減Ⅰ','2.0'],
  ['常', 3,'代償軽減Ⅱ','2.0'],
  ['常', 7,'代償半減','2.0'],
  ['常', 0,'魔導書習熟Ａ','2.0'],
  ['常', 3,'魔導書習熟Ｓ','2.0'],
  ['常',11,'魔導書の達人','2.0'],
  ['常', 0,'魔器習熟Ａ','2.0'],
  ['常', 3,'魔器習熟Ｓ','2.0'],
  ['常',11,'魔器の達人','2.0'],
  ['常',16, '切り払い','2.0'],
  ['常',16, '無尽の盾','2.0'],
  ['常',16, 'ファントムカウンター','2.0'],
  ['常',16, '急所狙い','2.0'],
  ['常',16, '心眼','2.0'],
  ['常',16, '零距離射撃','2.0'],
  
  ['宣', 5,'インファイトⅠ',''],
  ['宣', 5,'インファイトⅡ',''],
  ['宣', 0,'囮攻撃Ⅰ','バトルダンサー'],
  ['宣', 0,'囮攻撃Ⅱ','バトルダンサー'],
  ['宣', 5,'カード軽減',''],
  ['宣', 3,'楽素転換',''],
  ['宣', 9,'影矢',''],
  ['宣', 0,'カニングキャストⅠ','ヴァグランツ'],
  ['宣', 0,'カニングキャストⅡ','ヴァグランツ'],
  ['宣準', 0,'かばうⅠ',''],
  ['宣準', 0,'かばうⅡ',''],
  ['宣', 0,'斬り返しⅠ','バトルダンサー'],
  ['宣', 0,'斬り返しⅡ','バトルダンサー'],
  ['宣', 9,'牙折り',''],
  ['宣', 0,'クイックキャスト','ヴァグランツ'],
  ['宣', 7,'クリティカルキャストⅠ',''],
  ['宣', 7,'クリティカルキャストⅡ',''],
  ['宣', 0,'牽制攻撃Ⅰ','バトルダンサー'],
  ['宣', 0,'牽制攻撃Ⅱ','バトルダンサー'],
  ['宣', 0,'牽制攻撃Ⅲ','バトルダンサー'],
  ['宣', 9,'高度な柔軟性',''],
  ['宣', 0,'シールドバッシュⅠ','ヴァグランツ'],
  ['宣', 0,'シールドバッシュⅡ','ヴァグランツ'],
  ['宣', 0,'シャドウステップⅠ','ヴァグランツ/バトルダンサー'],
  ['宣', 0,'シャドウステップⅡ','ヴァグランツ/バトルダンサー'],
  ['宣', 3,'シュアパフォーマー',''],
  ['宣', 7,'スキルフルプレイ',''],
  ['宣', 0,'捨て身攻撃Ⅰ','ヴァグランツ/バトルダンサー'],
  ['宣', 0,'捨て身攻撃Ⅱ','ヴァグランツ/バトルダンサー'],
  ['宣', 0,'捨て身攻撃Ⅲ','ヴァグランツ/バトルダンサー'],
  ['宣', 5,'先陣の才覚',''],
  ['宣', 0,'全力攻撃Ⅰ','バトルダンサー'],
  ['宣', 0,'全力攻撃Ⅱ','バトルダンサー'],
  ['宣', 0,'全力攻撃Ⅲ',''],
  ['宣', 9,'ダブルキャスト',''],
  ['宣', 0,'挑発攻撃Ⅰ','バトルダンサー'],
  ['宣', 0,'挑発攻撃Ⅱ','バトルダンサー'],
  ['宣', 0,'露払い','ヴァグランツ/バトルダンサー'],
  ['宣準', 0,'ディフェンススタンス',''],
  ['宣', 3,'テイルスイングⅠ',''],
  ['宣', 3,'テイルスイングⅡ',''],
  ['宣', 3,'薙ぎ払いⅠ',''],
  ['宣', 3,'薙ぎ払いⅡ',''],
  ['宣', 0,'バイオレントキャストⅠ',''],
  ['宣', 0,'バイオレントキャストⅡ',''],
  ['宣', 0,'必殺攻撃Ⅰ','バトルダンサー'],
  ['宣', 0,'必殺攻撃Ⅱ','バトルダンサー'],
  ['宣', 0,'必殺攻撃Ⅲ','バトルダンサー'],
  ['宣', 0,'魔法拡大／威力確実化',''],
  ['宣', 0,'魔法拡大／確実化',''],
  ['宣', 0,'魔法拡大／数',''],
  ['宣', 0,'魔法拡大／距離',''],
  ['宣', 0,'魔法拡大／時間',''],
  ['宣', 0,'魔法拡大／範囲',''],
  ['宣', 3,'魔法拡大すべて',''],
  ['宣', 0,'魔法収束',''],
  ['宣', 5,'魔法制御',''],
  ['宣', 0,'魔力撃','バトルダンサー'],
  ['宣', 5,'マルチアクション',''],
  ['宣', 0,'鎧貫きⅠ',''],
  ['宣', 0,'鎧貫きⅡ',''],
  ['宣', 0,'鎧貫きⅢ',''],
  ['宣', 0,'乱撃Ⅰ','ヴァグランツ/バトルダンサー'],
  ['宣', 0,'乱撃Ⅱ','ヴァグランツ/バトルダンサー'],
  
  ['宣', 7,'双占瞳','2.0'],
  ['宣',16, '痛撃','2.0'],
  ['宣',16, '跳躍攻撃','2.0'],
  ['宣',16, '封印撃','2.0'],
  ['宣',16, 'ヒットアンドアウェイ','2.0'],
  ['宣',16, '曲射','2.0'],
  ['宣',16, 'デュアルアクション','2.0'],
  
  ['主', 0,'狙撃',''],
  ['主', 0,'ワードブレイク',''],
);

1;
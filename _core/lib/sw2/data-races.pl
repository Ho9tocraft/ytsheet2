#################### 種族 ####################
use strict;
use utf8;

package data;

### 種族名一覧 --------------------------------------------------
# 種族選択肢順
our @race_names = (
  'label=人族',
    '人間',
    'エルフ',
    'ドワーフ',
    'ダークドワーフ',
    'タビット',
    'ルーンフォーク',
    'ナイトメア',
    'リカント',
    'リルドラケン',
    'グラスランナー',
    'メリア',
    'ティエンス',
    'レプラカーン',
    'アルヴ',
    'シャドウ',
    'ソレイユ',
    'スプリガン',
    'アビスボーン',
    'ハイマン',
    'フロウライト',
    'フィー',
    'ミアキス',
    'ヴァルキリー',
    'センティアン（ルミエル）',
    'センティアン（カルディア）',
    'ノーブルエルフ',
    'マナフレア',
    '魔動天使',
  'label=蛮族',
    'ウィークリング',
    'ドレイク',
    'ドレイクブロークン',
    'バジリスク',
    'ディアボロ',
    'ダークトロール',
    'アルボル',
    'バーバヤガー',
    'ケンタウロス',
    'シザースコーピオン',
    'ドーン',
    'コボルド',
    'ラミア',
    'ラルヴァ',
    'リザードマン',
    'ライカンスロープ',
    'バルカン',
    'センティアン（イグニス）',
);

### 種族詳細データ --------------------------------------------------
our %races = (
  '人間' => {
    type => '人族',
    ability => ['剣の加護／運命変転'],
    language => [
      ['交易共通語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 2,
    }
  },
  'エルフ' => {
    type => '人族',
    ability => ['暗視','剣の加護／優しき水'],
    language => [
      ['交易共通語', 1, 1 ],
      ['エルフ語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 1, 'D' => 2, 'E' => 2, 'F' => 2,
    },
    variantSort => ['スノウエルフ','ミストエルフ'],
    variant => {
      'スノウエルフ' => {
        ability => ['暗視','剣の加護／厳つき氷'],
      },
      'ミストエルフ' => {
        ability => ['暗視','剣の加護／惑いの霧'],
      },
    },
  },
  'ドワーフ' => {
    type => '人族',
    ability => ['暗視','剣の加護／炎身'],
    language => [
      ['交易共通語', 1, 1 ],
      ['ドワーフ語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 1, 'F' => 2,
      'A+'=> 6,                                         'F+'=> 6,
    }
  },
  'タビット' => {
    type => '人族',
    ability => ['第六感'],
    language => [
      ['交易共通語', 1, 1 ],
      ['神紀文明語', 0, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 1, 'C' => 1, 'D' => 2, 'E' => 2, 'F' => 2,
                                              'E+'=> 6,
    },
    restrictedClass => ['プリースト'],
    variantSort => ['パイカ種タビット','リパス種タビット'],
    variant => {
      'パイカ種タビット' => {
        ability => ['第六感','ホイッスル'],
        statusMod => { Dex => 3, Agi => 3, Str => -3, Vit => -3, },
        language => [
          ['交易共通語', 1, 1 ],
          ['神紀文明語', 0, 1 ],
          ['パイカ語', 1, 0 ],
        ],
      },
      'リパス種タビット' => {
        ability => ['第六感','暗視'],
        statusMod => { Agi => 3, Str => 3, Int => -3, Mnd => -3, }
      },
    },
  },
  'ルーンフォーク' => {
    type => '人族',
    ability => ['暗視','HP変換'],
    language => [
      ['交易共通語', 1, 1 ],
      ['魔動機文明語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 1,
    },
    restrictedClass => ['プリースト','フェアリーテイマー','ドルイド'],
    variantSort => ['護衛型ルーンフォーク','戦闘型ルーンフォーク'],
    variant => {
      '護衛型ルーンフォーク' => {
        ability => ['暗視','仲間との絆'],
      },
      '戦闘型ルーンフォーク' => {
        ability => ['暗視','任務遂行の意志'],
      },
    },
  },
  'ナイトメア' => {
    type => '人族',
    dice => {
      'A' => 2, 'B' => 2, 'C' => 1, 'D' => 1, 'E' => 2, 'F' => 2,
    },
    sin => 1,
    variantSort => ['人間','エルフ','ドワーフ','リルドラケン','シャドウ','ソレイユ'],
    variant => {
      '人間' => {
        ability => ['異貌','弱点／土'],
        language => [
          ['交易共通語', 1, 1 ],
        ],
      },
      'エルフ' => {
        ability => ['異貌','弱点／水・氷'],
        language => [
          ['交易共通語', 1, 1 ],
          ['エルフ語', 1, 1 ],
        ],
      },
      'ドワーフ' => {
        ability => ['異貌','弱点／炎'],
        language => [
          ['交易共通語', 1, 1 ],
          ['ドワーフ語', 1, 1 ],
        ],
      },
      'リルドラケン' => {
        ability => ['異貌','弱点／風'],
        language => [
          ['交易共通語', 1, 1 ],
          ['ドラゴン語', 1, 0 ],
        ],
      },
      'シャドウ' => {
        ability => ['異貌','弱点／精神効果'],
        language => [
          ['交易共通語', 1, 1 ],
          ['シャドウ語', 1, 1 ],
        ],
      },
      'ソレイユ' => {
        ability => ['異貌','弱点／純エネルギー'],
        language => [
          ['交易共通語', 1, 1 ],
          ['ソレイユ語', 1, 0 ],
        ],
      },
    },
  },
  'リカント' => {
    type => '人族',
    ability => ['暗視(獣変貌)','獣変貌'],
    language => [
      ['交易共通語', 1, 1 ],
      ['リカント語', 1, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 1, 'F' => 1,
                'B+'=> 3,                     'E+'=> 6, 
    },
    variantSort => ['大型草食獣リカント','小型草食獣リカント'],
    variant => {
      '大型草食獣リカント' => {
        ability => ['暗視(獣変貌)','獣変貌(大型草食獣)'],
      },
      '小型草食獣リカント' => {
        ability => ['暗視(獣変貌)','獣変貌(小型草食獣)'],
      },
    },
  },
  'リルドラケン' => {
    type => '人族',
    ability => ['鱗の皮膚','尻尾が武器','剣の加護／風の翼'],
    language => [
      ['交易共通語', 1, 1 ],
      ['ドラゴン語', 1, 0 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 2, 'D' => 2, 'E' => 1, 'F' => 2,
                                    'D+'=> 6,
    },
    variantSort => ['小翼種リルドラケン','有毛種リルドラケン'],
    variant => {
      '小翼種リルドラケン' => {
        ability => ['鱗の皮膚','尻尾が武器','剣の加護／竜の咆哮'],
      },
      '有毛種リルドラケン' => {
        ability => ['暖かき風','剣の加護／風の翼'],
      },
    },
  },
  'グラスランナー' => {
    type => '人族',
    ability => ['マナ不干渉','虫や植物との意思疎通'],
    language => [
      ['交易共通語', 1, 1 ],
      ['グラスランナー語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 1, 'D' => 2, 'E' => 1, 'F' => 2,
                                    'D+'=> 6,           'F+'=> 6,
    },
    variantSort => ['アリーシャ','クリメノス'],
    variant => {
      'アリーシャ' => {
      },
      'クリメノス' => {
      },
    },
  },
  'メリア' => {
    type => '人族',
    ability => ['繁茂する生命'],
    language => [
      ['交易共通語', 1, 1 ],
      ['妖精語', 1, 0 ],
    ],
    dice => {
      'A' => 1, 'B' => 1, 'C' => 1, 'D' => 2, 'E' => 1, 'F' => 1,
                                    'D+'=> 6,
    },
    variantSort => ['カーニバラスメリア','ファンギーメリア'],
    variant => {
      'カーニバラスメリア' => {
        ability => ['捕食する生命'],
      },
      'ファンギーメリア' => {
        ability => ['胞子散布'],
      },
    },
  },
  'ティエンス' => {
    type => '人族',
    ability => ['通じ合う意識'],
    language => [
      ['交易共通語', 1, 1 ],
      ['魔神語', 1, 0 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 1, 'D' => 1, 'E' => 2, 'F' => 2,
                                    'D+'=> 3,           'F+'=> 3,
    },
    variantSort => ['ティエンス機解種','ティエンス魔解種'],
    variant => {
      'ティエンス機解種' => {
        ability => ['無生物と通じ合う意識'],
      },
      'ティエンス魔解種' => {
        ability => ['魔神と通じ合う意識'],
      },
    },
  },
  'レプラカーン' => {
    type => '人族',
    ability => ['暗視','見えざる手','姿なき職人'],
    language => [
      ['交易共通語', 1, 1 ],
      ['魔動機文明語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 2,
    },
    variantSort => ['放浪種レプラカーン','探索種レプラカーン'],
    variant => {
      '放浪種レプラカーン' => {
        ability => ['暗視','見えざる手','姿消す職人'],
      },
      '探索種レプラカーン' => {
        ability => ['暗視','見えざる手','群れなす職人'],
      },
    },
  },
  'アルヴ' => {
    type => '人族',
    ability => ['暗視','吸精'],
    language => [
      ['交易共通語', 1, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 1, 'F' => 1,
                'B+'=> 3, 'C+'=> 3,           'E+'=> 6,
    },
    sin => 1,
  },
  'シャドウ' => {
    type => '人族',
    ability => ['暗視','月光の守り'],
    language => [
      ['交易共通語', 1, 1 ],
      ['シャドウ語', 1, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 2,
    }
  },
  'ソレイユ' => {
    type => '人族',
    ability => ['輝く肉体','太陽の再生','太陽の子'],
    language => [
      ['交易共通語', 1, 1 ],
      ['ソレイユ語', 1, 0 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 1, 'D' => 2, 'E' => 1, 'F' => 2,
                          'C+'=> 6,
    }
  },
  'ウィークリング' => {
    type => '蛮族',
    dice => {
      'A' => 2, 'B' => 2, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 2,
    },
    sin => 2,
    variantSort => ['ガルーダ','タンノズ','バジリスク','ミノタウロス','マーマン'],
    variant => {
      'ガルーダ' => {
        ability => ['蛮族の身体','未熟な翼','切り裂く風'],
        statusMod => { Agi => 3 },
        language => [
          ['交易共通語', 1, 1 ],
          ['汎用蛮族語', 1, 1 ],
        ],
      },
      'タンノズ' => {
        ability => ['蛮族の身体','水中適性','甲殻の手'],
        statusMod => { Mnd => 3 },
        language => [
          ['交易共通語', 1, 1 ],
          ['汎用蛮族語', 1, 1 ],
        ],
      },
      'バジリスク' => {
        ability => ['蛮族の身体','石化の視線','毒の血液'],
        statusMod => { Int => 3 },
        language => [
          ['交易共通語', 1, 1 ],
          ['汎用蛮族語', 1, 1 ],
        ],
      },
      'ミノタウロス' => {
        ability => ['蛮族の身体','暗視','剛力'],
        statusMod => { Str => 3 },
        language => [
          ['交易共通語', 1, 1 ],
          ['汎用蛮族語', 1, 1 ],
        ],
      },
      'マーマン' => {
        ability => ['蛮族の身体','水中適性','水・氷耐性'],
        abilityLv6 => ['バブルフォーム'],
        statusMod => { Mnd => 3 },
        language => [
          ['交易共通語', 1, 1 ],
          ['汎用蛮族語', 1, 1 ],
        ],
      },
    },
  },
  'スプリガン' => {
    type => '人族',
    ability => ['暗視','巨人化'],
    language => [
      ['交易共通語', 1, 1 ],
      ['魔法文明語', 1, 1 ],
      ['巨人語', 1, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 1, 'D' => 1, 'E' => 2, 'F' => 1,
    },
  },
  'アビスボーン' => {
    type => '人族',
    ability => [
      '奈落の落とし子',
      ['奈落の身体／アビストランク','奈落の身体／アビスアーム','奈落の身体／アビスアイ',]
    ],
    language => [
      ['交易共通語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 1, 'D' => 2, 'E' => 2, 'F' => 1,
                          'C+'=> 6,
    },
  },
  'フィー' => {
    type => '人族',
    ability => ['妖精の加護','浮遊'],
    language => [
      ['交易共通語', 1, 1 ],
      ['妖精語', 1, 0 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 1, 'D' => 1, 'E' => 1, 'F' => 2,
                'B+'=> 6,
    },
    restrictedClass => ['プリースト','マギテック'],
  },
  'フロウライト' => {
    type => '人族',
    ability => ['魂の輝き','鉱石の生命','晶石の身体'],
    language => [
      ['交易共通語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 2, 'D' => 2, 'E' => 1, 'F' => 2,
                          'C+'=> 6,                     'F+'=> 6,
    },
    restrictedClass => ['エンハンサー'],
  },
  'ハイマン' => {
    type => '人族',
    ability => ['魔法の申し子','デジャヴ'],
    language => [
      ['交易共通語', 1, 1 ],
      ['魔法文明語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 2, 'D' => 1, 'E' => 1, 'F' => 1,
    }
  },
  'ミアキス' => {
    type => '人族',
    ability => ['暗視','猫変化','獣性の発露'],
    language => [
      ['交易共通語', 1, 1 ],
      ['ミアキス語', 1, 0 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 1, 'D' => 2, 'E' => 2, 'F' => 2,
                                              'E+'=> 6,
    }
  },
  'ヴァルキリー' => {
    type => '人族',
    ability => ['戦乙女の光羽','戦乙女の祝福'],
    language => [
      ['交易共通語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 1, 'F' => 1,
                                                        'F+'=> 6,
    }
  },
  'センティアン（ルミエル）' => {
    type => '人族',
    ability => ['刻まれし聖印','神の恩寵','神の御名と共に'],
    language => [
      ['神紀文明語', 0, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 1, 'D' => 2, 'E' => 2, 'F' => 2,
    }
  },
  'センティアン（イグニス）' => {
    type => '蛮族',
    ability => ['刻まれし聖印','暗視','神の兵士','神への礼賛'],
    language => [
      ['神紀文明語', 0, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 2, 'D' => 1, 'E' => 2, 'F' => 2,
                                    'D+'=> 6,
    },
    sin => 3,
  },
  'センティアン（カルディア）' => {
    type => '人族',
    ability => ['刻まれし聖印','神の庇護','神への祈り'],
    language => [
      ['神紀文明語', 0, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 1, 'D' => 1, 'E' => 1, 'F' => 1,
                                              'E+'=> 6, 'F+'=> 6,
    }
  },
  'ノーブルエルフ' => {
    type => '人族',
    ability => ['暗視','剣の加護／水の申し子','カリスマ','痛みに弱い'],
    language => [
      ['エルフ語', 1, 1 ],
      ['魔法文明語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 1, 'D' => 2, 'E' => 2, 'F' => 2,
    }
  },
  'マナフレア' => {
    type => '人族',
    ability => ['溢れるマナ','マナの手'],
    language => [
      ['魔法文明語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 1,
                'B+'=> 6, 'C+'=> 6,                     'F+'=> 6,
    },
    restrictedClass => ['ソーサラー','コンジャラー','プリースト','フェアリーテイマー','マギテック','ドルイド','デーモンルーラー','グリモワール'],
  },
  '魔動天使' => {
    type => '人族',
    ability => ['暗視','造られし強さ','鋼鉄の翼','契約の絆'],
    language => [
      ['交易共通語', 1, 1 ],
      ['魔動機文明語', 1, 1 ],
    ],
  },
  'ダークドワーフ' => {
    type => '人族',
    ability => ['暗視','黒炎の遣い手'],
    language => [
      ['交易共通語', 1, 1 ],
      ['ドワーフ語', 1, 1 ],
      ['汎用蛮族語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 2, 'D' => 1, 'E' => 1, 'F' => 2,
      'A+'=> 6,                                         'F+'=> 6,
    }
  },
  'ドレイク' => {
    type => '蛮族',
    ability => ['暗視','魔剣の所持','飛行（飛翔）','竜化'],
    abilityReplace => {
      '飛行（飛翔）' => { lv => 13, before => '飛行Ⅱ（飛翔Ⅱ）'},
    },
    language => [
      ['交易共通語', 1, 1 ],
      ['汎用蛮族語', 1, 1 ],
      ['ドレイク語', 1, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 2,
                                              'E+'=> 6,
    },
    sin => 4,
    parts => ['胴体','翼','翼'],
  },
  'ドレイクブロークン' => {
    type => '蛮族',
    ability => ['暗視','限定竜化'],
    language => [
      ['交易共通語', 1, 1 ],
      ['汎用蛮族語', 1, 1 ],
      ['ドレイク語', 1, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 2,
                                              'E+'=> 6,
    },
    sin => 3,
  },
  'バジリスク' => {
    type => '蛮族',
    ability => ['邪視と瞳石','猛毒の血液','魔物化'],
    language => [
      ['交易共通語', 1, 1 ],
      ['汎用蛮族語', 1, 1 ],
      ['バジリスク語', 1, 1 ],
      ['ドレイク語', 1, 1 ],
      ['妖魔語', 1, 0 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 2, 'D' => 2, 'E' => 1, 'F' => 1,
      'A+'=> 6,
    },
    sin => 4,
    parts => ['頭部','胴体','邪眼'],
  },
  'リザードマン' => {
    type => '蛮族',
    ability => ['尻尾が武器','水中活動','無呼吸活動'],
    abilityLv6  => [['仲間との連携','敵への憤怒']],
    abilityLv11 => [['仲間との連携','敵への憤怒']],
    abilityLv16 => [['仲間との連携','敵への憤怒']],
    language => [
      ['汎用蛮族語', 1, 1 ],
      ['リザードマン語', 1, 1 ],
      ['ドラゴン語', 1, 0 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 1,
    },
    sin => 3,
  },
  'ケンタウロス' => {
    type => '蛮族',
    ability => ['半馬半人','馬人の武術'],
    language => [
      ['汎用蛮族語', 1, 1 ],
      ['ケンタウロス語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 1, 'F' => 2,
      'A+'=> 6,
    },
    sin => 3,
    restrictedClass => ['グラップラー'],
  },
  'ダークトロール' => {
    type => '蛮族',
    ability => ['暗視','弱体化','トロールの体躯'],
    abilityLv6 => ['限定再生'],
    language => [
      ['汎用蛮族語', 1, 1 ],
      ['巨人語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 1, 'F' => 2,
                                    'D+'=> 6,
    },
    sin => 4,
  },
  'ラミア' => {
    type => '蛮族',
    ability => ['暗視','ラミアの身体','ラミアの吸血','変化'],
    language => [
      ['交易共通語', 1, 1 ],
      ['汎用蛮族語', 1, 1 ],
      ['ドレイク語', 1, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 1, 'D' => 2, 'E' => 2, 'F' => 2,
    },
    sin => 2,
  },
  'ライカンスロープ' => {
    type => '蛮族',
    ability => ['暗視','獣人の力','獣化'],
    language => [
      ['交易共通語', 1, 1 ],
      ['汎用蛮族語', 1, 1 ],
      ['ライカンスロープ語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 2,
                                    'D+'=> 6,
    },
    sin => 2,
  },
  'コボルド' => {
    type => '蛮族',
    ability => ['種の限界','軽視','小さな匠'],
    language => [
      ['交易共通語', 1, 1 ],
      ['汎用蛮族語', 1, 1 ],
      ['妖魔語', 1, 0 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 1, 'D' => 1, 'E' => 2, 'F' => 2,
    },
    sin => 1,
  },
  'ラルヴァ' => {
    type => '蛮族',
    ability => ['暗視','吸血の祝福','忌むべき血','弱体化'],
    language => [
      ['交易共通語', 1, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 2, 'C' => 2, 'D' => 1, 'E' => 2, 'F' => 1,
                          'C+'=> 6,
    },
    sin => 2,
  },
  'バルカン' => {
    type => '蛮族',
    ability => ['暗視','炎無効','バルカンの宝石'],
    abilityLv6 => ['強制召喚'],
    language => [
      ['汎用蛮族語', 1, 1 ],
      ['バルカン語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 1,
                                    'D+'=> 6,
    },,
    sin => 4,
    restrictedClass => ['プリースト'],
  },
  'ディアボロ' => {
    type => '蛮族',
    ability => ['暗視','飛行（飛翔）','魔神の皮膚','魔人化'],
    abilityReplace => {
      '飛行（飛翔）' => { lv => 11, before => '飛行Ⅱ（飛翔Ⅱ）'},
    },
    language => [
      ['汎用蛮族語', 1, 1 ],
      ['魔神語', 1, 0 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 2, 'D' => 2, 'E' => 1, 'F' => 1,
                          'C+'=> 6,                     'F+'=> 6,
    },,
    sin => 4,
    parts => ['頭部','胴体'],
  },
  'アルボル' => {
    type => '蛮族',
    ability => [['憤怒の炎／炎の武器','憤怒の炎／炎の盾']],
    language => [
      ['交易共通語', 1, 1 ],
      ['汎用蛮族語', 1, 1 ],
      ['ドレイク語', 1, 1 ],
      ['妖精語', 1, 0 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 1, 'D' => 1, 'E' => 2, 'F' => 2,
                                    'D+'=> 3,
    },,
    sin => 2,
  },
  'バーバヤガー' => {
    type => '蛮族',
    ability => ['魔女化','魔女の火'],
    language => [
      ['交易共通語', 1, 1 ],
      ['魔法文明語', 1, 1 ],
      ['汎用蛮族語', 1, 1 ],
      ['ドレイク語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 1, 'C' => 1, 'D' => 1, 'E' => 2, 'F' => 1,
                                                        'F+'=> 6,
    },
    sin => 2,
  },
  'シザースコーピオン' => {
    type => '蛮族',
    ability => ['暗視','蠍人の身体','蠍人の体術'],
    language => [
      ['汎用蛮族語', 1, 1 ],
      ['アンドロスコーピオン語', 1, 1 ],
      ['魔動機文明語', 1, 1 ],
    ],
    dice => {
      'A' => 1, 'B' => 1, 'C' => 2, 'D' => 2, 'E' => 2, 'F' => 2,
      'A+'=> 6,
    },
    sin => 4,
    parts => ['上半身','蠍','鋏'],
  },
  'ドーン' => {
    type => '蛮族',
    ability => ['暗視','暗殺の心得','親しき闇'],
    language => [
      ['汎用蛮族語', 1, 1 ],
      ['交易共通語', 1, 1 ],
    ],
    dice => {
      'A' => 2, 'B' => 2, 'C' => 1, 'D' => 2, 'E' => 2, 'F' => 1,
      'A+'=> 6,
    },,
    sin => 2,
  },
);

## 2.0用
if($::SW2_0){
  $races{'ドレイク（ナイト）'} = $races{'ドレイク'};
  $races{'ドレイク（ブロークン）'} = $races{'ドレイクブロークン'};
  delete $races{'ドレイク'};
  delete $races{'ドレイクブロークン'};
  
  @race_names = (
    'label=人族',
      '人間',
      'エルフ',
      'ドワーフ',
      'ダークドワーフ',
      'タビット',
      'ルーンフォーク',
      'ナイトメア',
      'リルドラケン',
      'グラスランナー',
      'レプラカーン',
      'シャドウ',
      'ソレイユ',
      'ハイマン',
      'フロウライト',
      'フィー',
      'ミアキス',
      'ヴァルキリー',
      'センティアン（ルミエル）',
      'センティアン（カルディア）',
      'ノーブルエルフ',
      'マナフレア',
      '魔動天使',
      'リカント',
      'メリア',
      'ティエンス',
      'アルヴ',
      'スプリガン',
      'アビスボーン',
    'label=蛮族',
      'ウィークリング',
      'ドレイク（ナイト）',
      'ドレイク（ブロークン）',
      'バジリスク',
      'ダークトロール',
      'ケンタウロス',
      'コボルド',
      'リザードマン',
      'ラミア',
      'ライカンスロープ',
      'ラルヴァ',
      'バルカン',
      'センティアン（イグニス）',
      'ディアボロ',
      'アルボル',
      'バーバヤガー',
      'シザースコーピオン',
      'ドーン',
  );
}
##
foreach my $name (keys %races){
  if($races{$name}{variant}){
    foreach my $varname (@{ $races{$name}{variantSort} }){
      foreach my $key (keys %{ $races{$name} }){
        next if($key =~ /^variant/);
        $races{"${name}（${varname}）"}{$key} = $races{$name}{$key};
      }
      foreach my $key (keys %{ $races{$name}{variant}{$varname} }){
        $races{"${name}（${varname}）"}{$key} = $races{$name}{variant}{$varname}{$key};
      }
    }
  }
}
our @race_list;
foreach my $name (@race_names){
  if($name =~ /^label=/){
    push(@race_list, $name)
  }
  elsif($races{$name}{variant}){
    if($races{$name}{ability}){ push(@race_list, $name); }
    foreach my $varname (@{ $races{$name}{variantSort} }){ push(@race_list, "${name}（${varname}）") }
  }
  else {
    push(@race_list, $name)
  }
}


### 部位データ --------------------------------------------------
our %partsData = (
  '頭部' => {
    hp => [14,17,20,23,26,29,32,36,40,44,48,52,56,60,65,70],
    mp => [10,12,14,16,18,20,22,24,26,29,32,35,38,41,44,47],
    def=> [ 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 7, 7, 8, 8, 9],
  },
  '胴体' => {
    hp => [20,24,28,32,36,40,44,48,53,58,63,68,73,78,83,88],
    mp => [10,12,14,16,18,20,22,25,28,31,34,37,41,45,49,53],
    def=> [ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16],
  },
  '上半身' => {
    hp => [20,24,28,32,36,40,44,48,53,58,63,68,73,78,83,88],
    mp => [10,12,14,16,18,20,22,25,28,31,34,37,41,45,49,53],
    def=> [ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16],
  },
  '翼' => {
    hp => [10,13,16,19,22,25,28,32,36,40,44,48,53,58,63,68],
    mp => [ 5, 6, 7, 9,11,13,15,17,19,21,23,26,29,32,35,38],
    def=> [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15],
  },
  '邪眼' => {
    hp => [10,12,14,16,18,20,22,24,27,30,33,36,39,42,45,48],
    mp => [10,12,14,16,18,20,22,24,27,30,33,36,39,42,45,48],
    def=> [ 0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4],
  },
  '蠍' => {
    hp => [16,20,24,28,32,37,42,47,52,58,64,70,76,83,90,97],
    mp => [ 6, 8,10,12,14,16,18,21,24,27,30,33,36,40,44,48],
    def=> [ 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17],
  },
  '鋏' => {
    hp => [12,15,18,21,24,27,31,35,39,43,47,52,57,62,67,72],
    mp => [ 6, 8,10,12,14,16,18,20,22,24,26,28,30,32,34,36],
    def=> [ 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9],
  },
);



1;
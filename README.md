# LilyPond

LilyPondというプログラミング感覚で楽譜を作成できるフリーオープンソースソフトを使用した楽譜作成・テキストベース音楽記譜のリポジトリっす。

## 概要

テキストベースの楽譜作成ソフト [LilyPond](https://lilypond.org/) を用いたスコア作成の練習コード（`.ly`）や各種設定を管理・保存しているっす。

## 開発・動作環境

* **LilyPond**: `2.24.3`

## ディレクトリ構成（例）

```text
.
├── a-town-with-an-ocean-view-piano.ly  # 海の見える街（ピアノスコア練習）
└── README.md

```

## コンパイル手順

ターミナルから各 `.ly` ファイルを指定してコンパイルし、PDF（およびMIDI）を生成するっす。

```bash
lilypond <filename>.ly

```

### 実行例

```bash
lilypond a-town-with-an-ocean-view-piano.ly

```

## 注意事項

* 本リポジトリ内の楽譜データは個人の学習・耳コピ・採譜練習を目的として作成しているっss。

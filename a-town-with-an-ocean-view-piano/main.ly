\version "2.24.3"

\header {
  title = "海の見える街"
  subtitle = "A Town with an Ocean View"
  composer = "久石 譲"
  % arranger = "編曲者名"
  % opus = "Op. 1"
  tagline = ##f  % 最下部の「Music engraving by LilyPond...」の表示を消す設定
}

global = {
  \key g \major
  \time 4/4
  % 1. [Intro.] 囲み枠 と テンポ記号
  \tempo \markup { \box \bold "Intro." } 4 = 104
}

% コードネームの定義
harmonies = \chordmode {
  % 方法2: \chordmode を維持しつつ Am7 の右上に (9) を付ける表記
  % 1小節目（4拍分）
  a1:m7 |
  % 2小節目（1小節分＝4拍に伸ばすか、小節チェック記号を正しく配置）
  g2/b f2:maj7 |
  cis1:m7
  d2
  b1

  % 繰り返す区間の先頭に \repeat volta 2 を配置っす
  \repeat volta 2 {
    % Aメロ(1小節ごとに改行)
    e2:m d2 
    c2 g2/b
    a2:m7 d2
    g2:maj7 b2
    e2:m fis2:dim
    e2:m/g e2:m/gis
    a2:m7 b2:m7
    e1:m
    % Bメロ(1小節ごとに改行)
    e2:m d2
    c2 g2/b
    a2:m7 d2
    g2 b2
    e2:m fis2:dim
    e2:m/g e2/gis
    a2:m7 b2:m7

    % 1番括弧・2番括弧を \alternative で定義っす
    \alternative {
      {
        % 1番括弧 (1. Em)
        % ここからリピート開始
        e1:m
        a1:m7
        b1:m
        c1
        g1
        a2:m d2
        b2:m e2:m
        a1:7
        a2:m d2
        \time 2/4
        b2:7/dis
      }
      {
        % 2番括弧のコード
        \time 4/4
        e1:m
      }
    }
  }
  e2:m a2:m7
  d2 g2
  c2 fis2:m7
  b2 e2:m
  e2:m a2:m7
  d2 g2
  c2 fis2:m7
  b2 e2:m
  % ここからEメロ
  e2:m a2:m7
  d2 g2
  c2 fis2:m7
  b2 e2:m
  \time 2/4
  e2:m
  \time 6/8
  d2.
  g2.:6
  g2.:6
  % ここからFメロ
  \key d \major
  d4. g4./d
  d4. g4./d
  g4./d d4.:7sus4
  g4./d a4.:m
  d4. g4./d
  d4. g4./d
  g4./d d4.:7sus4
  g4./d a4.:m
  d4. g4./d
  d4. g4./d
  g4./d d4.:7sus4
  g4./d a4.:m
  d4. g4./d
  d4. g4./d
  g4./d d4.:7sus4
  g4./d a4.:m
}

% 右手と左手の楽譜の読み込み
\include "right.ly"
\include "left.ly"

\score {
  <<
    \new ChordNames {
      \harmonies
    }
    \new PianoStaff <<
      \new Staff { \right }
      \new Staff { \left }
    >>
  >>
  \layout { }  % 楽譜(PDF)を出力する設定
  \midi { }    % MIDIファイルを出力する設定
}

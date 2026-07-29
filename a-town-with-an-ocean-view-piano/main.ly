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
  % Aセクション(1小節ごとに改行)
  e2:m d2 
  c2 g2/b
  a2:m7 d2
  g2:maj7 b2
  e2:m fis2:dim
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
  % \midi { }    % MIDIファイルを出力する設定
}

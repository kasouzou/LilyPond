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
  g1/b |

  
}

right = \relative c' {
  \clef treble

  \global

  % 2. rall. の点線（TextSpanner）のテキスト設定
  \override TextSpanner.bound-details.left.text = \markup { \italic "rall." }
  % rall. をコードネームよりも上に表示するための優先度設定
  \override TextSpanner.outside-staff-priority = #2000

  
  <g b c g'>8\arpeggio [<b' b'> <a a'> <g g'>8] <g g'>\startTextSpan [<fis fis'> <e e'> <fis fis'>8] 

  <a a'>8 [<g g'> <fis fis'> <g g'>8] <d' g b d>4.\arpeggio <c c'>8

  <b g' b>4. a'8 <b, e a>8 e b <g g'>

  \time 2/4
  <a d fis a>2 

  \time 4/4
  <b dis fis b>2.\stopTextSpan  % ここで点線を終了
}

left = \relative c {
  \clef bass

  \global

  <a a,>8 [<g' c e> <g c e> <g c e>8] <g c e>8 [<e g c> <e g c> <e g c>8]

  b8( [g' <b d> g8]) c,8([g' <c e> g]) 

  cis, (g' <b e> g <e' g> b e, g) 

  \time 2/4
  d (g8 <d' fis> g,)

  \time 4/4
  (b, fis' b dis b')
}

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

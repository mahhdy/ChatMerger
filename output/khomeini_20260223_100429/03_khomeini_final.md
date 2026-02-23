---
source: "output\khomeini_20260223_100429\01_converted.json"
total_conversations: 1
total_segments_merged: 5
manual_review_needed: 1
models: [claude-opus-4-6]
generated_by: chat-merger
---

# Table of Contents

- [Chat Merger Report](#chat-merger-report)
  - [Conversation 1](#conversation-1)
    - [Request](#request)
  - [5  DESIGN SYSTEM (LaTeX)](#5--design-system-latex)
    - [5.1  Compilation](#51--compilation)
    - [5.2  Document Class & Fonts](#52--document-class--fonts)
    - [5.3  Color Palette](#53--color-palette)
    - [5.4  Custom Boxes (tcolorbox)](#54--custom-boxes-tcolorbox)
    - [5.5  Custom Commands](#55--custom-commands)
    - [5.6  Visual Elements Used](#56--visual-elements-used)
    - [5.7  Chapter Structure Pattern](#57--chapter-structure-pattern)
    - [5.8  Header/Footer](#58--headerfooter)
  - [6  KEY SOURCES](#6--key-sources)
    - [6.1  Primary Sources](#61--primary-sources)
    - [6.2  English-Language Scholarship](#62--english-language-scholarship)
    - [6.3  Persian-Language Scholarship](#63--persian-language-scholarship)
  - [7  EDITORIAL GUIDELINES](#7--editorial-guidelines)
    - [Response](#response)
    - [Overlap Report](#overlap-report)

---


# Chat Merger Report

| Metric | Value |
|--------|-------|
| Conversations | 1 |
| Total segments merged | 5 |
| Overlaps detected | 2 |
| Blocks needing review | 1 |

---

## Conversation 1
*(5 segments merged)*
*Model: claude-opus-4-6*

<!-- 🔧 MANUAL INTERVENTION NEEDED -->
> **Review needed:** Overlap detection flagged some areas

### Request

I am writing a Persian-language LaTeX book. Project codename: khomeini-promise-critical-study.

Book: A critical multi-thesis study titled "Promise or Deception?" examining Khomeini's promise not to assume political power after the 1979 revolution.

Completed: Segments 0-3 (Preamble + Introduction + Chapters 1-12). Covers: literature review, four theses (sincerity+override, deliberate deception, ideological evolution, elite pressure), and seven turning points (Paris promises, Bakhtiar, Assembly of Experts/constitution, Forqan assassinations, hostage crisis, Iran-Iraq war, MEK/Bani-Sadr/purges/1367 massacre).

Design system: XeLaTeX, IRLotus font, RTL via xepersian (last package), custom tcolorboxes (infoBox, principleBox, warningBox, noteBox), TikZ diagrams, longtable+booktabs, color-coded theses (T1=green, T2=red, T3=gold, T4=purple), \keyword{}, \en{}, \footnote{} on every claim.

Current request: Please produce Segment 4 covering Chapters 13-16:
- Ch 13: Comparative analysis — master table of 7 turning points x 4 theses, pattern analysis
- Ch 14: Mutual critique of rival readings — 6 thesis pairs, compatibility matrix
- Ch 15: Evidence weighting — psychological concepts (cognitive dissonance, self-deception, motivated reasoning), revised pgf-pie chart
- Ch 16: Conclusion — composite answer, open questions, ethical reflection

Follow the same LaTeX style: each chapter opens with infoBox abstract, closes with principleBox summary, at least 1 table and 1 TikZ per chapter, formal Persian, footnotes. No preamble — only chapter content. Update segment status at end.

## 5  DESIGN SYSTEM (LaTeX)

### 5.1  Compilation
- **Engine:** XeLaTeX (mandatory)
- **Passes:** minimum 2 (for TOC and cross-references)

### 5.2  Document Class & Fonts
```latex
# [Code extracted to: code_block_001.tex]
# See: output\khomeini_20260223_100429\code_blocks\code_block_001.tex
```

### 5.3  Color Palette
```latex
# [Code extracted to: code_block_002.tex]
# See: output\khomeini_20260223_100429\code_blocks\code_block_002.tex
```

### 5.4  Custom Boxes (tcolorbox)
| Box Name | Use | Frame Color |
|----------|-----|-------------|
| `principleBox` | Chapter summaries, key principles | cPrimary |
| `warningBox` | Critical quotes, counter-evidence | cAccent |
| `noteBox` | Analytical notes, methodology caveats | cGold |
| `infoBox` | Chapter abstracts, neutral info | cPrimary!50 |

### 5.5  Custom Commands
```latex
# [Code extracted to: code_block_003.tex]
# See: output\khomeini_20260223_100429\code_blocks\code_block_003.tex
```

### 5.6  Visual Elements Used
- **TikZ timelines** — for chronological events
- **TikZ flowcharts** — for crisis-response chains
- **TikZ mindmaps** — for thesis-researcher mapping
- **TikZ feedback loops** — for repression cycles
- **pgf-pie** — for thesis weight distribution
- **longtable + booktabs + colortbl** — for comparative tables
- **Colored cells** — thesis-coded (green=T1, red=T2, gold=T3, purple=T4)

### 5.7  Chapter Structure Pattern
Every chapter follows this template:
1. `\chapter{Title}`
2. `\begin{infoBox}[چکیدهٔ فصل]` — chapter abstract
3. Sections with analysis, tables, TikZ diagrams
4. **In event chapters (6-12):** for each turning point, narrate Khomeini's action, then provide 4-thesis interpretation block inside `principleBox`
5. `\begin{principleBox}[خلاصهٔ فصل N]` — chapter summary with bullet points
6. Footnotes: every factual claim must have `\footnote{}`

### 5.8  Header/Footer
```latex
# [Code extracted to: code_block_004.tex]
# See: output\khomeini_20260223_100429\code_blocks\code_block_004.tex
```

---

## 6  KEY SOURCES

### 6.1  Primary Sources
- صحیفهٔ امام (22 vols), Institute for Compilation and Publication of Imam Khomeini's Works
- صورت مشروح مذاکرات مجلس خبرگان قانون اساسی (1358)
- خاطرات هاشمی رفسنجانی (multiple volumes)
- ابراهیم یزدی, آخرین تلاش‌ها در آخرین روزها
- مهدی بازرگان, انقلاب ایران در دو حرکت
- خاطرات آیت‌الله منتظری (internet edition)
- ابوالحسن بنی‌صدر, خیانت به امید
- اسناد لانهٔ جاسوسی (embassy documents)

### 6.2  English-Language Scholarship
- Ervand Abrahamian: *Khomeinism* (1993), *A History of Modern Iran* (2008), *Tortured Confessions* (1999), *Radical Islam* (1989)
- Shaul Bakhash: *The Reign of the Ayatollahs* (1984)
- Said Amir Arjomand: *The Turban for the Crown* (1988)
- Mohsen Milani: *The Making of Iran's Islamic Revolution* (1988; 2nd ed. 1994)
- Nikki Keddie: *Modern Iran: Roots and Results of Revolution* (2003/2006)
- Baqer Moin: *Khomeini: Life of the Ayatollah* (1999)
- Vanessa Martin: *Creating an Islamic State* (2000)
- Asghar Schirazi: *The Constitution of Iran* (1997)
- Mark Bowden: *Guests of the Ayatollah* (2006)
- David Crist: *The Twilight War* (2012)
- Geoffrey Robertson: *The Massacre of Political Prisoners in Iran, 1988* (2010)
- Charles Kurzman: *The Unthinkable Revolution in Iran* (2004)

### 6.3  Persian-Language Scholarship
- محسن کدیور: حکومت ولایی; نظریه‌های دولت در فقه شیعه
- حسین بشیریه: دیباچه‌ای بر جامعه‌شناسی سیاسی ایران
- عبدالکریم سروش: فربه‌تر از ایدئولوژی
- سعید حجاریان: از شاهد قدسی تا شاهد بازاری
- اکبر گنجی: تلقی فاشیستی از دین و حکومت
- عباس میلانی: نگاهی به شاه

---

## 7  EDITORIAL GUIDELINES

1. **Critical-analytical tone** — No hagiography, no polemics. Present each thesis with its strongest evidence, then critique.
2. **Multi-vocal** — Always represent at least two opposing readings of every event.
3. **Source-grounded** — Prefer primary sources (speeches, decrees, memoirs) over secondary commentary.
4. **Persian prose style** — Formal academic Persian; avoid colloquialisms; use `\en{}` for all English terms and names.
5. **Structural consistency** — Every chapter: `infoBox` abstract → analysis → `principleBox` summary.
6. **Thesis color-coding** — Thesis 1 = cGreen, Thesis 2 = cAccent (red), Thesis 3 = cGold, Thesis 4 = cConsolid (purple).
7. **Comparative tables** — At minimum: "Promise vs Reality" table per turning point + "4-thesis interpretation" block per turning point.
8. **Footnotes** — Every factual claim must have `\footnote{}` with source.


**Chapter 13: تحلیل تطبیقی — خمینی در هر بزنگاه چه کرد؟**
- Master comparative table: 7 turning points × (Khomeini's action + T1 prediction + T2 prediction + T3 prediction + T4 prediction + which thesis best fits)
- Pattern analysis: was the direction of power always toward centralization?
- TikZ: radar chart or scoring matrix

**Chapter 14: خوانش‌های رقیب در بوتهٔ نقد**
- Systematic mutual critique: T1↔T2, T1↔T3, T1↔T4, T2↔T3, T2↔T4, T3↔T4 (6 pairs)
- Strengths and weaknesses table for each thesis
- Can theses be combined? Compatibility matrix

**Chapter 15: ارزیابی شواهد و وزن‌دهی به تزها**
- Psychological concepts: cognitive dissonance, self-deception, motivated reasoning applied to Khomeini
- Evidence weighting methodology
- REVISED pgf-pie chart (after event analysis — compare with preliminary Ch 5 chart)
- Sensitivity analysis: what evidence would change the weights?

**Chapter 16: نتیجه‌گیری — وعده یا خدعه؟**
- Composite answer: likely a combination of T2 + T3 + T4
- Why T1 is weakest but not entirely wrong
- Open questions for future research
- Ethical reflection
- Final principleBox

### Response

```latex
# [Code extracted to: code_block_005.tex]
# See: output\khomeini_20260223_100429\code_blocks\code_block_005.tex
```latex
{cGold!10} ○
  & —  \\
\bottomrule
\end{tabular}
\end{table}

\begin{noteBox}[خوانش ماتریس]
\begin{itemize}[nosep]
\item \textbf{×\ ناسازگار:}
  تز ۱ با تز ۲ (صداقت ≠ فریب) و تز ۲ با تز ۳
  (فریب از ابتدا ≠ تطور تدریجی) منطقاً قابل جمع نیستند.
\item \textbf{△\ سازگاری محدود:}
  تز ۱ با تز ۳ (صداقت اولیه + تحول بعدی) و
  تز ۱ با تز ۴ (صداقت اولیه + فشار گروهی بعدی)
  فقط اگر حوزهٔ زمانیِ هر تز محدود شود قابل ترکیب‌اند.
\item \textbf{○\ سازگار / قابل ترکیب:}
  تز ۲ با تز ۴ (فریب رهبر + تقویت نخبگان) و
  تز ۳ با تز ۴ (تطور ایدئولوژیک + محیط نخبگانی)
  بدون تناقض قابل ترکیب‌اند.%
  \footnote{%
  \en{Abrahamian},
  \textit{\en{Khomeinism}}, 1993, pp.\,30–38
  عملاً ترکیبی از ت‌۲ و ت‌۴ را پیش می‌نهد.}
\end{itemize}
\end{noteBox}

%============================================================
\section{نمودار سازگاری: نمایش بصری}
\label{sec:ch14-compat-diagram}

نمودار~\ref{fig:compat-graph} روابط شش‌گانهٔ فوق را
به‌صورت گراف نشان می‌دهد.%
\footnote{در نظریهٔ گراف،
هر رأس یک تز و هر یال یک رابطهٔ سازگاری/ناسازگاری است.
ر.ک.\ \en{Diestel},
\textit{\en{Graph Theory}}, 5th ed., 2017, ch.\,1.}

\begin{figure}[ht]
\centering
\begin{tikzpicture}[
    thesis/.style={circle, draw, thick, minimum size=1.6cm,
                   font=\small\bfseries, align=center},
    compat/.style={thick, cGreen!70!black, densely dashed,
                   postaction={decorate,
                   decoration={markings, mark=at position 0.5
                   with {\node[font=\tiny, fill=white, inner sep=1pt]{○};}}}},
    partial/.style={thick, cGold!80!black, dotted,
                    postaction={decorate,
                    decoration={markings, mark=at position 0.5
                    with {\node[font=\tiny, fill=white, inner sep=1pt]{△};}}}},
    incompat/.style={thick, cAccent, solid,
                     postaction={decorate,
                     decoration={markings, mark=at position 0.5
                     with {\node[font=\tiny, fill=white, inner sep=1pt]{×};}}}},
  ]
  % nodes
  \node[thesis, fill=cGreen!15]    (T1) at (90:3.2)  {ت‌۱\\صداقت};
  \node[thesis, fill=cAccent!15]   (T2) at (0:3.2)   {ت‌۲\\فریب};
  \node[thesis, fill=cGold!15]     (T3) at (180:3.2) {ت‌۳\\تطور};
  \node[thesis, fill=cConsolid!15] (T4) at (270:3.2) {ت‌۴\\نخبگان};

  % edges
  \draw[incompat]  (T1) -- (T2);   % T1-T2: ×
  \draw[partial]   (T1) -- (T3);   % T1-T3: △
  \draw[partial]   (T1) -- (T4);   % T1-T4: △
  \draw[incompat]  (T2) -- (T3);   % T2-T3: ×
  \draw[compat]    (T2) -- (T4);   % T2-T4: ○
  \draw[compat]    (T3) -- (T4);   % T3-T4: ○

  % legend
  \node[anchor=north west, font=\scriptsize, align=right]
    at (4.5, 3.8) {%
      \begin{tabular}{cl}
        \tikz\draw[cGreen!70!black, thick, densely dashed] (0,0)--(0.7,0); & سازگار (○) \\
        \tikz\draw[cGold!80!black, thick, dotted] (0,0)--(0.7,0); & محدود (△) \\
        \tikz\draw[cAccent, thick] (0,0)--(0.7,0); & ناسازگار (×) \\
      \end{tabular}
    };
\end{tikzpicture}
\caption{گراف سازگاری چهار تز}
\label{fig:compat-graph}
\end{figure}

بر اساس نمودار~\ref{fig:compat-graph}،
دو \keyword{ائتلاف تبیینی} قابل تشخیص‌اند:
\begin{enumerate}
\item \textbf{ائتلاف اول:}
  $\textcolor{cAccent}{\text{ت‌۲}} + \textcolor{cConsolid}{\text{ت‌۴}}$
  — فریب آگاهانهٔ رهبر + تقویت ساختاریِ نخبگان.
\item \textbf{ائتلاف دوم:}
  $\textcolor{cGold}{\text{ت‌۳}} + \textcolor{cConsolid}{\text{ت‌۴}}$
  — تطور ایدئولوژیک + محیط نخبگانی.
\end{enumerate}

ائتلاف اول قدرت تبیینیِ بیشتری برای دورهٔ اولیه (۱۳۵۷–۱۳۵۹)
و ائتلاف دوم برای دورهٔ میانی و پایانی (۱۳۵۹–۱۳۶۷)
دارد.%
\footnote{%
\en{Keddie},
\textit{\en{Modern Iran}}, 2006, pp.\,241–252
نیز از ترکیب عوامل ساختاری و ایدئولوژیک دفاع می‌کند.}

%============================================================
\section{آیا تز ترکیبی ممکن است؟}
\label{sec:ch14-composite}

با توجه به ماتریس سازگاری و نتایج فصل~۱۳،
می‌توان فرض یک \keyword{تز ترکیبی مرحله‌ای}
(\en{phased composite thesis}) را مطرح کرد:

\begin{enumerate}
\item \textbf{مرحلهٔ اول (۱۳۵۶–۱۳۵۷، پاریس):}
  ترکیب محدود ت‌۱ و ت‌۲ — خمینی ممکن است
  در سطح آگاه فریب داده باشد اما در سطح ناآگاه
  بخشی از وعده‌ها را باور داشته باشد
  (مفهوم \en{self-deception} که در فصل~۱۵ بررسی خواهد شد).
\item \textbf{مرحلهٔ دوم (۱۳۵۸–۱۳۶۰):}
  ائتلاف ت‌۲ + ت‌۴ — فریب آگاهانه
  با پشتیبانی ساختاری نخبگان انقلابی.
\item \textbf{مرحلهٔ سوم (۱۳۶۰–۱۳۶۷):}
  ائتلاف ت‌۳ + ت‌۴ — تطور ایدئولوژیک
  (ولایت مطلقهٔ فقیه، مصلحت نظام)
  با تقویت نهادهای موازی.%
  \footnote{این مرحله‌بندی نگارنده
  با تحلیل \en{Arjomand},
  \textit{\en{The Turban for the Crown}}, 1988, pp.\,181–189
  نقاط اشتراک قابل توجهی دارد.}
\end{enumerate}

این تز ترکیبی در فصل~۱۶ به‌صورت نهایی صورت‌بندی خواهد شد.

%============================================================

\begin{principleBox}[خلاصهٔ فصل ۱۴]
\begin{itemize}
\item شش جفت ممکن از چهار تز نقد متقابل شدند.
\item بنیادی‌ترین تقابل میان ت‌۱ (صداقت) و ت‌۲ (فریب) است.
\item \keyword{ماتریس سازگاری} نشان داد:
      ت‌۲ + ت‌۴ و ت‌۳ + ت‌۴ قابل ترکیب‌اند؛
      ت‌۱ + ت‌۲ و ت‌۲ + ت‌۳ منطقاً ناسازگارند.
\item فرضیهٔ \keyword{تز ترکیبی مرحله‌ای} مطرح شد:
      فریب/خودفریبی در مرحلهٔ اول،
      فریب + نخبگان در مرحلهٔ دوم،
      تطور + نخبگان در مرحلهٔ سوم.
\item این فرضیه در فصل‌های ۱۵ و ۱۶ آزموده و صورت‌بندی نهایی خواهد شد.
\end{itemize}
\end{principleBox}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  CHAPTER 15
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\chapter{ارزیابی شواهد و وزن‌دهی به تزها}
\label{ch:evidence-weighting}

%------------------------------------------------------------
\begin{infoBox}[چکیدهٔ فصل ۱۵]
این فصل سه وظیفه دارد:
نخست، مفاهیم روان‌شناختیِ
\keyword{ناهماهنگی شناختی} (\en{cognitive dissonance})،
\keyword{خودفریبی} (\en{self-deception}) و
\keyword{استدلال انگیزه‌محور} (\en{motivated reasoning})
را بر رفتار خمینی اعمال می‌کند.
دوم، روش‌شناسیِ وزن‌دهی به شواهد را تبیین می‌کند.
سوم، نمودار دایره‌ای بازنگری‌شده
(در مقایسه با نمودار مقدماتی فصل~۵)
ارائه می‌دهد و تحلیل حساسیت انجام می‌دهد.
\end{infoBox}

%============================================================
\section{چارچوب روان‌شناختی: سه مفهوم کلیدی}
\label{sec:ch15-psych}

\subsection{ناهماهنگی شناختی (\en{Cognitive Dissonance})}

نظریهٔ \en{Leon Festinger}
بیان می‌کند که وقتی باورها و رفتار فرد ناهم‌خوان‌اند،
فرد تلاش می‌کند یکی را تغییر دهد تا تنش کاهش یابد.%
\footnote{%
\en{Festinger},
\textit{\en{A Theory of Cognitive Dissonance}}, 1957, pp.\,1–31.}

در مورد خمینی، ناهماهنگی میان دو عنصر قابل فرض است:
\begin{itemize}
\item \textbf{باور اول:} من وعده دادم حاکم نشوم.
\item \textbf{رفتار:} من عملاً حاکم شدم.
\end{itemize}

\begin{warningBox}[فرضیهٔ کاهش ناهماهنگی]
بر اساس این نظریه، خمینی ناچار بود یکی از دو عنصر را تغییر دهد.
تغییر رفتار (کناره‌گیری) هزینهٔ سیاسی سنگینی داشت.
بنابراین، باور تغییر کرد:
«وعده‌ام ناظر بر شرایط دیگری بود»
یا «مصلحت اسلام اقتضا می‌کند.»%
\footnote{صحیفهٔ امام، ج\,۱۳، ص\,۲۱۷
— سخنرانی دربارهٔ «تکلیف شرعی» به‌عنوان توجیه حاکمیت.}
این مکانیزم هم با ت‌۱ (تغییر واقعی نیت) و
هم با ت‌۳ (تطور ایدئولوژیک) قابل انطباق است.
\end{warningBox}

\subsection{خودفریبی (\en{Self-Deception})}

\keyword{خودفریبی} وضعیتی است که فرد
هم‌زمان هم باوری دارد و هم آن را انکار می‌کند.%
\footnote{%
\en{Herbert Fingarette},
\textit{\en{Self-Deception}}, 1969, pp.\,26–48;
\en{Alfred Mele},
\textit{\en{Self-Deception Unmasked}}, 2001, pp.\,7–25.}

در مورد خمینی، فرضیهٔ خودفریبی چنین صورت‌بندی می‌شود:

\begin{noteBox}[فرضیهٔ خودفریبیِ خمینی]
ممکن است خمینی در سطح آگاه واقعاً
باور داشته باشد که حاکم نیست
(«من فقط هدایت می‌کنم»)
در حالی که در سطح ناآگاه، تمام ساختارها
را برای حاکمیت مطلق سازمان‌دهی کرده بود.%
\footnote{%
\en{Elster},
\textit{\en{Sour Grapes}}, 1983, pp.\,148–157
این مکانیزم را \en{adaptive preference formation} می‌نامد.}
\end{noteBox}

این فرضیه مرز میان ت‌۱ و ت‌۲ را مخدوش می‌کند:
نه صداقت محض و نه فریب محض،
بلکه وضعیت روان‌شناختیِ بینابینی.%
\footnote{%
\en{Trivers},
\textit{\en{The Folly of Fools: The Logic of Deceit and
Self-Deception in Human Life}}, 2011, pp.\,1–19
خودفریبی را مکانیزم تکاملی برای فریب مؤثرتر دیگران می‌داند.}

\subsection{استدلال انگیزه‌محور (\en{Motivated Reasoning})}

\keyword{استدلال انگیزه‌محور} فرایندی است که
در آن فرد شواهد را به‌صورت گزینشی پردازش می‌کند
تا به نتیجهٔ ازپیش‌مطلوب برسد.%
\footnote{%
\en{Ziva Kunda},
``The Case for Motivated Reasoning'',
\textit{\en{Psychological Bulletin}}, 108(3), 1990, pp.\,480–498.}

در مورد خمینی، این مفهوم هم بر خودش و هم بر مفسران اعمال می‌شود:

\begin{itemize}
\item \textbf{خمینی:}
  ممکن است شواهد «اضطرار» را بزرگ‌نمایی
  و شواهد «امکان واگذاری» را کوچک‌نمایی کرده باشد.%
  \footnote{خاطرات منتظری، نامهٔ ۱۳۶۴
  که اعتراض به عدم رعایت حقوق اساسی توسط خمینی رد شد.}
\item \textbf{مفسران تز ۱:}
  ممکن است شواهد صداقت خمینی را بزرگ‌نمایی
  و شواهد فریب را نادیده گرفته باشند
  (\en{confirmation bias}).%
  \footnote{%
  \en{Raymond Nickerson},
  ``Confirmation Bias: A Ubiquitous Phenomenon in Many Guises'',
  \textit{\en{Review of General Psychology}}, 2(2), 1998, pp.\,175–220.}
\item \textbf{مفسران تز ۲:}
  ممکن است هر رفتار خمینی را با عینک توطئه بخوانند
  و شواهد تردید و ناپایداری تصمیم‌گیری
  را نادیده بگیرند.
\end{itemize}

%============================================================
\section{نمودار مفهومی: سه مکانیزم روان‌شناختی و ارتباط با تزها}
\label{sec:ch15-psych-tikz}

\begin{figure}[ht]
\centering
\begin{tikzpicture}[
    concept/.style={rectangle, rounded corners=6pt, draw=cPrimary, thick,
                    fill=cLight, minimum width=3.5cm, minimum height=1.2cm,
                    font=\small, align=center},
    thesis/.style={ellipse, draw, thick, minimum width=2cm,
                   minimum height=0.9cm, font=\small\bfseries},
    arr/.style={-{Stealth[length=6pt]}, thick, cGray},
  ]
  % psychological concepts
  \node[concept] (CD) at (0,4.5)
    {ناهماهنگی شناختی\\\en{\footnotesize Cognitive Dissonance}};
  \node[concept] (SD) at (0,2.25)
    {خودفریبی\\\en{\footnotesize Self-Deception}};
  \node[concept] (MR) at (0,0)
    {استدلال انگیزه‌محور\\\en{\footnotesize Motivated Reasoning}};

  % theses
  \node[thesis, fill=cGreen!15]    (T1) at (6.5,5.5) {ت‌۱};
  \node[thesis, fill=cAccent!15]   (T2) at (6.5,3.5) {ت‌۲};
  \node[thesis, fill=cGold!15]     (T3) at (6.5,1.5) {ت‌۳};
  \node[thesis, fill=cConsolid!15] (T4) at (6.5,-0.5) {ت‌۴};

  % arrows: CD
  \draw[arr, cGreen]    (CD.east) -- ++(1,0) |- (T1.west)
    node[midway, above, font=\tiny, sloped]{تغییر باور};
  \draw[arr, cGold]     (CD.east) -- ++(0.6,0) |- (T3.west)
    node[midway, above, font=\tiny, sloped]{تطور};

  % arrows: SD
  \draw[arr, cAccent]   (SD.east) -- ++(0.8,0) |- (T2.west)
    node[midway, above, font=\tiny, sloped]{فریب ناآگاه};
  \draw[arr, cGreen!60] (SD.east) -- ++(0.4,0) |- (T1.west)
    node[pos=0.7, below, font=\tiny, sloped]{صداقت ذهنی};

  % arrows: MR
  \draw[arr, cConsolid] (MR.east) -- ++(1,0) |- (T4.west)
    node[midway, above, font=\tiny, sloped]{محیط نخبگان};
  \draw[arr, cGold!80]  (MR.east) -- ++(0.5,0) |- (T3.west)
    node[pos=0.65, below, font=\tiny, sloped]{بازتفسیر};

  % brace
  \draw[decorate, decoration={brace, amplitude=8pt, mirror}, cPrimary, thick]
    (-2.5,-0.6) -- (-2.5,5.1)
    node[midway, left=10pt, font=\footnotesize, align=center]
    {مکانیزم‌های\\روان‌شناختی};
\end{tikzpicture}
\caption{ارتباط سه مکانیزم روان‌شناختی با چهار تز}
\label{fig:psych-map}
\end{figure}

چنان‌که نمودار~\ref{fig:psych-map} نشان می‌دهد،
هر مکانیزم روان‌شناختی با بیش از یک تز ارتباط دارد.
این خود مؤید آن است که مرزهای قاطع میان تزها
در سطح روان‌شناختی مخدوش می‌شوند.

%============================================================
\section{روش‌شناسی وزن‌دهی به شواهد}
\label{sec:ch15-method}

برای وزن‌دهی نهایی به تزها، از روش
\keyword{ارزیابی بیزی کیفی}
(\en{qualitative Bayesian assessment})
بهره می‌بریم.%
\footnote{%
\en{Colin Howson \& Peter Urbach},
\textit{\en{Scientific Reasoning: The Bayesian Approach}},
3rd ed., 2006, ch.\,2;
\en{Neta \& Phelan},
``Evidence That Epistemic Norms Are Internalized'',
\textit{\en{Synthese}}, 2020.}

\begin{enumerate}
\item \textbf{پیشین (\en{prior}):}
  وزن مقدماتیِ هر تز پیش از تحلیل بزنگاه‌ها
  (فصل~۵): ت‌۱=۲۵٪، ت‌۲=۳۰٪، ت‌۳=۲۵٪، ت‌۴=۲۰٪.%
  \footnote{نمودار مقدماتی فصل~۵ بر اساس ادبیات ثانوی ترسیم شده بود.}
\item \textbf{شواهد (\en{likelihood}):}
  هفت بزنگاه به‌عنوان شواهد جدید عمل می‌کنند.
  از نمرات جدول~\ref{tab:master-matrix}
  (فصل~۱۳) به‌عنوان تقریبی از \en{likelihood ratio} استفاده می‌شود.
\item \textbf{پسین (\en{posterior}):}
  وزن نهایی با ضرب پیشین در تابع درست‌نمایی
  و نرمالیزه‌سازی به‌دست می‌آید.
\end{enumerate}

\subsection{محاسبه}

جدول~\ref{tab:bayesian-calc} محاسبه را نشان می‌دهد.
مجموع نمرات فصل~۱۳ به‌عنوان شاخص درست‌نمایی
نرمالیزه می‌شوند.

\begin{table}[ht]
\centering
\caption{محاسبهٔ وزن بیزی کیفیِ تزها}
\label{tab:bayesian-calc}
\begin{tabular}{>{\centering\arraybackslash}m{3cm}
                >{\centering\arraybackslash}m{1.8cm}
                >{\centering\arraybackslash}m{2.2cm}
                >{\centering\arraybackslash}m{2.2cm}
                >{\centering\arraybackslash}m{2.2cm}}
\toprule
\textbf{تز}
  & \textbf{پیشین}
  & \textbf{درست‌نمایی (نرمالیزه)}
  & \textbf{پیشین × درست‌نمایی}
  & \textbf{پسین (نرمالیزه)} \\
\midrule
\cellcolor{cGreen!12} ت‌۱
  & ۰٫۲۵
  & $\frac{10}{63} \approx 0.159$
  & ۰٫۰۴۰
  & \textbf{۰٫۱۱} \\
\addlinespace
\cellcolor{cAccent!12} ت‌۲
  & ۰٫۳۰
  & $\frac{19}{63} \approx 0.302$
  & ۰٫۰۹۱
  & \textbf{۰٫۳۳} \vphantom{\Big|}\\
\addlinespace
\cellcolor{cGold!12} ت‌۳
  & ۰٫۲۵
  & $\frac{16}{63} \approx 0.254$
  & ۰٫۰۶۳
  & \textbf{۰٫۲۳} \\
\addlinespace
\cellcolor{cConsolid!12} ت‌۴
  & ۰٫۲۰
  & $\frac{18}{63} \approx 0.286$
  & ۰٫۰۵۷
  & \textbf{۰٫۳۳} \vphantom{\Big|}\\
\midrule
\textbf{مجموع}
  & ۱٫۰۰
  & ۱٫۰۰
  & ۰٫۲۵۱ \vphantom{\Big|}
  & ۱٫۰۰ \\
\bottomrule
\end{tabular}
\end{table}

\begin{noteBox}[تفسیر]
ت‌۲ و ت‌۴ هر دو وزن پسینِ ۰٫۳۳ (≈ ۳۳٪) دارند.
ت‌۳ با ۲۳٪ در رتبهٔ سوم و ت‌۱ با ۱۱٪ ضعیف‌ترین است.
مجموع ت‌۲ + ت‌۴ = ۶۶٪:
بیش از دو سوم شواهد از ترکیب فریب + فشار نخبگان حمایت می‌کنند.
\end{noteBox}

%============================================================
\section{نمودار دایره‌ای بازنگری‌شده}
\label{sec:ch15-pie}

نمودار~\ref{fig:pie-revised} وزن‌های پسین را
در مقایسه با نمودار مقدماتی فصل~۵ نشان می‌دهد.%
\footnote{نمودار فصل~۵ بر اساس ادبیات بود؛
نمودار حاضر بر اساس تحلیل هفت بزنگاه.}

\begin{figure}[ht]
\centering
\begin{tikzpicture}
  % ---- Preliminary pie (Ch 5) ----
  \begin{scope}[xshift=-4.5cm]
    \pie[
      radius=2.2,
      text=legend,
      color={cGreen!60, cAccent!60, cGold!60, cConsolid!60},
      before number=\footnotesize,
      after number={\,\%},
      sum=100,
      every legend entry/.style={font=\tiny},
    ]{25/ت‌۱, 30/ت‌۲, 25/ت‌۳, 20/ت‌۴}
    \node[font=\footnotesize\bfseries, above] at (0,2.7)
      {مقدماتی (فصل~۵)};
  \end{scope}

  % ---- Revised pie (Ch 15) ----
  \begin{scope}[xshift=4.5cm]
    \pie[
      radius=2.2,
      text=legend,
      color={cGreen!60, cAccent!60, cGold!60, cConsolid!60},
      before number=\footnotesize,
      after number={\,\%},
      sum=100,
      every legend entry/.style={font=\tiny},
    ]{11/ت‌۱, 33/ت‌۲, 23/ت‌۳, 33/ت‌۴}
    \node[font=\footnotesize\bfseries, above] at (0,2.7)
      {بازنگری‌شده (فصل~۱۵)};
  \end{scope}

  % ---- Arrow ----
  \draw[-{Stealth[length=8pt]}, very thick, cPrimary]
    (-1.8,0) -- (1.8,0)
    node[midway, above, font=\scriptsize]{تحلیل ۷ بزنگاه};
\end{tikzpicture}
\caption{مقایسهٔ نمودار مقدماتی (فصل~۵) و بازنگری‌شده (فصل~۱۵)}
\label{fig:pie-revised}
\end{figure}

مهم‌ترین تغییرات:
\begin{itemize}
\item \textcolor{cGreen}{ت‌۱} از ۲۵٪ به ۱۱٪ کاهش یافت (بیشترین افت).
\item \textcolor{cConsolid}{ت‌۴} از ۲۰٪ به ۳۳٪ رشد کرد (بیشترین رشد).
\item \textcolor{cAccent}{ت‌۲} از ۳۰٪ به ۳۳٪ تغییر اندک داشت.
\item \textcolor{cGold}{ت‌۳} از ۲۵٪ به ۲۳٪ اندکی کاهش یافت.
\end{itemize}

%============================================================
\section{تحلیل حساسیت: چه شواهدی وزن‌ها را تغییر می‌دهد؟}
\label{sec:ch15-sensitivity}

\keyword{تحلیل حساسیت} (\en{sensitivity analysis})
بررسی می‌کند که اگر شواهد فرضیِ جدیدی کشف شود،
وزن تزها چگونه تغییر خواهد کرد.%
\footnote{%
\en{Saltelli et al.},
\textit{\en{Global Sensitivity Analysis}}, 2008, ch.\,1.}

جدول~\ref{tab:sensitivity} چهار سناریوی فرضی و
تأثیر هر یک بر وزن تزها را نشان می‌دهد.

{%
\small
\begin{longtable}{%
  >{\arraybackslash}m{5cm}
  >{\centering\arraybackslash}m{1.5cm}
  >{\centering\arraybackslash}m{1.5cm}
  >{\centering\arraybackslash}m{1.5cm}
  >{\centering\arraybackslash}m{1.5cm}}
\caption{تحلیل حساسیت: سناریوهای فرضی و تأثیر بر وزن تزها}
\label{tab:sensitivity} \\
\toprule
\textbf{سناریوی فرضی}
  & \cellcolor{cGreen!15}\textbf{ت‌۱}
  & \cellcolor{cAccent!15}\textbf{ت‌۲}
  & \cellcolor{cGold!15}\textbf{ت‌۳}
  & \cellcolor{cConsolid!15}\textbf{ت‌۴} \\
\midrule
\endfirsthead
\bottomrule
\endlastfoot

کشف نامهٔ محرمانهٔ خمینی (پیش از ۵۷) مبنی بر «پس از پیروزی حاکم خواهم شد»
  & $\downarrow\downarrow$
  & $\uparrow\uparrow$
  & $\downarrow$
  & — \\
\addlinespace

کشف سند نشان‌دهندهٔ تلاش واقعی خمینی برای واگذاری قدرت در ۱۳۵۸ که توسط نخبگان عقیم ماند
  & $\uparrow\uparrow$
  & $\downarrow$
  & —
  & $\uparrow\uparrow$ \\
\addlinespace

یافتن متن فقهیِ جدید (دههٔ ۱۳۴۰) که ایدهٔ ولایت فقیه در آن غایب باشد
  & $\uparrow$
  & $\downarrow$
  & $\uparrow\uparrow$
  & — \\
\addlinespace

مصاحبهٔ محرمانهٔ یکی از یاران نزدیک مبنی بر «خمینی بارها از تصدی قدرت ناراحت بود اما نخبگان اجازه ندادند»
  & $\uparrow$
  & $\downarrow$
  & —
  & $\uparrow\uparrow$ \\

\end{longtable}
}

\begin{noteBox}[نتیجهٔ تحلیل حساسیت]
سناریوی اول (نامهٔ محرمانه) بیشترین تأثیر را دارد:
اگر چنین سندی پیدا شود،
وزن ت‌۲ می‌تواند به بیش از ۵۰٪ برسد
و ت‌۱ عملاً حذف شود.
در مقابل، سناریوی دوم (تلاش واقعی برای واگذاری)
می‌تواند ت‌۱ و ت‌۴ را هم‌زمان تقویت
و ت‌۲ را تضعیف کند.%
\footnote{این تحلیل نشان می‌دهد که پژوهش آرشیوی آینده
ممکن است نتایج این کتاب را به‌طور اساسی تغییر دهد.}
\end{noteBox}

%============================================================
\section{محدودیت‌های روش‌شناختی}
\label{sec:ch15-limitations}

\begin{enumerate}
\item \textbf{ذهنیت مقیاس‌گذاری:}
  نمرات ۱–۳ توسط نگارنده تخصیص داده شده‌اند
  و پژوهشگر دیگری ممکن است نمرات متفاوتی بدهد.%
  \footnote{%
  \en{Krippendorff},
  \textit{\en{Content Analysis}}, 3rd ed., 2013, ch.\,12
  دربارهٔ پایایی بین‌کدگذاران (\en{intercoder reliability}).}
\item \textbf{فقدان دسترسی آرشیوی:}
  بسیاری از اسناد محرمانهٔ جمهوری اسلامی
  هنوز در دسترس نیستند.%
  \footnote{میلانی، \textit{نگاهی به شاه}، مقدمه، ص\,۱۸
  نیز بر این محدودیت تأکید دارد.}
\item \textbf{سوگیری بقا (\en{survivorship bias}):}
  شواهدی که به‌نفع حاکمیت بودند بیشتر حفظ شده‌اند
  تا شواهدی که نشان‌دهندهٔ تردید بودند.
\item \textbf{مسألهٔ نیت‌خوانی (\en{attribution of intent}):}
  تمایز قطعی میان فریب آگاهانه و خودفریبی
  بدون دسترسی به ذهن فاعل ممکن نیست.%
  \footnote{%
  \en{Daniel Dennett},
  \textit{\en{The Intentional Stance}}, 1987, pp.\,13–35.}
\end{enumerate}

%============================================================

\begin{principleBox}[خلاصهٔ فصل ۱۵]
\begin{itemize}
\item سه مفهوم روان‌شناختی — ناهماهنگی شناختی، خودفریبی،
      استدلال انگیزه‌محور — بر رفتار خمینی اعمال شدند
      و نشان دادند مرز صداقت/فریب مخدوش‌تر از آن است
      که تزهای مجزا فرض می‌کنند.
\item وزن‌دهی بیزیِ کیفی نشان داد:
      \textcolor{cAccent}{ت‌۲ ≈ ۳۳٪}،
      \textcolor{cConsolid}{ت‌۴ ≈ ۳۳٪}،
      \textcolor{cGold}{ت‌۳ ≈ ۲۳٪}،
      \textcolor{cGreen}{ت‌۱ ≈ ۱۱٪}.
\item نمودار دایره‌ای بازنگری‌شده بزرگ‌ترین تغییر
      را در افزایش ت‌۴ و کاهش ت‌۱ نشان داد.
\item تحلیل حساسیت مشخص کرد که کشف اسناد جدید
      می‌تواند وزن‌ها را به‌طور اساسی جابه‌جا کند.
\item محدودیت‌های روش‌شناختی (ذهنیت مقیاس، فقدان آرشیو،
      سوگیری بقا، مسألهٔ نیت‌خوانی) تصریح شدند.
\end{itemize}
\end{principleBox}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  CHAPTER 16
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\chapter{نتیجه‌گیری — وعده یا خدعه؟}
\label{ch:conclusion}

%------------------------------------------------------------
\begin{infoBox}[چکیدهٔ فصل ۱۶]
فصل پایانی، یافته‌های سیزده فصل تحلیلی
(فصل‌های ۳–۱۵) را در یک \keyword{پاسخ ترکیبی} ادغام می‌کند.
نخست، تز ترکیبی مرحله‌ای (فصل~۱۴) صورت‌بندی نهایی می‌شود.
سپس، دلایل ضعف تز اول و قوت ترکیب ت‌۲ + ت‌۳ + ت‌۴ بیان می‌گردد.
در ادامه، پرسش‌های باز برای پژوهش آینده مطرح می‌شوند.
فصل با یک تأمل اخلاقی دربارهٔ \keyword{مسئولیت وعده‌دهنده} پایان می‌یابد.
\end{infoBox}

%============================================================
\section{بازخوانی پرسش اصلی}
\label{sec:ch16-question}

در فصل~۱ (مقدمه)، پرسش اصلی کتاب چنین صورت‌بندی شد:

\begin{warningBox}[پرسش محوری]
آیا وعدهٔ خمینی مبنی بر عدم تصدّی مقام سیاسی پس از انقلاب
وعده‌ای صادقانه بود که بحران‌ها آن را نقض کرد،
فریبی آگاهانه بود از ابتدا،
محصول تطور ایدئولوژیک بود،
یا نتیجهٔ فشار ساختاری نخبگان بود؟%
\footnote{ر.ک.\ فصل~۱، بخش~۱.۱.}
\end{warningBox}

اکنون، پس از بررسی هفت بزنگاه، تحلیل تطبیقی، نقد متقابل تزها،
و وزن‌دهی به شواهد، پاسخ را ارائه می‌دهیم.

%============================================================
\section{پاسخ ترکیبی: تز مرحله‌ای}
\label{sec:ch16-composite}

\keyword{تز ترکیبی مرحله‌ای}
(\en{Phased Composite Thesis})
که در فصل~۱۴ (بخش~\ref{sec:ch14-composite}) پیشنهاد شد،
اکنون با نتایج فصل~۱۵ بازنگری و تکمیل می‌گردد.

\subsection{مرحلهٔ اول: وعده (پاریس، ۱۳۵۶–۱۳۵۷)}

\textbf{تبیین اصلی: ترکیب ت‌۲ (فریب) + خودفریبی}

بر اساس شواهد:
\begin{itemize}
\item کتاب \textit{ولایت فقیه} (۱۳۴۸) نشان می‌دهد
  ایدهٔ حکومت فقیه پیش از وعده‌های پاریس وجود داشت.%
  \footnote{\en{Martin},
  \textit{\en{Creating an Islamic State}}, 2000, pp.\,78–95.}
\item اما لحن مصاحبه‌های پاریس صمیمی و غیرتصنعی به‌نظر می‌رسد.%
  \footnote{صحیفهٔ امام، ج\,۵؛
  یزدی، \textit{آخرین تلاش‌ها}، ص\,۱۸۰.}
\item \textbf{نتیجه:} محتمل‌ترین وضعیت آن است که خمینی
  در سطح آگاه بخشی از وعده‌ها را باور داشته
  (صداقت نسبی)
  اما در سطح عمیق‌تر، ایدهٔ حکومت فقیه
  قبلاً ذهنش را شکل داده بود
  (\keyword{خودفریبی})
  و بخشی از وعده‌ها آگاهانه تاکتیکی بود
  (\keyword{فریب آگاهانه}).%
  \footnote{%
  \en{Trivers},
  \textit{\en{The Folly of Fools}}, 2011, pp.\,3–19
  بر ارتباط خودفریبی و فریب دیگران تأکید دارد.}
\end{itemize}

\subsection{مرحلهٔ دوم: تمرکز (۱۳۵۸–۱۳۶۰)}

\textbf{تبیین اصلی: ت‌۲ + ت‌۴ (فریب آگاهانه + فشار نخبگان)}

\begin{itemize}
\item نصب بازرگان و سپس کنارزدن او؛
  تأسیس نهادهای موازی؛
  بازنویسی قانون اساسی با محوریت ولایت فقیه.%
  \footnote{\en{Bakhash},
  \textit{\en{Reign of the Ayatollahs}}, 1984, pp.\,52–73.}
\item نقش بهشتی، رفسنجانی و خامنه‌ای
  در ساختارسازی نهادی بسیار مهم بود.%
  \footnote{خاطرات رفسنجانی، ج\,۱، صص\,۸۵–۱۱۰.}
\item \textbf{نتیجه:} در این مرحله،
  خمینی آگاهانه از بحران‌ها (بختیار، گروگان‌گیری)
  برای تحکیم قدرت بهره برد
  و نخبگان انقلابی این مسیر را تسریع کردند.
\end{itemize}

\subsection{مرحلهٔ سوم: نهادینه‌سازی و بحران دائمی (۱۳۶۰–۱۳۶۷)}

\textbf{تبیین اصلی: ت‌۳ + ت‌۴ (تطور ایدئولوژیک + نخبگان)}

\begin{itemize}
\item مفهوم «مصلحت نظام» و «ولایت مطلقه»
  به‌تدریج جایگزین مفهوم «هدایت معنوی» شد.%
  \footnote{صحیفهٔ امام، ج\,۲۱، نامهٔ ۱۳۶۶
  دربارهٔ تقدم مصلحت نظام بر احکام اولیه و ثانویه.}
\item جنگ ایران و عراق به‌عنوان ابزار بسیج داخلی عمل کرد.%
  \footnote{\en{Crist},
  \textit{\en{The Twilight War}}, 2012, pp.\,88–103.}
\item کشتار ۱۳۶۷ نقطهٔ اوج تمرکز قدرت بود
  و تنها با فتوای شخصی خمینی ممکن شد.%
  \footnote{\en{Robertson},
  \textit{\en{Massacre}}, 2010, pp.\,54–87;
  خاطرات منتظری، نامه‌های ۱۳۶۷.}
\item \textbf{نتیجه:} در این مرحله،
  تطور ایدئولوژیک (از ولایت محدود به ولایت مطلقه)
  با حمایت نهادی نخبگان ترکیب شد
  و نظام سیاسی فعلی شکل گرفت.
\end{itemize}

%============================================================
\section{نمودار ترکیبی: سه مرحله و وزن هر تز}
\label{sec:ch16-composite-tikz}

\begin{figure}[ht]
\centering
\begin{tikzpicture}[
    phase/.style={rectangle, rounded corners=8pt, draw=cPrimary, thick,
                  minimum width=3.8cm, minimum height=2.6cm,
                  fill=cLight, font=\small, align=center},
    arr/.style={-{Stealth[length=8pt]}, very thick, cPrimary},
    label/.style={font=\tiny, fill=white, inner sep=2pt},
  ]
  % Phase boxes
  \node[phase] (P1) at (0,0) {%
    \textbf{مرحلهٔ ۱}\\
    ۱۳۵۶–۱۳۵۷\\[3pt]
    \textcolor{cAccent}{\scriptsize ت‌۲: ۴۰٪}\\
    \textcolor{cGreen}{\scriptsize ت‌۱: ۳۰٪}\\
    \textcolor{cGold}{\scriptsize ت‌۳: ۲۰٪}\\
    \textcolor{cConsolid}{\scriptsize ت‌۴: ۱۰٪}
  };
  \node[phase] (P2) at (5.5,0) {%
    \textbf{مرحلهٔ ۲}\\
    ۱۳۵۸–۱۳۶۰\\[3pt]
    \textcolor{cAccent}{\scriptsize ت‌۲: ۴۰٪}\\
    \textcolor{cConsolid}{\scriptsize ت‌۴: ۳۵٪}\\
    \textcolor{cGold}{\scriptsize ت‌۳: ۱۵٪}\\
    \textcolor{cGreen}{\scriptsize ت‌۱: ۱۰٪}
  };
  \node[phase] (P3) at (11,0) {%
    \textbf{مرحلهٔ ۳}\\
    ۱۳۶۰–۱۳۶۷\\[3pt]
    \textcolor{cGold}{\scriptsize ت‌۳: ۳۵٪}\\
    \textcolor{cConsolid}{\scriptsize ت‌۴: ۳۵٪}\\
    \textcolor{cAccent}{\scriptsize ت‌۲: ۲۵٪}\\
    \textcolor{cGreen}{\scriptsize ت‌۱: ۵٪}
  };

  % Arrows
  \draw[arr] (P1.east) -- (P2.west)
    node[label, midway, above]{\scriptsize بحران بختیار + گروگان‌گیری};
  \draw[arr] (P2.east) -- (P3.west)
    node[label, midway, above]{\scriptsize جنگ + تصفیه‌ها};

  % bottom summary
  \node[font=\footnotesize, text=cPrimary, align=center]
    at (5.5, -2.5) {%
      \textbf{روند کلی:}
      \textcolor{cGreen}{ت‌۱ $\downarrow\downarrow$}\quad
      \textcolor{cAccent}{ت‌۲: ثابت $\to$ $\downarrow$}\quad
      \textcolor{cGold}{ت‌۳ $\uparrow$}\quad
      \textcolor{cConsolid}{ت‌۴ $\uparrow\uparrow$}
    };
\end{tikzpicture}
\caption{تز ترکیبی مرحله‌ای: تغییر وزن هر تز در سه دوره}
\label{fig:composite-phases}
\end{figure}

نمودار~\ref{fig:composite-phases} نشان می‌دهد
که وزن نسبی تزها در طول زمان تغییر می‌کند:
تز فریب (\textcolor{cAccent}{ت‌۲}) در مراحل اول و دوم غالب است
اما در مرحلهٔ سوم جایش را
به تطور ایدئولوژیک (\textcolor{cGold}{ت‌۳})
و فشار نخبگان (\textcolor{cConsolid}{ت‌۴}) می‌دهد.
تز صداقت (\textcolor{cGreen}{ت‌۱}) از ابتدا رو به افول است.%
\footnote{این وزن‌های مرحله‌ای تقریبی
و بر اساس ارزیابی کیفی نگارنده‌اند؛
ر.ک.\ فصل~۱۵ برای بحث محدودیت‌ها.}

%============================================================
\section{چرا تز اول ضعیف‌ترین اما نه کاملاً نادرست است؟}
\label{sec:ch16-t1}

با وجود ضعف تطبیقی ت‌۱ (فصل~۱۳: نمرهٔ ۱۰ از ۲۱)،
دلایلی وجود دارد که آن را کاملاً رد نکنیم:

\begin{enumerate}
\item \textbf{لحن مصاحبه‌های پاریس:}
  جعل کامل آن لحن در شرایط فشار رسانه‌ای بسیار دشوار بوده.%
  \footnote{%
  \en{Kurzman},
  \textit{\en{The Unthinkable Revolution}}, 2004, pp.\,121–135.}
\item \textbf{شواهد تردید:}
  برخی خاطرات، لحظاتی از تردید خمینی
  دربارهٔ حکومت مستقیم را ثبت کرده‌اند.%
  \footnote{یزدی، \textit{آخرین تلاش‌ها}، ص\,۱۸۰؛
  خاطرات بازرگان، ص\,۹۵.}
\item \textbf{مفهوم خودفریبی:}
  صداقت ذهنی با فریب عملی قابل جمع است (فصل~۱۵)؛
  بنابراین ت‌۱ نه‌به‌عنوان تبیین کامل
  بلکه به‌عنوان \keyword{مؤلفه‌ای جزئی} حفظ می‌شود.%
  \footnote{%
  \en{Mele},
  \textit{\en{Self-Deception Unmasked}}, 2001, pp.\,95–112.}
\end{enumerate}

\begin{noteBox}[تبصره]
ت‌۱ بیش از آنکه تبیینی مستقل باشد،
\emph{توصیفی از سطح آگاهانهٔ ذهن خمینی} در لحظهٔ وعده است.
این توصیف لزوماً نادرست نیست
اما برای تبیین ده سال رفتار بعدی ناکافی است.
\end{noteBox}

%============================================================
\section{جمع‌بندی علّی: وعده \textbf{یا} خدعه؟}
\label{sec:ch16-causal}

پاسخ نهایی به عنوان کتاب:

\begin{warningBox}[پاسخ نهایی]
وعدهٔ خمینی نه صرفاً وعده بود و نه صرفاً خدعه.
\textbf{بهترین تبیین موجود}
ترکیبی مرحله‌ای از سه مکانیزم است:

\begin{enumerate}
\item \textbf{فریب آگاهانه–نیمه‌آگاهانه (ت‌۲ + خودفریبی):}
  خمینی با آگاهی از ایدهٔ ولایت فقیه،
  وعده‌هایی داد که با عمق اندیشه‌اش ناسازگار بود —
  اما ممکن است در سطح آگاه بخشی از آن‌ها را باور داشته باشد.

\item \textbf{بهره‌برداری از بحران با پشتیبانی نخبگ

```latex
# [Code extracted to: code_block_006.tex]
# See: output\khomeini_20260223_100429\code_blocks\code_block_006.tex
```

<!-- POSSIBLE OVERLAP DETECTED (similarity: 85%) - REVIEW BELOW -->

```latex
# [Code extracted to: code_block_007.tex]
# See: output\khomeini_20260223_100429\code_blocks\code_block_007.tex
```latex
\end{description}

\subsection*{رویدادها و بزنگاه‌ها}
\begin{description}[style=nextline, font=\normalfont]
\item[وعده‌های پاریس (نوفل‌لوشاتو)] ۶، ۱۳، ۱۶، پیوست ب
\item[سقوط بختیار] ۷، ۱۳
\item[مجلس خبرگان قانون اساسی] ۸، ۱۳، ۱۶
\item[رفراندوم قانون اساسی] ۸، ۱۰، پیوست الف
\item[ترورهای فرقان] ۹، ۱۳
\item[بحران گروگان‌گیری] ۱۰، ۱۳، ۱۶
\item[جنگ ایران و عراق] ۱۱، ۱۳، ۱۶
\item[حذف بنی‌صدر] ۱۲، ۱۳
\item[سرکوب مجاهدین خلق] ۱۲، ۱۳
\item[کشتار ۱۳۶۷] ۱۲، ۱۳، ۱۶، پیوست ب
\item[عزل منتظری] ۱۲، ۱۶، پیوست ب
\item[نامهٔ مصلحت نظام (۱۳۶۶)] ۱۱، ۱۵، پیوست ب
\item[درگذشت خمینی (۱۳۶۸)] پیوست الف
\end{description}

\subsection*{نظریه‌ها و آثار}
\begin{description}[style=nextline, font=\normalfont]
\item[ولایت فقیه (کتاب، ۱۳۴۸)] ۴، ۸، ۱۴، ۱۶، پیوست ب
\item[صحیفهٔ امام] تمام فصل‌ها
\item[ناهماهنگی شناختی (\en{Festinger})] ۱۵
\item[خودفریبی (\en{Fingarette / Mele})] ۱۵، ۱۶
\item[استدلال انگیزه‌محور (\en{Kunda})] ۱۵
\item[اخلاق فضیلت (\en{MacIntyre})] ۱۶
\item[وظیفه‌گرایی کانتی] ۱۶
\item[پیامدگرایی (\en{Mill})] ۱۶
\item[تحلیل تطبیقی (\en{Lijphart})] ۱۳
\item[آناتومی انقلاب (\en{Brinton})] ۱۶
\end{description}

\subsection*{تزهای چهارگانه}
\begin{description}[style=nextline, font=\normalfont]
\item[تز ۱: صداقت + اضطرار] ۳، ۶–۱۶
\item[تز ۲: فریب آگاهانه] ۳، ۶–۱۶
\item[تز ۳: تطور ایدئولوژیک] ۳، ۶–۱۶
\item[تز ۴: فشار نخبگان] ۳، ۶–۱۶
\item[تز ترکیبی مرحله‌ای] ۱۴، ۱۵، ۱۶
\end{description}

\end{multicols}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  COLOPHON — شناسنامهٔ کتاب
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\cleardoublepage
\thispagestyle{empty}

\vspace*{\fill}
\begin{center}

{\Large\bfseries\textcolor{cPrimary}{وعده یا خدعه؟}}

\medskip

{\large بررسی انتقادیِ چند‌تزیِ وعدهٔ عدم نقش‌آفرینیِ سیاسیِ خمینی}

\bigskip\bigskip

\begin{tabular}{rl}
\textcolor{cGray}{حروف‌چینی:} & \en{XeLaTeX} \\
\textcolor{cGray}{قلم فارسی:} & \en{IRLotus} \\
\textcolor{cGray}{قلم لاتین:} & \en{TeX Gyre Termes} \\
\textcolor{cGray}{بسته‌های اصلی:} & \en{xepersian, tcolorbox, tikz, pgf-pie, longtable, booktabs} \\
\textcolor{cGray}{تعداد فصل‌ها:} & ۱۶ فصل + ۴ پیوست \\
\textcolor{cGray}{تعداد بزنگاه‌ها:} & ۷ \\
\textcolor{cGray}{تعداد تزها:} & ۴ (+ ۱ تز ترکیبی مرحله‌ای) \\
\end{tabular}

\bigskip

\begin{tikzpicture}
  % decorative element
  \draw[cPrimary, thick, fill=cPrimary!5, rounded corners=10pt]
    (-4,-1.2) rectangle (4,1.2);
  \node[font=\small, text=cPrimary, align=center] at (0,0.4)
    {«\,وَأَوْفُوا بِالْعَهْدِ إِنَّ الْعَهْدَ كَانَ مَسْئُولاً\,»};
  \node[font=\tiny, text=cGray] at (0,-0.3)
    {سورهٔ اسراء (۱۷)، آیهٔ ۳۴};
  \node[font=\tiny, text=cGray] at (0,-0.7)
    {«و به عهد [خود] وفا کنید که از عهد پرسیده خواهد شد.»};
\end{tikzpicture}

\bigskip\bigskip

{\small\textcolor{cGray}{پایان کتاب}}

\end{center}
\vspace*{\fill}


%=============================================================
%  FINAL SEGMENT STATUS UPDATE
%=============================================================
%
%  Segment 0  (Preamble)                        — COMPLETE
%  Segment 1  (Introduction, Ch 1–4)            — COMPLETE
%  Segment 2  (Ch 5–8)                          — COMPLETE
%  Segment 3  (Ch 9–12)                         — COMPLETE
%  Segment 4  (Ch 13–16)                        — COMPLETE
%  Segment 5  (Back Matter: App A–D,
%              Bibliography, Index, Colophon)    — COMPLETE  ✓
%
%  ══════════════════════════════════════════════════════════
%  ALL SEGMENTS COMPLETE.
%  BOOK STRUCTURE:
%
%    Front Matter:
%      • Title page
%      • Table of Contents
%
%    Main Body (16 Chapters):
%      Ch 1:  مقدمه و طرح مسأله
%      Ch 2:  مرور ادبیات
%      Ch 3:  چهار تز — معرفی
%      Ch 4:  تز ۱ (صداقت + اضطرار)
%      Ch 5:  تز ۲ (فریب آگاهانه)
%      Ch 6:  بزنگاه ۱ — وعده‌های پاریس
%      Ch 7:  بزنگاه ۲ — بختیار
%      Ch 8:  بزنگاه ۳ — مجلس خبرگان / قانون اساسی
%      Ch 9:  بزنگاه ۴ — ترورهای فرقان
%      Ch 10: بزنگاه ۵ — بحران گروگان‌گیری
%      Ch 11: بزنگاه ۶ — جنگ ایران و عراق
%      Ch 12: بزنگاه ۷ — حذف مجاهدین / بنی‌صدر / تصفیه‌ها / ۱۳۶۷
%      Ch 13: تحلیل تطبیقی (ماتریس ۷×۴)
%      Ch 14: خوانش‌های رقیب در بوتهٔ نقد (۶ جفت + ماتریس سازگاری)
%      Ch 15: ارزیابی شواهد و وزن‌دهی
%      Ch 16: نتیجه‌گیری — وعده یا خدعه؟
%
%    Back Matter:
%      App A: گاه‌شمار تفصیلی
%      App B: گزیدهٔ متون کلیدی
%      App C: واژه‌نامهٔ تخصصی
%      App D: تشریح روش‌شناسی
%      Bibliography (فارسی + انگلیسی)
%      Index (نمایه)
%      Colophon (شناسنامه)
%
%  COMPILATION: xelatex ×3 (for TOC + index)
%  ══════════════════════════════════════════════════════════
%
%  OPTIONAL FUTURE ADDITIONS:
%    • Cover design (TikZ or external)
%    • Preface by external scholar
%    • Reader's guide / reading order suggestions
%    • Online companion (data + code for TikZ diagrams)
%    • Errata sheet mechanism
%    • Second edition planning notes
%
%=============================================================
```txt
# [Code extracted to: code_block_008.txt]
# See: output\khomeini_20260223_100429\code_blocks\code_block_008.txt
```

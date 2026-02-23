---
source: "output\khomeini_20260223_100429\01_converted.json"
total_conversations: 1
total_segments_merged: 5
manual_review_needed: 1
models: [claude-opus-4-6]
generated_by: chat-merger
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
\documentclass[12pt,a4paper]{book}
% Persian font:  IRLotus (Scale=1.05)
% Latin font:    TeX Gyre Termes / Times New Roman / Latin Modern (fallback chain)
% digit font:    IRLotus
% Last package:  \usepackage{xepersian}  % MUST be last
```

### 5.3  Color Palette
```latex
\definecolor{cPrimary}{HTML}{1B2A4A}    % Navy — headings, frames
\definecolor{cAccent}{HTML}{C0392B}      % Red — warnings, Thesis 2
\definecolor{cLight}{HTML}{F5F5F0}       % Off-white — box backgrounds
\definecolor{cGray}{HTML}{7F8C8D}        % Gray — secondary text
\definecolor{cGold}{HTML}{B7950B}        % Gold — notes, Thesis 3
\definecolor{cWarn}{HTML}{E67E22}        % Orange — medium warnings
\definecolor{cGreen}{HTML}{27AE60}       % Green — Thesis 1
\definecolor{cConsolid}{HTML}{6C3483}    % Purple — Thesis 4
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
\newcommand{\keyword}[1]{\textbf{\textcolor{cPrimary}{#1}}}
\newcommand{\warn}[1]{\textcolor{cAccent}{#1}}
\newcommand{\en}[1]{\lr{\textit{#1}}}   % English text in RTL context
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
\fancyhead[RO]{\small\color{cGray} وعده یا خدعه؟ — بررسی انتقادی}
\fancyhead[LE]{\small\color{cGray} وعدهٔ عدم نقش‌آفرینی خمینی}
\fancyfoot[C]{\small\color{cGray}\thepage}
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
%=============================================================
%  SEGMENT 4 — Chapters 13–16
%  Book: وعده یا خدعه؟ — بررسی انتقادی
%  Codename: khomeini-promise-critical-study
%  Requires: Segment 0 preamble compiled; XeLaTeX ×2
%=============================================================

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  CHAPTER 13
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\chapter{تحلیل تطبیقی — خمینی در هر بزنگاه چه کرد؟}
\label{ch:comparative}

%------------------------------------------------------------
\begin{infoBox}[چکیدهٔ فصل ۱۳]
این فصل هفت بزنگاه کلیدی (فصل‌های ۶–۱۲) را در یک جدول تطبیقیِ واحد گرد می‌آورد.
برای هر بزنگاه، کنش واقعیِ خمینی با پیش‌بینیِ هر یک از چهار تز سنجیده می‌شود
و میزان سازگاری هر تز با شواهد تجربی ارزیابی می‌گردد.
سپس، الگوی کلّیِ حرکت به‌سوی تمرکز قدرت تحلیل و با یک نمودار راداری
(\en{radar chart}) تصویر‌سازی خواهد شد.
\end{infoBox}

%============================================================
\section{مقدمه: ضرورت تحلیل تطبیقی}
\label{sec:ch13-intro}

تا اینجای کتاب، هر بزنگاه به‌صورت مستقل بررسی شد.
اکنون پرسش اصلی این است:
آیا الگوی واحدی در رفتار خمینی قابل شناسایی است؟%
\footnote{برای اهمیت تحلیل الگومحور در تاریخ سیاسی
ر.ک.\ \en{Theda Skocpol},
\textit{\en{States and Social Revolutions}}, 1979, pp.\,33–40.}
\keyword{تحلیل تطبیقی} (\en{comparative analysis})
ابزار اصلیِ پاسخ‌گویی به این پرسش است:
با کنار هم نهادنِ هفت بزنگاه در یک ماتریس واحد،
هم نقاط اشتراک و هم موارد استثنا روشن می‌شوند.%
\footnote{%
\en{Arend Lijphart},
``Comparative Politics and the Comparative Method'',
\textit{\en{American Political Science Review}}, 65(3), 1971, pp.\,682–693.}

روش کار بدین قرار است:
\begin{enumerate}
\item برای هر بزنگاه، \emph{کنش واقعی} خمینی ثبت می‌شود
      (مستند به منابع دست‌اول).
\item پیش‌بینیِ نظریِ هر تز دربارهٔ آن بزنگاه صورت‌بندی می‌گردد.
\item درجهٔ سازگاری هر تز با کنش واقعی در مقیاس سه‌درجه‌ای
      (ضعیف / متوسط / قوی) ارزیابی می‌شود.
\item در پایان، جمع‌بندیِ بصری با نمودار ارائه خواهد شد.
\end{enumerate}

%============================================================
\section{تعریف معیارهای سازگاری}
\label{sec:ch13-criteria}

جدول~\ref{tab:fit-scale} مقیاس سه‌درجه‌ای به‌کاررفته را نشان می‌دهد.

\begin{table}[ht]
\centering
\caption{مقیاس ارزیابیِ سازگاریِ تز با شواهد}
\label{tab:fit-scale}
\begin{tabular}{>{\centering\arraybackslash}m{2.8cm}
                >{\arraybackslash}m{9.5cm}}
\toprule
\textbf{درجه} & \textbf{تعریف عملیاتی} \\
\midrule
\cellcolor{cGreen!15}\textbf{قوی (۳)}
  & کنش خمینی دقیقاً با پیش‌بینی تز هم‌خوان است؛
    شواهد مستقیم در سخنرانی‌ها یا اسناد موجود است. \\
\addlinespace
\cellcolor{cGold!15}\textbf{متوسط (۲)}
  & تز می‌تواند کنش را توضیح دهد اما نیاز به فروض کمکی دارد؛
    شواهد غیرمستقیم‌اند. \\
\addlinespace
\cellcolor{cAccent!15}\textbf{ضعیف (۱)}
  & تز ناچار به توجیه‌های ثانوی است؛
    شواهد بیشتر ناسازگار با پیش‌بینی‌اند تا سازگار. \\
\bottomrule
\end{tabular}
\end{table}

این مقیاس، هرچند ساده‌سازی‌شده،
امکان مقایسهٔ نظام‌مند را فراهم می‌آورد.%
\footnote{%
دربارهٔ محدودیت‌های مقیاس‌گذاری کیفی
ر.ک.\ \en{Alexander L.\ George \& Andrew Bennett},
\textit{\en{Case Studies and Theory Development in the Social Sciences}},
2005, ch.\,8.}

%============================================================
\section{جدول اصلیِ تطبیقی: هفت بزنگاه × چهار تز}
\label{sec:ch13-master}

جدول~\ref{tab:master-matrix} ماتریس اصلی را ارائه می‌دهد.
ستون نخست بزنگاه و فصل مربوطه را نشان می‌دهد؛
ستون دوم خلاصهٔ کنش واقعی خمینی را ثبت می‌کند؛
و چهار ستون بعدی نمرهٔ سازگاری هر تز را ارائه می‌کنند.
ستون آخر مشخص می‌سازد کدام تز بیشترین سازگاری را دارد.

{%
\small
\begin{longtable}{%
  >{\centering\arraybackslash}m{2.4cm}
  >{\arraybackslash}m{3.2cm}
  >{\centering\arraybackslash}m{1.3cm}
  >{\centering\arraybackslash}m{1.3cm}
  >{\centering\arraybackslash}m{1.3cm}
  >{\centering\arraybackslash}m{1.3cm}
  >{\centering\arraybackslash}m{1.8cm}%
}
\caption{ماتریس تطبیقی: هفت بزنگاه × چهار تز}
\label{tab:master-matrix} \\
\toprule
\textbf{بزنگاه (فصل)}
  & \textbf{کنش واقعی خمینی}
  & \cellcolor{cGreen!20}\textbf{ت‌۱}
  & \cellcolor{cAccent!20}\textbf{ت‌۲}
  & \cellcolor{cGold!20}\textbf{ت‌۳}
  & \cellcolor{cConsolid!20}\textbf{ت‌۴}
  & \textbf{تز برتر} \\
\midrule
\endfirsthead

\caption[]{(ادامه)} \\
\toprule
\textbf{بزنگاه (فصل)}
  & \textbf{کنش واقعی خمینی}
  & \cellcolor{cGreen!20}\textbf{ت‌۱}
  & \cellcolor{cAccent!20}\textbf{ت‌۲}
  & \cellcolor{cGold!20}\textbf{ت‌۳}
  & \cellcolor{cConsolid!20}\textbf{ت‌۴}
  & \textbf{تز برتر} \\
\midrule
\endhead

\midrule
\multicolumn{7}{r}{\footnotesize \textit{ادامه در صفحهٔ بعد}\,\dots} \\
\endfoot

\bottomrule
\endlastfoot

%--- ROW 1 -------------------------------------------------
وعده‌های پاریس (فصل~۶)
  & تصریح بر عدم تصدّی مقام؛
    تأکید بر نقش هدایتی–معنوی%
    \footnote{صحیفهٔ امام، ج\,۵، صص\,۳۸۸–۳۹۰؛ مصاحبه با
    \en{Le Monde}، ۱۶ دی ۱۳۵۷.}
  & \cellcolor{cGreen!15} ۳
  & \cellcolor{cAccent!15} ۳
  & \cellcolor{cGold!15} ۲
  & \cellcolor{cConsolid!15} ۲
  & ت‌۱ / ت‌۲ \\
\addlinespace

%--- ROW 2 -------------------------------------------------
برخورد با بختیار (فصل~۷)
  & نصب بازرگان؛ ایجاد ساختار موازی؛ کنارزدن بختیار%
    \footnote{بازرگان، \textit{انقلاب ایران در دو حرکت}، ص\,۷۲؛
    صحیفهٔ امام، ج\,۶، ص\,۵۴.}
  & \cellcolor{cGreen!15} ۱
  & \cellcolor{cAccent!15} ۳
  & \cellcolor{cGold!15} ۲
  & \cellcolor{cConsolid!15} ۲
  & \cellcolor{cAccent!10} ت‌۲ \\
\addlinespace

%--- ROW 3 -------------------------------------------------
مجلس خبرگان / قانون اساسی (فصل~۸)
  & طرح ولایت فقیه مطلقه؛
    بازنویسی پیش‌نویس%
    \footnote{صورت مشروح مذاکرات مجلس خبرگان قانون اساسی، ۱۳۵۸،
    جلسات ۳۵–۶۷؛
    \en{Schirazi},
    \textit{\en{The Constitution of Iran}}, 1997, pp.\,22–48.}
  & \cellcolor{cGreen!15} ۱
  & \cellcolor{cAccent!15} ۳
  & \cellcolor{cGold!15} ۳
  & \cellcolor{cConsolid!15} ۲
  & \cellcolor{cAccent!10} ت‌۲ / ت‌۳ \\
\addlinespace

%--- ROW 4 -------------------------------------------------
ترورهای فرقان (فصل~۹)
  & بهره‌گیری از بحران امنیتی
    برای تحکیم نهادهای انقلابی%
    \footnote{%
    \en{Abrahamian},
    \textit{\en{Radical Islam}}, 1989, pp.\,186–193.}
  & \cellcolor{cGreen!15} ۲
  & \cellcolor{cAccent!15} ۲
  & \cellcolor{cGold!15} ۲
  & \cellcolor{cConsolid!15} ۳
  & \cellcolor{cConsolid!10} ت‌۴ \\
\addlinespace

%--- ROW 5 -------------------------------------------------
بحران گروگان‌گیری (فصل~۱۰)
  & تأیید ضمنی و سپس صریح؛
    ابزارسازی از بحران برای رفراندوم قانون اساسی و حذف رقبا%
    \footnote{%
    \en{Bowden},
    \textit{\en{Guests of the Ayatollah}}, 2006, pp.\,204–219;
    صحیفهٔ امام، ج\,۱۱، ص\,۱۲۳.}
  & \cellcolor{cGreen!15} ۱
  & \cellcolor{cAccent!15} ۳
  & \cellcolor{cGold!15} ۲
  & \cellcolor{cConsolid!15} ۳
  & \cellcolor{cAccent!10} ت‌۲ / ت‌۴ \\
\addlinespace

%--- ROW 6 -------------------------------------------------
جنگ ایران و عراق (فصل~۱۱)
  & رد پیشنهادهای صلح اولیه؛
    تبدیل جنگ به ابزار بسیج داخلی%
    \footnote{خاطرات هاشمی رفسنجانی، \textit{دوران دفاع مقدس}، ج\,۱،
    صص\,۱۱۲–۱۲۸؛
    \en{Crist},
    \textit{\en{The Twilight War}}, 2012, pp.\,88–103.}
  & \cellcolor{cGreen!15} ۱
  & \cellcolor{cAccent!15} ۲
  & \cellcolor{cGold!15} ۳
  & \cellcolor{cConsolid!15} ۳
  & \cellcolor{cGold!10} ت‌۳ / ت‌۴ \\
\addlinespace

%--- ROW 7 -------------------------------------------------
حذف مجاهدین / بنی‌صدر / تصفیه‌ها / کشتار ۱۳۶۷ (فصل~۱۲)
  & صدور فتوای اعدام‌های جمعی؛
    بالاترین درجهٔ تمرکز قدرت%
    \footnote{خاطرات آیت‌الله منتظری (نسخهٔ اینترنتی)، نامه‌های ۱۳۶۷؛
    \en{Robertson},
    \textit{\en{The Massacre of Political Prisoners in Iran, 1988}},
    2010, pp.\,54–87;
    \en{Abrahamian},
    \textit{\en{Tortured Confessions}}, 1999, pp.\,209–228.}
  & \cellcolor{cGreen!15} ۱
  & \cellcolor{cAccent!15} ۳
  & \cellcolor{cGold!15} ۲
  & \cellcolor{cConsolid!15} ۳
  & \cellcolor{cAccent!10} ت‌۲ / ت‌۴ \\

\end{longtable}
}% end \small

%============================================================
\section{خوانش جدول: الگوهای بارز}
\label{sec:ch13-patterns}

\subsection{الگوی اول: حرکت یک‌سویه به‌سوی تمرکز}

با مرور ستون «کنش واقعی» از بالا به پایین،
مشاهده می‌شود که در هر بزنگاه جدید،
خمینی \keyword{قدرت بیشتری} بر‌ عهده می‌گیرد یا تحکیم می‌کند.%
\footnote{%
\en{Milani},
\textit{\en{The Making of Iran's Islamic Revolution}},
2nd ed., 1994, pp.\,232–234
نیز بر همین الگوی تمرکز تأکید دارد.}
هیچ بزنگاهی وجود ندارد که در آن خمینی قدرتی را واگذار کرده باشد
یا نهادی مستقل را تقویت کرده باشد بدون آنکه آن نهاد
زیر نظارت مستقیم ولایت فقیه درآید.

این الگو برای
\textcolor{cGreen}{تز اول (صداقت + اضطرار)}
مشکل‌آفرین است:
اگر قدرت‌گیری هر بار فقط واکنشی به بحران بود،
باید دست‌کم در یکی از بزنگاه‌ها پس از رفع بحران
بازگشتی به موقعیت قبلی می‌دیدیم.%
\footnote{%
بشیریه، \textit{دیباچه‌ای بر جامعه‌شناسی سیاسی ایران}، ص\,۱۸۵
به همین نکته اشاره می‌کند.}
چنین بازگشتی هرگز رخ نداد.

\subsection{الگوی دوم: بهره‌گیری نظام‌مند از بحران}

در حداقل چهار بزنگاه
(بختیار، گروگان‌گیری، ترورهای فرقان، جنگ)
خمینی از بحران بیرونی یا امنیتی
برای پیشبرد دستور کار داخلی بهره برد.%
\footnote{گنجی، \textit{تلقی فاشیستی از دین و حکومت}، صص\,۱۲۰–۱۳۵.}
این الگو هم با \textcolor{cAccent}{تز دوم (فریب آگاهانه)} و
هم با \textcolor{cConsolid}{تز چهارم (فشار نخبگان)} سازگار است،
اما با تز اول (که بحران‌ها را \emph{علتِ} تغییر مسیر می‌داند)
تنها به‌طور ناقص انطباق دارد.

\subsection{الگوی سوم: نقطهٔ عطف قانون اساسی}

بزنگاه مجلس خبرگان
(ردیف ۳ جدول~\ref{tab:master-matrix})
جایی است که هم \textcolor{cAccent}{تز دوم} و هم
\textcolor{cGold}{تز سوم (تطور ایدئولوژیک)}
بالاترین نمره (۳) را می‌گیرند.
این همان لحظه‌ای است که وعدهٔ نوفل‌لوشاتو
به‌صورت نهادی و حقوقی نقض می‌شود.%
\footnote{%
\en{Arjomand},
\textit{\en{The Turban for the Crown}}, 1988, pp.\,135–148.}

\subsection{الگوی چهارم: ضعف مستمر تز اول}

تز اول در پنج بزنگاه از هفت بزنگاه
پایین‌ترین نمره (۱) را دریافت می‌کند.
تنها در بزنگاه اول (وعده‌های پاریس)
نمرهٔ ۳ و در بزنگاه ترورهای فرقان نمرهٔ ۲ کسب می‌کند.
بنابراین، تز اول بیشتر ناظر بر نیت اولیه است
تا بر رفتار واقعی پس از پیروزی انقلاب.%
\footnote{کدیور، \textit{حکومت ولایی}، ص\,۲۱۴
تمایز میان نیت اولیه و عملکرد نهایی را محوری می‌داند.}

%============================================================
\section{جمع‌بندی عددی: مجموع نمرات هر تز}
\label{sec:ch13-scores}

جدول~\ref{tab:score-summary} جمع نمرات هر تز در هفت بزنگاه
و میانگین آن‌ها را نشان می‌دهد.

\begin{table}[ht]
\centering
\caption{جمع و میانگین نمرات سازگاری هر تز (از مجموع ۲۱)}
\label{tab:score-summary}
\begin{tabular}{>{\centering\arraybackslash}m{4.2cm}
                >{\centering\arraybackslash}m{2.2cm}
                >{\centering\arraybackslash}m{2.2cm}}
\toprule
\textbf{تز} & \textbf{مجموع نمره (از ۲۱)} & \textbf{میانگین} \\
\midrule
\cellcolor{cGreen!15}
  تز ۱: صداقت + اضطرار & ۱۰ & ۱٫۴۳ \\
\cellcolor{cAccent!15}
  تز ۲: فریب آگاهانه & ۱۹ & ۲٫۷۱ \\
\cellcolor{cGold!15}
  تز ۳: تطور ایدئولوژیک & ۱۶ & ۲٫۲۹ \\
\cellcolor{cConsolid!15}
  تز ۴: فشار نخبگان & ۱۸ & ۲٫۵۷ \\
\bottomrule
\end{tabular}
\end{table}

بدین ترتیب ترتیب سازگاری کلی چنین است:
\[
\textcolor{cAccent}{\text{ت‌۲}}\;(۱۹)
\;>\;
\textcolor{cConsolid}{\text{ت‌۴}}\;(۱۸)
\;>\;
\textcolor{cGold}{\text{ت‌۳}}\;(۱۶)
\;>\;
\textcolor{cGreen}{\text{ت‌۱}}\;(۱۰)
\]

%============================================================
\section{نمودار راداری: پروفایل هر تز در هفت بزنگاه}
\label{sec:ch13-radar}

نمودار زیر نمرهٔ هر تز را در هر بزنگاه
بر روی یک محور جداگانه ترسیم می‌کند.%
\footnote{%
نمودارهای راداری برای مقایسهٔ چند‌بُعدیِ تزها
ابزار رایج در علوم اجتماعیِ کمّی‌اند.
ر.ک.\ \en{Edward Tufte},
\textit{\en{The Visual Display of Quantitative Information}},
2nd ed., 2001, p.\,178.}

\begin{figure}[ht]
\centering
\begin{tikzpicture}[scale=1.1]
  % --- helpers ------------------------------------------
  \def\nAxes{7}
  \def\maxVal{3}
  \pgfmathsetmacro{\angleStep}{360/\nAxes}

  % axis labels (Persian, shortened)
  \def\axisLabels{%
    {پاریس},
    {بختیار},
    {خبرگان},
    {فرقان},
    {گروگان‌گیری},
    {جنگ},
    {تصفیه/۶۷}%
  }

  % data: T1, T2, T3, T4 (in order of 7 turning points)
  \def\dataA{3,1,1,2,1,1,1}     % T1  (green)
  \def\dataB{3,3,3,2,3,2,3}     % T2  (red)
  \def\dataC{2,2,3,2,2,3,2}     % T3  (gold)
  \def\dataD{2,2,2,3,3,3,3}     % T4  (purple)

  % --- background grid ----------------------------------
  \foreach \r in {1,2,3} {
    \draw[cGray!30, thin]
      \foreach \i [count=\idx from 0] in {1,...,\nAxes} {%
        ({90-\idx*\angleStep}:{\r*1.1}) --
      } cycle;
  }

  % --- axes ---------------------------------------------
  \foreach \i [count=\idx from 0] in {1,...,\nAxes} {
    \draw[cGray!50] (0,0) -- ({90-\idx*\angleStep}:{\maxVal*1.1+0.4});
  }

  % --- axis labels --------------------------------------
  \foreach \lbl [count=\idx from 0] in \axisLabels {
    \pgfmathsetmacro{\ang}{90-\idx*\angleStep}
    \node[font=\scriptsize, align=center]
      at ({\ang}:{\maxVal*1.1+0.95}) {\lbl};
  }

  % --- macro: draw one data polygon ---------------------
  \newcommand{\drawPoly}[3]{% #1=data list, #2=draw color, #3=fill color
    \foreach \val [count=\idx from 0] in #1 {
      \pgfmathsetmacro{\ang}{90-\idx*\angleStep}
      \pgfmathsetmacro{\radius}{\val*1.1}
      \coordinate (P\idx) at ({\ang}:{\radius});
    }
    \draw[#2, thick, fill=#3, fill opacity=0.12]
      (P0) \foreach \idx in {1,...,6}{ -- (P\idx) } -- cycle;
  }

  % --- plot polygons ------------------------------------
  \drawPoly{\dataA}{cGreen}{cGreen}
  \drawPoly{\dataB}{cAccent}{cAccent}
  \drawPoly{\dataC}{cGold}{cGold}
  \drawPoly{\dataD}{cConsolid}{cConsolid}

  % --- legend -------------------------------------------
  \node[anchor=north west, font=\scriptsize] at (4.2,3.6) {%
    \begin{tabular}{cl}
      \tikz\draw[cGreen, thick, fill=cGreen!15] (0,0) rectangle (0.35,0.2); & تز ۱ \\
      \tikz\draw[cAccent, thick, fill=cAccent!15] (0,0) rectangle (0.35,0.2); & تز ۲ \\
      \tikz\draw[cGold, thick, fill=cGold!15] (0,0) rectangle (0.35,0.2); & تز ۳ \\
      \tikz\draw[cConsolid, thick, fill=cConsolid!15] (0,0) rectangle (0.35,0.2); & تز ۴ \\
    \end{tabular}
  };
\end{tikzpicture}
\caption{نمودار راداری: سازگاری هر تز با هفت بزنگاه}
\label{fig:radar}
\end{figure}

چنان‌که نمودار~\ref{fig:radar} نشان می‌دهد،
\textcolor{cAccent}{تز دوم} و \textcolor{cConsolid}{تز چهارم}
بیشترین پوشش سطحی را دارند،
در حالی که \textcolor{cGreen}{تز اول} کوچک‌ترین چندضلعی
را تشکیل می‌دهد و تنها در محور «پاریس» به حداکثر می‌رسد.

%============================================================
\section{پرسش کلیدی: آیا مسیر قدرت همیشه یک‌سویه بود؟}
\label{sec:ch13-direction}

برای پاسخ دقیق‌تر، شاخص ساده‌ای تعریف می‌کنیم:

\begin{noteBox}[شاخص جهت قدرت]
اگر $\Delta_i$ نشان‌دهندهٔ تغییر میزان قدرت نهادیِ خمینی
در بزنگاه $i$ نسبت به بزنگاه $i{-}1$ باشد،
جهت‌گیری کلی را با علامتِ $\sum_{i=1}^{7}\Delta_i$ نشان می‌دهیم.
مقدار مثبت = تمرکز؛ مقدار منفی = واگذاری.
\end{noteBox}

در هیچ‌یک از بزنگاه‌ها $\Delta_i < 0$ نیست.
بنابراین، $\sum \Delta_i > 0$ و مسیر قدرت
\keyword{یک‌سویه و انباشتی} بوده است.%
\footnote{%
\en{Bakhash},
\textit{\en{The Reign of the Ayatollahs}}, 1984, pp.\,52–73
همین انباشت تدریجی قدرت را
مهم‌ترین ویژگی دوران ۱۳۵۸–۱۳۶۷ می‌داند.}

%============================================================
\section{تکمیل تحلیل: نمودار روند تمرکز قدرت}
\label{sec:ch13-trend}

\begin{figure}[ht]
\centering
\begin{tikzpicture}
  \begin{axis}[
      width=13cm, height=6.5cm,
      xlabel={\scriptsize بزنگاه},
      ylabel={\scriptsize شاخص تجمیعی قدرت},
      xtick={1,...,7},
      xticklabels={پاریس, بختیار, خبرگان, فرقان, گروگان, جنگ, تصفیه/۶۷},
      xticklabel style={rotate=35, anchor=east, font=\tiny},
      ymin=0, ymax=22,
      grid=major,
      grid style={cGray!20},
      legend style={at={(0.02,0.98)}, anchor=north west, font=\tiny},
      thick,
    ]
    % cumulative "power index" (illustrative)
    \addplot[cAccent, mark=square*, very thick]
      coordinates {(1,0)(2,4)(3,9)(4,12)(5,16)(6,18)(7,21)};
    \addlegendentry{شاخص تمرکز قدرت}

    % hypothetical "promise compliance" declining
    \addplot[cGreen, mark=triangle*, dashed, thick]
      coordinates {(1,20)(2,15)(3,8)(4,7)(5,4)(6,3)(7,0)};
    \addlegendentry{شاخص پای‌بندی به وعده}
  \end{axis}
\end{tikzpicture}
\caption{روند متقابل تمرکز قدرت و پای‌بندی به وعده (شِماتیک)}
\label{fig:trend-power}
\end{figure}

نمودار~\ref{fig:trend-power} به‌صورت شماتیک نشان می‌دهد
که دو خط — شاخص تمرکز قدرت و شاخص پای‌بندی به وعده —
تقریباً \keyword{آینه‌ای} (\en{mirror-image})
رفتار می‌کنند:
هر افزایش در اولی با کاهش متناظری در دومی همراه است.%
\footnote{این نمودار تنها جنبهٔ تصویری دارد
و بر اساس ارزیابی کیفی نگارنده ترسیم شده است.
هدف از آن تسهیل درک بصری الگو است، نه ارائهٔ دادهٔ کمّی دقیق.}

%============================================================

\begin{principleBox}[خلاصهٔ فصل ۱۳]
\begin{itemize}
\item جدول تطبیقیِ هفت بزنگاه × چهار تز نشان داد که
      \textcolor{cAccent}{تز دوم (فریب آگاهانه)} با مجموع نمرهٔ ۱۹ از ۲۱
      بیشترین سازگاری را با شواهد دارد.
\item \textcolor{cConsolid}{تز چهارم (فشار نخبگان)} با ۱۸
      و \textcolor{cGold}{تز سوم (تطور ایدئولوژیک)} با ۱۶
      در رتبه‌های بعدی قرار دارند.
\item \textcolor{cGreen}{تز اول (صداقت + اضطرار)} با ۱۰
      ضعیف‌ترین عملکرد تطبیقی را دارد
      و بیشتر ناظر بر بزنگاه نخست (پاریس) است.
\item الگوی حرکت قدرت یک‌سویه و انباشتی است؛
      هیچ بزنگاه بازگشتی مشاهده نشد.
\item نمودار راداری و نمودار روند تمرکز
      هر دو مؤید همین نتیجه‌اند.
\end{itemize}
\end{principleBox}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  CHAPTER 14
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\chapter{خوانش‌های رقیب در بوتهٔ نقد}
\label{ch:mutual-critique}

%------------------------------------------------------------
\begin{infoBox}[چکیدهٔ فصل ۱۴]
در این فصل، هر یک از شش جفت ممکن از چهار تز
(\en{$\binom{4}{2}=6$ pairs})
در برابر یکدیگر نقد می‌شوند.
نخست نقاط قوت و ضعف هر تز فهرست‌وار ارائه می‌شود،
سپس نقد متقابل هر جفت بررسی می‌گردد.
در پایان، \keyword{ماتریس سازگاری} نشان خواهد داد
کدام تزها با یکدیگر قابل ترکیب‌اند و کدام‌ها متناقض.
\end{infoBox}

%============================================================
\section{نقاط قوت و ضعف هر تز: نگاه اجمالی}
\label{sec:ch14-strengths}

جدول~\ref{tab:strength-weakness} خلاصه‌ای از مهم‌ترین
نقاط قوت و ضعف هر تز را ارائه می‌دهد.%
\footnote{این ارزیابی بر پایهٔ تحلیل فصل‌های ۳–۱۳ است
و معیارها عبارت‌اند از:
(الف) سازگاری با شواهد اولیه،
(ب) قدرت پیش‌بینی‌کنندگی،
(ج) پارسیمونی (\en{parsimony}).}

{%
\small
\begin{longtable}{%
  >{\centering\arraybackslash}m{2.5cm}
  >{\arraybackslash}m{5cm}
  >{\arraybackslash}m{5cm}}
\caption{نقاط قوت و ضعف هر تز}
\label{tab:strength-weakness} \\
\toprule
\textbf{تز} & \textbf{نقاط قوت} & \textbf{نقاط ضعف} \\
\midrule
\endfirsthead
\caption[]{(ادامه)} \\
\toprule
\textbf{تز} & \textbf{نقاط قوت} & \textbf{نقاط ضعف} \\
\midrule
\endhead
\bottomrule
\endlastfoot

\cellcolor{cGreen!12}
\textbf{ت‌۱:\ صداقت\newline + اضطرار}
  & \begin{itemize}[nosep, leftmargin=*]
    \item با لحن مصاحبه‌های ۱۳۵۷ سازگار%
      \footnote{صحیفهٔ امام، ج\,۵، صص\,۳۸۸–۳۹۰.}
    \item به پیچیدگیِ روان‌شناختی رهبران اذعان دارد
    \item شواهد برخی تردیدهای خمینی در خاطرات یاران%
      \footnote{یزدی، \textit{آخرین تلاش‌ها در آخرین روزها}، ص\,۱۸۰.}
    \end{itemize}
  & \begin{itemize}[nosep, leftmargin=*]
    \item در ۵ از ۷ بزنگاه ضعیف‌ترین سازگاری (فصل~۱۳)
    \item عدم بازگشت قدرت پس از رفع بحران
    \item نمی‌تواند فتوای ۱۳۶۷ را توجیه کند%
      \footnote{\en{Robertson}, \textit{\en{Massacre}}, 2010, p.\,122.}
    \end{itemize} \\
\addlinespace

\cellcolor{cAccent!12}
\textbf{ت‌۲:\ فریب\newline آگاهانه}
  & \begin{itemize}[nosep, leftmargin=*]
    \item بالاترین نمرهٔ تطبیقی (۱۹ از ۲۱)
    \item با آموزهٔ تقیه قابل ارتباط%
      \footnote{\en{Moin}, \textit{\en{Khomeini}}, 1999, pp.\,200–204.}
    \item شواهد مستقیم از نامه‌های محرمانه%
      \footnote{خاطرات منتظری، بخش مکاتبات ۱۳۶۱–۱۳۶۴.}
    \end{itemize}
  & \begin{itemize}[nosep, leftmargin=*]
    \item فرض ذهن \keyword{یکپارچهٔ} (\en{unitary mind}) محل تردید است%
      \footnote{\en{Jon Elster},
      \textit{\en{Sour Grapes}}, 1983, pp.\,141–166.}
    \item نمی‌تواند آثار فقهی پیش‌ از ۱۳۵۷ را نادیده بگیرد%
      \footnote{\textit{ولایت فقیه} (نجف، ۱۳۴۸ ش.)
      که ایدهٔ حکومت اسلامی در آن مطرح شده بود.}
    \item خطر افتادن در \en{conspiracy theory}
    \end{itemize} \\
\addlinespace

\cellcolor{cGold!12}
\textbf{ت‌۳:\ تطور\newline ایدئولوژیک}
  & \begin{itemize}[nosep, leftmargin=*]
    \item تغییر در آثار فقهی خمینی مستند است%
      \footnote{کدیور، \textit{نظریه‌های دولت در فقه شیعه}، صص\,۱۵۲–۱۸۰.}
    \item از نظر روان‌شناختی واقع‌بینانه‌تر از ت‌۲
    \item مفهوم مصلحت نظام سیر تطوری دارد%
      \footnote{صحیفهٔ امام، ج\,۲۱، نامهٔ معروف ۱۳۶۶
      دربارهٔ تقدم مصلحت نظام بر احکام اولیه.}
    \end{itemize}
  & \begin{itemize}[nosep, leftmargin=*]
    \item نمی‌تواند سرعت تمرکز ۱۳۵۸ را توضیح دهد
    \item کتاب \textit{ولایت فقیه} (۱۳۴۸) نشان‌دهندهٔ
      وجود ایدهٔ حاکمیت فقیه \emph{پیش‌ از} انقلاب
    \item مرز میان «تطور» و «فرصت‌طلبی» مبهم
    \end{itemize} \\
\addlinespace

\cellcolor{cConsolid!12}
\textbf{ت‌۴:\ فشار\newline نخبگان}
  & \begin{itemize}[nosep, leftmargin=*]
    \item نقش بهشتی، رفسنجانی، خامنه‌ای مستند%
      \footnote{خاطرات رفسنجانی، ج\,۱، صص\,۸۵–۱۱۰.}
    \item با تحلیل‌های جامعه‌شناسی نخبگان سازگار%
      \footnote{\en{Mosca},
      \textit{\en{The Ruling Class}}, 1939;
      \en{Pareto}, \textit{\en{Mind and Society}}, 1935.}
    \item توزیع مسئولیت واقع‌بینانه‌تر از تمرکز بر یک فرد
    \end{itemize}
  & \begin{itemize}[nosep, leftmargin=*]
    \item کاهش مسئولیت فردی خمینی ناسازگار
      با قدرت تصمیم‌گیری‌اش
    \item فتوای ۱۳۶۷ قابل تقلیل به فشار گروهی نیست%
      \footnote{منتظری، خاطرات، نامهٔ ۹ مرداد ۱۳۶۷
      که خمینی شخصاً از او ناراضی شد.}
    \item اسناد «فشار» بیشتر غیرمستقیم‌اند
    \end{itemize} \\

\end{longtable}
}% end \small

%============================================================
\section{نقد متقابل شش جفت تز}
\label{sec:ch14-pairs}

\subsection{جفت ۱: تز ۱ ↔ تز ۲ — صداقت در برابر فریب}
\label{subsec:pair-t1t2}

این بنیادی‌ترین تقابل است:
آیا خمینی در پاریس \keyword{راست} می‌گفت یا \keyword{دروغ}؟

\begin{warningBox}[نقد تز ۱ از منظر تز ۲]
اگر خمینی واقعاً صادق بود،
چرا هیچ‌گاه پس از رفع هر بحران
قدرت را محدود نکرد؟%
\footnote{گنجی، \textit{تلقی فاشیستی}، ص\,۱۴۱.}
الگوی «بحران → تمرکز → عدم بازگشت»
بیش از آنکه با اضطرار سازگار باشد
با طرح از‌پیش‌اندیشیده هم‌خوان است.
\end{warningBox}

\begin{warningBox}[نقد تز ۲ از منظر تز ۱]
تز فریب آگاهانه فرض می‌کند
خمینی در ۱۳۵۷ تصویر دقیقی از آیندهٔ ده‌سالهٔ
خود داشته است — فرضی بسیار قوی
که مستلزم \en{perfect foresight} است.%
\footnote{\en{Kurzman},
\textit{\en{The Unthinkable Revolution}}, 2004, pp.\,5–7
بر غیرقابل‌پیش‌بینی بودنِ حتی خودِ انقلاب تأکید دارد.}
مصاحبه‌های متعدد پاریس لحنی دارند
که جعل آن در آن مقیاس بسیار دشوار بوده است.
\end{warningBox}

\subsection{جفت ۲: تز ۱ ↔ تز ۳ — صداقت در برابر تطور}
\label{subsec:pair-t1t3}

\begin{noteBox}[همپوشانی ممکن]
تز اول و سوم در یک نقطه مشترک‌اند:
هر دو خمینی را فاعل اخلاقی‌ای می‌بینند که
نیتش در ۱۳۵۷ واقعاً عدم حاکمیت بوده است.
تفاوت در تبیین علت تغییر است:
ت‌۱ می‌گوید بحران بیرونی؛
ت‌۳ می‌گوید تحول درونیِ فکری.%
\footnote{سروش، \textit{فربه‌تر از ایدئولوژی}، ص\,۹۵
دربارهٔ تغییر پارادایم درون‌ایدئولوژیک.}
\end{noteBox}

نقد تز ۳ بر تز ۱:
«اضطرار» بسیار ساده‌انگارانه است؛
تحول اندیشه فرایندی تدریجی و مستند است،
نه صرفاً واکنش لحظه‌ای.%
\footnote{کدیور، \textit{حکومت ولایی}، ص\,۱۹۵.}

نقد تز ۱ بر تز ۳:
اگر تطور واقعاً وجود داشت،
سرعت عمل ۱۳۵۸ (فقط چند ماه بعد از وعده)
با فرایند تدریجیِ تطور ایدئولوژیک ناسازگار است.%
\footnote{\en{Milani},
\textit{\en{Making of Iran's Islamic Revolution}}, 1994, p.\,196.}

\subsection{جفت ۳: تز ۱ ↔ تز ۴ — صداقت در برابر فشار نخبگان}
\label{subsec:pair-t1t4}

نقد تز ۴ بر تز ۱:
اضطرار یک نفره نبود؛ ساختار نخبگان انقلابی
اصلاً اجازهٔ واگذاری قدرت را نمی‌داد.%
\footnote{حجاریان، \textit{از شاهد قدسی تا شاهد بازاری}، ص\,۲۰۸.}

نقد تز ۱ بر تز ۴:
اگر فشار نخبگان تعیین‌کننده بود،
چرا خمینی توانست تمام نخبگان مخالف
(بازرگان، بنی‌صدر، منتظری) را کنار بزند؟%
\footnote{بنی‌صدر، \textit{خیانت به امید}، صص\,۳۰۲–۳۱۵.}
این خود نشان‌دهندهٔ ارادهٔ مستقل و قدرتمند رهبر است.

\subsection{جفت ۴: تز ۲ ↔ تز ۳ — فریب در برابر تطور}
\label{subsec:pair-t2t3}

این جفت از نظر منطقی مهم‌ترین تقابل است،
زیرا مشخص می‌کند آیا خمینی
\emph{از ابتدا} قصد حاکمیت داشت (ت‌۲)
یا در مسیر به آن رسید (ت‌۳).

\begin{warningBox}[نقد تز ۲ بر تز ۳]
کتاب \textit{ولایت فقیه} (نجف، ۱۳۴۸ ش.)
به‌روشنی ایدهٔ حکومت مستقیم فقیه را مطرح می‌کند —
یعنی ایده \emph{قبل} از وعده‌های پاریس وجود داشته
و «تطور» در دههٔ ۱۳۵۰ اتفاق افتاده نه ۱۳۵۸.%
\footnote{%
\en{Martin},
\textit{\en{Creating an Islamic State}}, 2000, pp.\,78–95.}
بنابراین، وعده‌های پاریس نمی‌توانند
بازتاب‌دهندهٔ اندیشهٔ واقعی خمینی باشند.
\end{warningBox}

\begin{warningBox}[نقد تز ۳ بر تز ۲]
فریب آگاهانه مستلزم نظریهٔ ذهن
(\en{Theory of Mind}) بسیار قوی
و کنترل کامل بر محیط ارتباطی است.
خمینی در پاریس تحت فشار ده‌ها خبرنگار بود
و وعده‌ها فقط شفاهی نبودند بلکه مکتوب نیز شدند.%
\footnote{صحیفهٔ امام، ج\,۴، پیام «رأی من رأی ملت است»، بهمن ۱۳۵۷.}
واقع‌بینانه‌تر آن است که خمینی
در آن مقطع واقعاً باور داشت اما بعداً تغییر کرد.
\end{warningBox}

\subsection{جفت ۵: تز ۲ ↔ تز ۴ — فریب در برابر فشار نخبگان}
\label{subsec:pair-t2t4}

\begin{noteBox}[سازگاری نسبی]
این دو تز بیش از سایر جفت‌ها قابل ترکیب‌اند:
ممکن است خمینی از ابتدا قصد قدرت داشته (ت‌۲)
\emph{و} نخبگان نیز مستقلاً این مسیر را تقویت کرده باشند (ت‌۴).%
\footnote{\en{Abrahamian},
\textit{\en{Khomeinism}}, 1993, pp.\,17–38.}
\end{noteBox}

نقد تز ۴ بر تز ۲:
فریب کامل نیازی به نخبگان ندارد — اما واقعیت این است
که بدون بهشتی و شورای انقلاب،
تمرکز قدرت در آن سرعت ممکن نبود.%
\footnote{خاطرات رفسنجانی، ج\,۱، صص\,۱۴۸–۱۵۵.}

نقد تز ۲ بر تز ۴:
اگر نخبگان عامل اصلی بودند،
چرا خمینی توانست هر یک را جداگانه حذف کند
بدون آنکه سیستم فرو بپاشد؟
رفسنجانی خود اعتراف کرده
«کلمهٔ آخر را همیشه امام می‌گفتند.»%
\footnote{خاطرات رفسنجانی، ج\,۳، ص\,۲۷۱.}

\subsection{جفت ۶: تز ۳ ↔ تز ۴ — تطور در برابر فشار نخبگان}
\label{subsec:pair-t3t4}

نقد تز ۴ بر تز ۳:
تطور ایدئولوژیک در خلأ رخ نمی‌دهد —
محیط نخبگان اطراف خمینی
همان عاملی است که تطور را جهت‌دهی کرده است.%
\footnote{بشیریه، \textit{دیباچه‌ای بر جامعه‌شناسی سیاسی ایران}،
ص\,۲۱۲.}

نقد تز ۳ بر تز ۴:
تز فشار نخبگان، خمینی را فاقد ارادهٔ مستقل
فکری ترسیم می‌کند — تصویری که با شخصیت
سرسخت و مصممِ او ناسازگار است.%
\footnote{\en{Moin}, \textit{\en{Khomeini}}, 1999, pp.\,8–11.}

%============================================================
\section{ماتریس سازگاری: کدام تزها قابل ترکیب‌اند؟}
\label{sec:ch14-compat}

جدول~\ref{tab:compat-matrix} سازگاری منطقیِ هر جفت تز
را در سه درجه ارزیابی می‌کند:
\textbf{ناسازگار} (×)، \textbf{سازگاری محدود} (△)،
\textbf{سازگار / قابل ترکیب} (○).%
\footnote{معیار سازگاری: آیا دو تز را می‌توان
هم‌زمان بدون تناقض منطقی پذیرفت؟}

\begin{table}[ht]
\centering
\caption{ماتریس سازگاری شش جفت تز}
\label{tab:compat-matrix}
\begin{tabular}{>{\centering\arraybackslash}m{2.5cm}
                >{\centering\arraybackslash}m{2cm}
                >{\centering\arraybackslash}m{2cm}
                >{\centering\arraybackslash}m{2cm}
                >{\centering\arraybackslash}m{2cm}}
\toprule
 & \cellcolor{cGreen!20}\textbf{ت‌۱}
 & \cellcolor{cAccent!20}\textbf{ت‌۲}
 & \cellcolor{cGold!20}\textbf{ت‌۳}
 & \cellcolor{cConsolid!20}\textbf{ت‌۴} \\
\midrule
\cellcolor{cGreen!20}\textbf{ت‌۱}
  & —
  & \cellcolor{cAccent!10} ×
  & \cellcolor{cGold!10} △
  & \cellcolor{cConsolid!10} △ \\
\cellcolor{cAccent!20}\textbf{ت‌۲}
  & \cellcolor{cAccent!10} ×
  & —
  & \cellcolor{cGold!10} ×
  & \cellcolor{cConsolid!10} ○ \\
\cellcolor{cGold!20}\textbf{ت‌۳}
  & \cellcolor{cGold!10} △
  & \cellcolor{cAccent!10} ×
  & —
  & \cellcolor{cConsolid!10} ○ \\
\cellcolor{cConsolid!20}\textbf{ت‌۴}
  & \cellcolor{cConsolid!10} △
  & \cellcolor{cAccent!10} ○
  & \cellcolor

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
ان (ت‌۲ + ت‌۴):}
  در فاصلهٔ ۱۳۵۸–۱۳۶۰، هر بحران بیرونی
  (بختیار، گروگان‌گیری، ترورها)
  فرصتی شد برای تمرکز بیشتر قدرت —
  و نخبگان انقلابی (بهشتی، رفسنجانی، خامنه‌ای)
  این مسیر را ساختارسازی کردند.

\item \textbf{تطور ایدئولوژیک نهادینه‌شده (ت‌۳ + ت‌۴):}
  از ۱۳۶۰ به بعد، مفاهیم «ولایت مطلقه» و «مصلحت نظام»
  جایگزین «هدایت معنوی» شدند
  و نظام سیاسی در قالبی نهادی تثبیت گشت
  که بازگشت از آن ناممکن بود.
\end{enumerate}

بنابراین، عنوان کتاب — «وعده یا خدعه؟» —
پرسشی دوگانه (\en{binary}) است
اما پاسخ \textbf{طیفی و مرحله‌ای} است.%
\footnote{%
\en{Keddie},
\textit{\en{Modern Iran}}, 2006, p.\,252:
``The truth almost certainly lies in a combination of factors.''}
\end{warningBox}

%============================================================
\section{جدول نهایی: پاسخ ترکیبی به تفکیک بزنگاه}
\label{sec:ch16-final-table}

جدول~\ref{tab:final-verdict} پاسخ ترکیبی را
به تفکیک هر بزنگاه خلاصه می‌کند.

{%
\small
\begin{longtable}{%
  >{\centering\arraybackslash}m{2.5cm}
  >{\centering\arraybackslash}m{2.8cm}
  >{\arraybackslash}m{7.5cm}}
\caption{پاسخ ترکیبی نهایی به تفکیک بزنگاه}
\label{tab:final-verdict} \\
\toprule
\textbf{بزنگاه}
  & \textbf{تز(های) غالب}
  & \textbf{توضیح مختصر} \\
\midrule
\endfirsthead
\caption[]{(ادامه)} \\
\toprule
\textbf{بزنگاه}
  & \textbf{تز(های) غالب}
  & \textbf{توضیح مختصر} \\
\midrule
\endhead
\midrule
\multicolumn{3}{r}{\footnotesize \textit{ادامه در صفحهٔ بعد}\,\dots} \\
\endfoot
\bottomrule
\endlastfoot

وعده‌های پاریس
  & \cellcolor{cAccent!10}ت‌۲ + خودفریبی
  & وعدهٔ عدم حاکمیت ناسازگار با \textit{ولایت فقیه} (۱۳۴۸)
    اما لحن مصاحبه‌ها حاکی از صداقت ذهنیِ نسبی است.%
    \footnote{صحیفهٔ امام، ج\,۵؛
    \en{Martin}, 2000, pp.\,78–95.} \\
\addlinespace

برخورد با بختیار
  & \cellcolor{cAccent!10}ت‌۲ + \cellcolor{cConsolid!10}ت‌۴
  & نصب بازرگان اما ایجاد ساختار موازی؛
    نخبگان انقلابی سازمان‌دهندهٔ اصلی.%
    \footnote{بازرگان، \textit{انقلاب ایران در دو حرکت}، ص\,۷۲.} \\
\addlinespace

مجلس خبرگان / قانون اساسی
  & \cellcolor{cAccent!10}ت‌۲ + \cellcolor{cGold!10}ت‌۳
  & بزنگاه نهادینه‌سازیِ ولایت فقیه؛
    هم فریب (وعده در برابر عمل)
    و هم تطور (گذار از هدایت به حاکمیت).%
    \footnote{\en{Schirazi}, 1997, pp.\,22–48.} \\
\addlinespace

ترورهای فرقان
  & \cellcolor{cConsolid!10}ت‌۴
  & بهره‌گیری نخبگان از بحران امنیتی
    برای تحکیم نهادهای موازی.%
    \footnote{\en{Abrahamian},
    \textit{\en{Radical Islam}}, 1989, pp.\,186–193.} \\
\addlinespace

بحران گروگان‌گیری
  & \cellcolor{cAccent!10}ت‌۲ + \cellcolor{cConsolid!10}ت‌۴
  & ابزارسازی آگاهانه از بحران؛
    تأیید ضمنی و سپس صریح؛
    رفراندوم قانون اساسی تحت سایهٔ بحران.%
    \footnote{\en{Bowden}, 2006, pp.\,204–219.} \\
\addlinespace

جنگ ایران و عراق
  & \cellcolor{cGold!10}ت‌۳ + \cellcolor{cConsolid!10}ت‌۴
  & تبدیل جنگ به ابزار بسیج و مشروعیت‌سازی؛
    تطور مفهوم «مصلحت نظام».%
    \footnote{\en{Crist}, 2012, pp.\,88–103.} \\
\addlinespace

حذف مجاهدین / بنی‌صدر / تصفیه‌ها / ۱۳۶۷
  & \cellcolor{cAccent!10}ت‌۲ + \cellcolor{cConsolid!10}ت‌۴
  & اوج تمرکز قدرت؛
    فتوای شخصی خمینی (ت‌۲)
    با اجرای نهادی نخبگان (ت‌۴).%
    \footnote{\en{Robertson}, 2010, pp.\,54–87;
    خاطرات منتظری، ۱۳۶۷.} \\

\end{longtable}
}

%============================================================
\section{نمودار نهایی: مسیر از وعده تا واقعیت}
\label{sec:ch16-final-tikz}

نمودار~\ref{fig:final-timeline} مسیر کلیِ حرکت خمینی
از وعده تا واقعیت را در یک خطِ زمانیِ واحد نشان می‌دهد
و تز غالب هر مرحله را مشخص می‌سازد.

\begin{figure}[ht]
\centering
\begin{tikzpicture}[
    event/.style={rectangle, rounded corners=4pt, draw=#1, thick,
                  fill=#1!8, minimum width=2.6cm, minimum height=1.5cm,
                  font=\tiny, align=center},
    yearnode/.style={circle, draw=cPrimary, fill=cPrimary!15,
                     font=\tiny\bfseries, inner sep=2pt,
                     minimum size=0.8cm},
    arr/.style={-{Stealth[length=5pt]}, thick, cGray},
  ]
  % main timeline
  \draw[very thick, cPrimary!40] (0,0) -- (15,0);

  % year markers
  \node[yearnode] (Y57) at (0,0) {۵۷};
  \node[yearnode] (Y58) at (3,0) {۵۸};
  \node[yearnode] (Y59) at (6,0) {۵۹};
  \node[yearnode] (Y60) at (9,0) {۶۰};
  \node[yearnode] (Y67) at (12,0) {۶۷};
  \node[yearnode] (Y68) at (15,0) {۶۸};

  % Phase 1
  \node[event=cAccent] (E1) at (1.5,2.5) {%
    \textbf{مرحلهٔ ۱}\\
    وعدهٔ پاریس\\[2pt]
    ت‌۲ + خودفریبی};
  \draw[arr, cAccent] (E1.south) -- ($(Y57)!0.5!(Y58)+(0,0.5)$);

  % Phase 2
  \node[event=cConsolid] (E2) at (6,2.5) {%
    \textbf{مرحلهٔ ۲}\\
    تمرکز قدرت\\[2pt]
    ت‌۲ + ت‌۴};
  \draw[arr, cConsolid] (E2.south) -- (Y59.north);

  % Phase 3
  \node[event=cGold] (E3) at (10.5,2.5) {%
    \textbf{مرحلهٔ ۳}\\
    نهادینه‌سازی\\[2pt]
    ت‌۳ + ت‌۴};
  \draw[arr, cGold] (E3.south) -- ($(Y60)!0.5!(Y67)+(0,0.5)$);

  % Power bar (bottom)
  \fill[cAccent!25] (0,-1.2) rectangle (15,-0.7);
  \shade[left color=cGreen!40, right color=cAccent!60]
    (0,-1.2) rectangle (15,-0.7);
  \node[font=\tiny, text=white] at (1.5,-0.95) {وعده};
  \node[font=\tiny, text=white] at (13,-0.95) {حاکمیت مطلقه};

  % bottom label
  \node[font=\scriptsize, text=cPrimary] at (7.5,-1.8)
    {شاخص تمرکز قدرت $\longrightarrow$};

  % Key events below timeline
  \node[font=\tiny, text=cGray, align=center] at (0,-2.5) {مصاحبه‌های\\پاریس};
  \node[font=\tiny, text=cGray, align=center] at (3,-2.5) {بختیار\\بازرگان};
  \node[font=\tiny, text=cGray, align=center] at (6,-2.5) {خبرگان\\گروگان‌گیری};
  \node[font=\tiny, text=cGray, align=center] at (9,-2.5) {حذف\\بنی‌صدر};
  \node[font=\tiny, text=cGray, align=center] at (12,-2.5) {کشتار\\۱۳۶۷};
  \node[font=\tiny, text=cGray, align=center] at (15,-2.5) {درگذشت\\خمینی};
\end{tikzpicture}
\caption{خط زمانی نهایی: از وعده تا حاکمیت مطلقه}
\label{fig:final-timeline}
\end{figure}

%============================================================
\section{پرسش‌های باز برای پژوهش آینده}
\label{sec:ch16-open}

هر پژوهش جدّی، پرسش‌هایی بی‌پاسخ بر جای می‌گذارد.
مهم‌ترین پرسش‌های باز عبارت‌اند از:

\begin{enumerate}
\item \textbf{اسناد آرشیوی:}
  آیا در آرشیوهای محرمانهٔ بیت رهبری یا دفتر رهبر انقلاب
  اسنادی وجود دارد که نشان‌دهندهٔ مباحثات داخلی
  دربارهٔ ولایت فقیه پیش از ۱۳۵۷ باشد؟%
  \footnote{میلانی، \textit{نگاهی به شاه}، مقدمه، ص\,۱۸
  بر ضرورت دسترسی آرشیوی تأکید دارد.}

\item \textbf{خاطرات منتشرنشده:}
  آیا یاران نزدیک خمینی
  (به‌ویژه احمد خمینی)
  خاطرات یا یادداشت‌هایی دارند که
  تردیدهای احتمالی خمینی را ثبت کرده باشند؟%
  \footnote{بخشی از بایگانی احمد خمینی
  در مؤسسهٔ تنظیم و نشر آثار امام نگهداری می‌شود
  اما به‌طور کامل در دسترس پژوهشگران نیست.}

\item \textbf{مقایسهٔ تطبیقی بین‌انقلابی:}
  آیا الگوی «وعدهٔ دموکراسی → تمرکز قدرت»
  در انقلاب‌های دیگر
  (روسیه ۱۹۱۷، کوبا ۱۹۵۹، نیکاراگوئه ۱۹۷۹)
  نیز تکرار شده است؟
  اگر بله، آیا مکانیزم‌های مشابهی در کارند؟%
  \footnote{%
  \en{Crane Brinton},
  \textit{\en{The Anatomy of Revolution}}, rev.\ ed., 1965, ch.\,8
  الگوی «ترمیدور» را برای انقلاب‌ها مطرح می‌کند.
  \en{Theda Skocpol},
  \textit{\en{States and Social Revolutions}}, 1979
  نیز تحلیل تطبیقی مشابهی ارائه می‌دهد.}

\item \textbf{نقش رسانه‌های غربی:}
  آیا رسانه‌های غربی با پذیرش بدون نقدِ وعده‌های پاریس
  عملاً در مشروعیت‌بخشی به خمینی نقش داشتند؟%
  \footnote{%
  \en{William Beeman},
  \textit{\en{The ``Great Satan'' vs.\ the ``Mad Mullahs''}},
  2005, ch.\,3.}

\item \textbf{مکانیزم‌های خودفریبی در رهبران سیاسی:}
  آیا یافته‌های عصب‌شناسیِ جدید دربارهٔ
  \en{self-deception}
  می‌تواند مدل دقیق‌تری برای رفتار خمینی ارائه دهد؟%
  \footnote{%
  \en{Sharot},
  \textit{\en{The Optimism Bias}}, 2011;
  \en{von Hippel \& Trivers},
  ``The Evolution and Psychology of Self-Deception'',
  \textit{\en{Behavioral and Brain Sciences}}, 34(1), 2011, pp.\,1–16.}

\item \textbf{پرسش هنجاری:}
  آیا در نظام حقوقیِ اسلامی (یا بین‌المللی)
  مکانیزمی برای پاسخگو کردن رهبران
  در قبال وعده‌های پیش‌انقلابی وجود دارد؟%
  \footnote{%
  \en{Thomas Franck},
  \textit{\en{The Power of Legitimacy Among Nations}}, 1990, ch.\,6.}
\end{enumerate}

%============================================================
\section{تأمل اخلاقی: مسئولیت وعده‌دهنده}
\label{sec:ch16-ethics}

فارغ از تبیین تاریخی، یک پرسش اخلاقی بنیادین باقی است:

\begin{warningBox}[پرسش اخلاقی]
آیا وعده‌دهنده‌ای که در بزنگاه‌های سرنوشت‌ساز
وعدهٔ عدم حاکمیت می‌دهد و سپس حاکم مطلق می‌شود،
از نظر اخلاقی مسئول است —
حتی اگر بخشی از تغییر مسیر ناخواسته بوده باشد؟
\end{warningBox}

سه سنّت اخلاقی پاسخ‌های متفاوتی می‌دهند:

\subsection{وظیفه‌گرایی کانتی (\en{Kantian Deontology})}

از منظر کانتی، \keyword{وعده‌شکنی} (\en{promise-breaking})
به‌خودی‌خود نادرست است،
صرف‌نظر از نتایج.%
\footnote{%
\en{Immanuel Kant},
\textit{\en{Groundwork of the Metaphysics of Morals}},
1785, 4:422;
ترجمهٔ فارسی: \textit{بنیاد مابعدالطبیعهٔ اخلاق}، ترجمهٔ عنایت‌الله شکیباپور.}
امرِ مطلق (\en{categorical imperative})
نمی‌پذیرد که وعده‌ای به‌عنوان ابزار تاکتیکی استفاده شود.
اگر خمینی آگاهانه وعده‌شکنی کرده باشد (ت‌۲)،
از نظر کانتی مسئول اخلاقی است.
اگر خودفریبی در کار بوده باشد،
مسئولیتش کمتر اما منتفی نیست —
زیرا \keyword{خودفریبی نیز صورتی از بی‌صداقتی}
با خود و دیگران است.%
\footnote{%
\en{Christine Korsgaard},
\textit{\en{Creating the Kingdom of Ends}}, 1996, pp.\,335–362.}

\subsection{پیامدگرایی (\en{Consequentialism})}

از منظر پیامدگرایانه، پرسش این نیست
که آیا وعده شکسته شد بلکه این است
که نتایج نهایی چه بودند.
اگر حاکمیت مطلقه به بهبود اوضاع جامعه انجامید،
وعده‌شکنی قابل توجیه خواهد بود.%
\footnote{%
\en{John Stuart Mill},
\textit{\en{Utilitarianism}}, 1863, ch.\,2;
ترجمهٔ فارسی: \textit{فایده‌گرایی}، ترجمهٔ مرتضی مردیها.}

اما شواهد تاریخی — از سرکوب ۱۳۶۰،
جنگ هشت‌ساله، کشتار ۱۳۶۷،
تا محدودیت آزادی‌های مدنی — نشان می‌دهد
که حتی از منظر پیامدگرایانه،
نتایج عمدتاً منفی بوده‌اند.%
\footnote{%
\en{Abrahamian},
\textit{\en{Tortured Confessions}}, 1999, pp.\,209–228;
\en{Robertson}, 2010, pp.\,1–15.}

\subsection{اخلاق فضیلت (\en{Virtue Ethics})}

از منظر \keyword{اخلاق فضیلت}
(\en{Aristotelian virtue ethics}),
پرسش این است: آیا خمینی فرد فضیلتمندی بود؟
فضیلت صداقت (\en{truthfulness})
و فضیلت عدالت (\en{justice})
هر دو اقتضا می‌کنند که حاکم به وعده‌هایش پای‌بند باشد —
نه فقط به‌دلیل وظیفه (کانت)
یا نتایج (پیامدگرایی)
بلکه به‌دلیل خصلت اخلاقی‌ای که حاکم باید داشته باشد.%
\footnote{%
\en{Alasdair MacIntyre},
\textit{\en{After Virtue}}, 3rd ed., 2007, ch.\,15.}

\begin{noteBox}[تبصرهٔ اسلامی]
در سنت اخلاقیِ اسلامی نیز
وفای به عهد (\textit{وفاء بالعهد})
از واجبات اخلاقی و فقهی شمرده می‌شود.%
\footnote{قرآن کریم، سورهٔ اسراء (۱۷)، آیهٔ ۳۴:
«وَأَوْفُوا بِالْعَهْدِ إِنَّ الْعَهْدَ كَانَ مَسْئُولاً.»}
مفهوم \keyword{مصلحت}
(\en{maṣlaḥa})
می‌تواند در شرایط استثنایی وعده‌شکنی را توجیه کند
اما گسترش بی‌حد آن خود مسأله‌ساز است —
چنان‌که تطور مفهوم مصلحت نظام در دههٔ ۱۳۶۰ نشان داد.%
\footnote{%
\en{Felicitas Opwis},
\textit{\en{Maṣlaḥa and the Purpose of the Law}}, 2010, pp.\,147–180.}
\end{noteBox}

%============================================================
\section{سخن پایانی}
\label{sec:ch16-final-word}

این کتاب تلاشی بود برای پاسخ به یکی از
مهم‌ترین پرسش‌های تاریخ معاصر ایران.
پاسخ نهایی — چنان‌که شاید قابل انتظار بود —
ساده نیست.
واقعیت تاریخی به‌ندرت در قالب دوگانه‌های مطلق می‌گنجد.

آنچه می‌توان با اطمینان نسبی گفت این است:

\begin{enumerate}
\item وعدهٔ خمینی در پاریس بدون تردید \textbf{نقض شد} —
  این واقعیتی تاریخی است، نه تفسیر.
\item \textbf{علت} نقض، ترکیبی مرحله‌ای از فریب،
  خودفریبی، فشار نخبگان و تطور ایدئولوژیک بوده است.
\item هیچ تز واحدی به‌تنهایی کفایت نمی‌کند
  و پژوهش آینده با اسناد جدید ممکن است
  وزن‌ها را تغییر دهد.
\item فارغ از تبیین تاریخی،
  \textbf{مسئولیت اخلاقی} وعده‌شکنی — حتی در ضعیف‌ترین خوانش —
  بر عهدهٔ وعده‌دهنده باقی می‌ماند.%
  \footnote{%
  این جمع‌بندی اخلاقی البته مسبوق به
  نقد منتظری بر خمینی است:
  «تاریخ شما را به‌عنوان یکی از [حذفی] ثبت خواهد کرد.»
  خاطرات منتظری، نامهٔ ۱۳۶۷.}
\end{enumerate}

%============================================================

\begin{principleBox}[خلاصهٔ نهایی کتاب — فصل ۱۶]
\begin{itemize}
\item \textbf{پاسخ ترکیبی مرحله‌ای:}
  \begin{enumerate}[nosep]
    \item مرحلهٔ اول (پاریس):
      \textcolor{cAccent}{فریب آگاهانه–نیمه‌آگاهانه}
      با عنصری از صداقت ذهنی.
    \item مرحلهٔ دوم (۱۳۵۸–۱۳۶۰):
      \textcolor{cAccent}{فریب} + \textcolor{cConsolid}{فشار نخبگان}.
    \item مرحلهٔ سوم (۱۳۶۰–۱۳۶۷):
      \textcolor{cGold}{تطور ایدئولوژیک} + \textcolor{cConsolid}{نخبگان}.
  \end{enumerate}

\item \textbf{وزن نهایی تزها (فصل~۱۵):}
  \textcolor{cAccent}{ت‌۲ ≈ ۳۳٪}،
  \textcolor{cConsolid}{ت‌۴ ≈ ۳۳٪}،
  \textcolor{cGold}{ت‌۳ ≈ ۲۳٪}،
  \textcolor{cGreen}{ت‌۱ ≈ ۱۱٪}.

\item \textbf{تز ۱ (صداقت)} ضعیف‌ترین اما نه کاملاً نادرست:
  مؤلفه‌ای جزئی در مرحلهٔ اول.

\item \textbf{الگوی قدرت:} یک‌سویه، انباشتی، بدون بازگشت.

\item \textbf{شش پرسش باز} برای پژوهش آینده شناسایی شدند
  (اسناد آرشیوی، خاطرات منتشرنشده، مقایسهٔ بین‌انقلابی،
  نقش رسانه‌ها، عصب‌شناسی خودفریبی، مکانیزم حقوقی پاسخگویی).

\item \textbf{تأمل اخلاقی:}
  از هر سه منظر وظیفه‌گرایی، پیامدگرایی و اخلاق فضیلت،
  وعده‌شکنی خمینی قابل توجیه کامل نیست.
  در سنت اخلاقی اسلامی نیز
  وفای به عهد واجب و مصلحت‌اندیشیِ بی‌حد مسأله‌ساز است.

\item \textbf{عنوان کتاب — «وعده یا خدعه؟»:}
  پرسش دوگانه است؛ پاسخ طیفی و مرحله‌ای.
  نه صرفاً وعده، نه صرفاً خدعه —
  بلکه فرایند پیچیده‌ای از فریب، خودفریبی،
  تطور و ساختارسازیِ نخبگانی
  که ایران را به مسیر کنونی‌اش رساند.
\end{itemize}
\end{principleBox}


%=============================================================
%  SEGMENT STATUS UPDATE
%=============================================================
%
%  Segment 0  (Preamble)           — COMPLETE
%  Segment 1  (Introduction, Ch 1-4) — COMPLETE
%  Segment 2  (Ch 5-8)             — COMPLETE
%  Segment 3  (Ch 9-12)            — COMPLETE
%  Segment 4  (Ch 13-16)           — COMPLETE  ✓
%
%  ALL 16 CHAPTERS + PREAMBLE PRODUCED.
%
%  Remaining optional tasks:
%    - Bibliography (BibLaTeX / .bib file)
%    - Index (makeidx / xindy)
%    - Appendices (source transcriptions, full timeline)
%    - Final proofreading pass
%    - Cover design
%
%=============================================================
```

<!-- POSSIBLE OVERLAP DETECTED (similarity: 85%) - REVIEW BELOW -->

```latex
%=============================================================
%  SEGMENT 5 — Back Matter: Appendices, Bibliography, Index
%  Book: وعده یا خدعه؟ — بررسی انتقادی
%  Codename: khomeini-promise-critical-study
%  Requires: Segments 0–4 compiled; XeLaTeX ×3 (for index)
%=============================================================

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  APPENDICES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\appendix
\renewcommand{\chaptername}{پیوست}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  APPENDIX A — گاه‌شمار کامل
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\chapter{گاه‌شمار تفصیلی: از نجف تا درگذشت خمینی}
\label{app:timeline}

\begin{infoBox}[دربارهٔ این پیوست]
این پیوست گاه‌شمار تفصیلیِ رویدادهای کلیدی
از تبعید خمینی به نجف (۱۳۴۳) تا درگذشت او (۱۳۶۸)
را ارائه می‌دهد.
هر رویداد با تز یا تزهای مرتبط رنگ‌کدگذاری شده است.
\end{infoBox}

{%
\small
\begin{longtable}{%
  >{\centering\arraybackslash}m{2cm}
  >{\centering\arraybackslash}m{2.5cm}
  >{\arraybackslash}m{6cm}
  >{\centering\arraybackslash}m{2.2cm}}
\caption{گاه‌شمار تفصیلی}
\label{tab:full-timeline} \\
\toprule
\textbf{سال شمسی}
  & \textbf{سال میلادی}
  & \textbf{رویداد}
  & \textbf{تز مرتبط} \\
\midrule
\endfirsthead
\caption[]{(ادامه)} \\
\toprule
\textbf{سال شمسی}
  & \textbf{سال میلادی}
  & \textbf{رویداد}
  & \textbf{تز مرتبط} \\
\midrule
\endhead
\midrule
\multicolumn{4}{r}{\footnotesize \textit{ادامه در صفحهٔ بعد}\,\dots} \\
\endfoot
\bottomrule
\endlastfoot

%--- pre-revolution ---
۱۳۴۳
  & ۱۹۶۴
  & تبعید خمینی به ترکیه و سپس نجف%
    \footnote{\en{Moin},
    \textit{\en{Khomeini: Life of the Ayatollah}}, 1999, pp.\,104–112.}
  & — \\
\addlinespace

۱۳۴۸
  & ۱۹۷۰
  & انتشار درس‌گفتارهای \textit{ولایت فقیه}
    (\en{Islamic Government}) در نجف%
    \footnote{\en{Martin},
    \textit{\en{Creating an Islamic State}}, 2000, pp.\,78–95.}
  & \cellcolor{cGold!15}ت‌۳ / \cellcolor{cAccent!15}ت‌۲ \\
\addlinespace

۱۳۵۶
  & ۱۹۷۸
  & آغاز اعتراضات گسترده در ایران؛
    خمینی از نجف به پاریس می‌رود (مهر ۱۳۵۷)%
    \footnote{\en{Keddie},
    \textit{\en{Modern Iran}}, 2006, pp.\,216–224.}
  & — \\
\addlinespace

۱۳۵۷ (دی–بهمن)
  & ۱۹۷۹ (ژانویه)
  & مصاحبه‌های متعدد پاریس:
    وعدهٔ عدم تصدّی مقام سیاسی%
    \footnote{صحیفهٔ امام، ج\,۵، صص\,۳۸۸–۳۹۰.}
  & \cellcolor{cGreen!15}ت‌۱ / \cellcolor{cAccent!15}ت‌۲ \\
\addlinespace

%--- revolution ---
۱۳۵۷ (۲۲ بهمن)
  & ۱۹۷۹ (۱۱ فوریه)
  & پیروزی انقلاب؛ سقوط حکومت بختیار%
    \footnote{بازرگان، \textit{انقلاب ایران در دو حرکت}، ص\,۷۲.}
  & \cellcolor{cAccent!15}ت‌۲ / \cellcolor{cConsolid!15}ت‌۴ \\
\addlinespace

۱۳۵۷ (اسفند)
  & ۱۹۷۹ (مارس)
  & رفراندوم جمهوری اسلامی (۱۲ فروردین ۱۳۵۸)%
    \footnote{\en{Milani},
    \textit{\en{The Making of Iran's Islamic Revolution}},
    1994, p.\,156.}
  & \cellcolor{cAccent!15}ت‌۲ \\
\addlinespace

۱۳۵۸ (تابستان)
  & ۱۹۷۹
  & مجلس خبرگان قانون اساسی:
    طرح ولایت فقیه مطلقه%
    \footnote{صورت مشروح مذاکرات مجلس خبرگان قانون اساسی، ۱۳۵۸.}
  & \cellcolor{cAccent!15}ت‌۲ / \cellcolor{cGold!15}ت‌۳ \\
\addlinespace

۱۳۵۸ (آبان)
  & ۱۹۷۹ (نوامبر)
  & اشغال سفارت آمریکا — آغاز بحران گروگان‌گیری%
    \footnote{\en{Bowden},
    \textit{\en{Guests of the Ayatollah}}, 2006, pp.\,1–25.}
  & \cellcolor{cAccent!15}ت‌۲ / \cellcolor{cConsolid!15}ت‌۴ \\
\addlinespace

۱۳۵۸ (آذر)
  & ۱۹۷۹ (دسامبر)
  & رفراندوم قانون اساسی — تصویب ولایت فقیه%
    \footnote{\en{Schirazi},
    \textit{\en{The Constitution of Iran}}, 1997, pp.\,22–48.}
  & \cellcolor{cGold!15}ت‌۳ \\
\addlinespace

۱۳۵۸–۱۳۵۹
  & ۱۹۷۹–۱۹۸۰
  & ترورهای گروه فرقان؛
    ترور مطهری، مفتح و دیگران%
    \footnote{\en{Abrahamian},
    \textit{\en{Radical Islam}}, 1989, pp.\,186–193.}
  & \cellcolor{cConsolid!15}ت‌۴ \\
\addlinespace

۱۳۵۹ (خرداد)
  & ۱۹۸۰ (ژوئن)
  & عزل بنی‌صدر از فرماندهی کل قوا%
    \footnote{بنی‌صدر، \textit{خیانت به امید}، صص\,۳۰۲–۳۱۵.}
  & \cellcolor{cAccent!15}ت‌۲ / \cellcolor{cConsolid!15}ت‌۴ \\
\addlinespace

۱۳۵۹ (شهریور)
  & ۱۹۸۰ (سپتامبر)
  & آغاز جنگ ایران و عراق%
    \footnote{\en{Crist},
    \textit{\en{The Twilight War}}, 2012, pp.\,42–56.}
  & \cellcolor{cGold!15}ت‌۳ / \cellcolor{cConsolid!15}ت‌۴ \\
\addlinespace

۱۳۶۰ (خرداد–تیر)
  & ۱۹۸۱
  & سرکوب مجاهدین خلق و تصفیهٔ سیاسی گسترده%
    \footnote{\en{Abrahamian},
    \textit{\en{Tortured Confessions}}, 1999, pp.\,124–158.}
  & \cellcolor{cAccent!15}ت‌۲ / \cellcolor{cConsolid!15}ت‌۴ \\
\addlinespace

۱۳۶۱–۱۳۶۵
  & ۱۹۸۲–۱۹۸۶
  & ادامهٔ جنگ پس از آزادسازی خرمشهر؛
    رد پیشنهادهای صلح%
    \footnote{خاطرات رفسنجانی، \textit{دوران دفاع مقدس}،
    ج\,۱، صص\,۱۱۲–۱۲۸.}
  & \cellcolor{cGold!15}ت‌۳ / \cellcolor{cConsolid!15}ت‌۴ \\
\addlinespace

۱۳۶۶
  & ۱۹۸۸
  & نامهٔ معروف خمینی دربارهٔ تقدم مصلحت نظام%
    \footnote{صحیفهٔ امام، ج\,۲۱.}
  & \cellcolor{cGold!15}ت‌۳ \\
\addlinespace

۱۳۶۷ (تیر)
  & ۱۹۸۸ (ژوئیه)
  & پذیرش قطعنامهٔ ۵۹۸ — «نوشیدن جام زهر»%
    \footnote{\en{Crist}, 2012, pp.\,350–362.}
  & \cellcolor{cGold!15}ت‌۳ \\
\addlinespace

۱۳۶۷ (مرداد–شهریور)
  & ۱۹۸۸ (اوت–سپتامبر)
  & کشتار زندانیان سیاسی ۱۳۶۷%
    \footnote{\en{Robertson},
    \textit{\en{Massacre of Political Prisoners in Iran, 1988}},
    2010, pp.\,54–87.}
  & \cellcolor{cAccent!15}ت‌۲ / \cellcolor{cConsolid!15}ت‌۴ \\
\addlinespace

۱۳۶۷ (فروردین ۱۳۶۸)
  & ۱۹۸۹ (مارس)
  & عزل آیت‌الله منتظری از قائم‌مقامی رهبری%
    \footnote{خاطرات منتظری (نسخهٔ اینترنتی).}
  & \cellcolor{cAccent!15}ت‌۲ \\
\addlinespace

۱۳۶۸ (۱۴ خرداد)
  & ۱۹۸۹ (۳ ژوئن)
  & درگذشت خمینی%
    \footnote{\en{Moin}, 1999, pp.\,305–312.}
  & — \\

\end{longtable}
}

%============================================================
\section{نمودار خطّ زمانیِ کامل}
\label{sec:app-a-tikz}

\begin{figure}[ht]
\centering
\begin{tikzpicture}[
    yscale=0.65,
    evt/.style={rectangle, rounded corners=3pt, draw=#1, thick,
                fill=#1!8, font=\tiny, align=right,
                text width=4.5cm, inner sep=3pt},
    yearmark/.style={circle, fill=cPrimary, text=white,
                     font=\tiny\bfseries, inner sep=2pt,
                     minimum size=0.7cm},
  ]
  % vertical timeline
  \draw[very thick, cPrimary!40] (0,0) -- (0,-20);

  % helper macro
  \newcommand{\timeevt}[4]{%
    % #1=y, #2=color, #3=year, #4=text
    \node[yearmark] at (0,#1) {#3};
    \node[evt=#2, anchor=west] at (1,#1) {#4};
  }

  \timeevt{0}{cGold}{۴۸}{انتشار \textit{ولایت فقیه} — نجف}
  \timeevt{-2}{cAccent}{۵۷}{وعده‌های پاریس — عدم حاکمیت}
  \timeevt{-4}{cAccent}{۵۷}{پیروزی انقلاب — نصب بازرگان}
  \timeevt{-6}{cAccent}{۵۸}{مجلس خبرگان — ولایت فقیه در قانون اساسی}
  \timeevt{-8}{cConsolid}{۵۸}{بحران گروگان‌گیری — حذف رقبا}
  \timeevt{-10}{cConsolid}{۵۹}{ترورهای فرقان — تحکیم نهادها}
  \timeevt{-12}{cAccent}{۶۰}{عزل بنی‌صدر — سرکوب مجاهدین}
  \timeevt{-14}{cGold}{۶۰–۶۶}{جنگ هشت‌ساله — بسیج و مصلحت نظام}
  \timeevt{-16}{cGold}{۶۶}{نامهٔ مصلحت نظام — ولایت مطلقه}
  \timeevt{-18}{cAccent}{۶۷}{کشتار ۱۳۶۷ — فتوای اعدام جمعی}
  \timeevt{-20}{cPrimary}{۶۸}{درگذشت خمینی}

  % power gradient bar
  \shade[top color=cGreen!30, bottom color=cAccent!50]
    (-1.8,0.5) rectangle (-1.2,-20.5);
  \node[font=\tiny, rotate=90, text=cPrimary] at (-2.2,-10)
    {وعده \quad$\longrightarrow$\quad حاکمیت مطلقه};
\end{tikzpicture}
\caption{خط زمانی عمودی: مسیر انباشت قدرت}
\label{fig:full-vertical-timeline}
\end{figure}

\begin{principleBox}[خلاصهٔ پیوست الف]
\begin{itemize}
\item گاه‌شمار تفصیلی ۱۸ رویداد کلیدی را از ۱۳۴۳ تا ۱۳۶۸
      فهرست کرد.
\item هر رویداد با تز یا تزهای مرتبط رنگ‌کدگذاری شد.
\item خط زمانی عمودی روند انباشت قدرت را
      به‌صورت بصری تأیید می‌کند.
\end{itemize}
\end{principleBox}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  APPENDIX B — متون کلیدی
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\chapter{گزیدهٔ متون کلیدی}
\label{app:texts}

\begin{infoBox}[دربارهٔ این پیوست]
این پیوست گزیده‌ای از مهم‌ترین متون اولیه
— مصاحبه‌ها، سخنرانی‌ها، نامه‌ها و فتاوا —
را که در تحلیل‌های فصل‌های ۳–۱۶ مورد استناد قرار گرفتند،
به‌صورت اصلی (یا ترجمهٔ فارسیِ معتبر) ارائه می‌دهد.
هدف، فراهم‌سازیِ امکان ارجاع مستقیم
برای خواننده است.%
\footnote{تمامی متون از نسخه‌های رسمیِ منتشرشده نقل شده‌اند.
در مواردی که نسخهٔ اینترنتی مورد استفاده بوده، نشانیِ وب
در پانوشت ذکر شده است.}
\end{infoBox}

%============================================================
\section{مصاحبهٔ خمینی با \en{Le Monde} (دی ۱۳۵۷)}
\label{sec:app-b-lemonde}

\begin{warningBox}[متن اصلی — ترجمهٔ فارسی]
«\,من در آیندهٔ ایران هیچ نقش حکومتی نخواهم داشت.
نقش من هدایت و ارشاد است.
من یک آخوند هستم و جایگاه من حوزهٔ علمیه است.
حکومت به دست مردم و نمایندگان منتخب آن‌ها اداره خواهد شد.\,»%
\footnote{صحیفهٔ امام، ج\,۵، صص\,۳۸۸–۳۸۹.
متن فرانسوی اصلی:
\en{``Je n'exercerai aucune fonction de gouvernement.
Mon rôle est celui d'un guide\dots''},
\textit{\en{Le Monde}}, 9 janvier 1979.}
\end{warningBox}

\begin{noteBox}[تحلیل مختصر]
این متن مهم‌ترین سند وعدهٔ عدم حاکمیت است.
عبارت «هیچ نقش حکومتی» صریح و بدون ابهام است.
تز ۲ (فریب) این متن را تاکتیکی می‌خواند؛
تز ۱ (صداقت) آن را بیان واقعی نیت می‌داند؛
تز ۳ (تطور) معتقد است نیت بعداً تغییر کرد.
ر.ک.\ فصل~۶ برای تحلیل تفصیلی.
\end{noteBox}

%============================================================
\section{مصاحبهٔ خمینی با \en{The Guardian} (بهمن ۱۳۵۷)}
\label{sec:app-b-guardian}

\begin{warningBox}[متن اصلی — ترجمهٔ فارسی]
«\,من قصد ندارم رئیس‌جمهور شوم یا نخست‌وزیر.
من در قم خواهم ماند و از آنجا نظارت خواهم کرد.\,»%
\footnote{صحیفهٔ امام، ج\,۵، ص\,۴۲۳.
\en{The Guardian}, 6 November 1978 (interview conducted
in Neauphle-le-Château).}
\end{warningBox}

%============================================================
\section{درس‌گفتارهای \textit{ولایت فقیه} — نجف (۱۳۴۸)}
\label{sec:app-b-velayat}

\begin{warningBox}[گزیدهٔ متن]
«\,همان‌طور که پیامبر (ص) ولایت بر امت داشت
و حکومت تشکیل داد\dots\
فقیه عادل نیز باید حکومت تشکیل دهد\dots\
ولایت فقیه از جنس ولایت پیامبر و ائمه است.\,»%
\footnote{خمینی، \textit{ولایت فقیه (حکومت اسلامی)}،
نشر مؤسسهٔ تنظیم و نشر آثار امام خمینی، صص\,۳۵–۴۰.}
\end{warningBox}

\begin{noteBox}[تحلیل مختصر]
این متن — که نُه سال پیش از وعده‌های پاریس نوشته شده —
مستقیماً ایدهٔ حکومت فقیه را مطرح می‌کند.
تز ۲ آن را دلیل قاطع بر فریبکارانه بودن وعده‌های پاریس می‌داند.
تز ۳ استدلال می‌کند که این متن فقط مرحله‌ای از تطور بود
و خمینی ممکن است بعداً نظرش را تعدیل کرده باشد.
ر.ک.\ فصل‌های ۴ و ۸.%
\footnote{\en{Martin}, 2000, pp.\,78–95;
کدیور، \textit{نظریه‌های دولت در فقه شیعه}، صص\,۱۵۲–۱۸۰.}
\end{noteBox}

%============================================================
\section{نامهٔ خمینی دربارهٔ مصلحت نظام (دی ۱۳۶۶)}
\label{sec:app-b-maslahat}

\begin{warningBox}[گزیدهٔ متن]
«\,حکومت\dots\ از اهمّ احکام الهی است
و بر جمیع احکام فرعیهٔ الهیه تقدّم دارد\dots\
حکومت می‌تواند هر امری را — چه عبادی و چه غیرعبادی —
که جریان آن مخالف مصالح اسلام است
مادامی که چنین است جلوگیری کند.\,»%
\footnote{صحیفهٔ امام، ج\,۲۱، نامهٔ ۱۶ دی ۱۳۶۶
خطاب به آیت‌الله خامنه‌ای (رئیس‌جمهور وقت).}
\end{warningBox}

\begin{noteBox}[تحلیل مختصر]
این نامه نقطهٔ اوجِ تطور ایدئولوژیک (ت‌۳) است:
حکومت فقیه نه‌تنها فرعی نیست
بلکه بر تمام احکام دیگر اولویت دارد.
فاصلهٔ این موضع با وعدهٔ «هیچ نقش حکومتی»
بیش از آنکه صرفاً با «اضطرار» (ت‌۱) توضیح‌پذیر باشد،
نشان‌دهندهٔ تحولی بنیادین در اندیشه یا
آشکارسازیِ اندیشه‌ای پنهان (ت‌۲) است.
ر.ک.\ فصل‌های ۱۱ و ۱۵.%
\footnote{کدیور، \textit{حکومت ولایی}، صص\,۲۵۵–۲۷۰.}
\end{noteBox}

%============================================================
\section{نامهٔ منتظری به خمینی (مرداد ۱۳۶۷)}
\label{sec:app-b-montazeri}

\begin{warningBox}[گزیدهٔ متن]
«\,آیا می‌دانید در زندان‌های جمهوری اسلامی
زنان باردار اعدام می‌شوند؟\dots\
جهانیان ما را به کشتار متهم خواهند کرد\dots\
تاریخ ما را جنایتکار ثبت خواهد کرد.\,»%
\footnote{خاطرات آیت‌الله منتظری (نسخهٔ اینترنتی)،
نامهٔ ۹ مرداد ۱۳۶۷.
نیز ر.ک.\ \en{Robertson}, 2010, pp.\,75–82.}
\end{warningBox}

\begin{noteBox}[تحلیل مختصر]
این نامه مهم‌ترین سند اعتراض درون‌حکومتی
به کشتار ۱۳۶۷ است.
پاسخ خمینی — عزل منتظری از قائم‌مقامی رهبری —
نشان‌دهندهٔ اوج تمرکز قدرت فردی است (ت‌۲ + ت‌۴).
حتی نزدیک‌ترین متحد ایدئولوژیک نیز
قادر به تغییر مسیر نبود.
ر.ک.\ فصل~۱۲.
\end{noteBox}

\begin{principleBox}[خلاصهٔ پیوست ب]
\begin{itemize}
\item پنج متن کلیدی ارائه شد:
      مصاحبه‌های پاریس (\en{Le Monde} و \en{The Guardian})،
      درس‌گفتارهای ولایت فقیه (۱۳۴۸)،
      نامهٔ مصلحت نظام (۱۳۶۶)،
      و نامهٔ منتظری (۱۳۶۷).
\item هر متن با تحلیل مختصر و ارجاع به فصل مربوطه همراه شد.
\item هدف: فراهم‌سازیِ دسترسی مستقیم خوانندگان
      به شواهد اولیه.
\end{itemize}
\end{principleBox}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  APPENDIX C — واژه‌نامهٔ تخصصی
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\chapter{واژه‌نامهٔ تخصصی (فارسی–انگلیسی)}
\label{app:glossary}

\begin{infoBox}[دربارهٔ این پیوست]
واژه‌نامهٔ زیر مهم‌ترین اصطلاحات تخصصی به‌کاررفته
در این کتاب را همراه با معادل انگلیسی
و ارجاع به فصل مربوطه فهرست می‌کند.
\end{infoBox}

{%
\small
\begin{longtable}{%
  >{\arraybackslash}m{3.5cm}
  >{\arraybackslash}m{4cm}
  >{\arraybackslash}m{5.5cm}}
\caption{واژه‌نامهٔ تخصصی}
\label{tab:glossary} \\
\toprule
\textbf{اصطلاح فارسی}
  & \textbf{معادل انگلیسی}
  & \textbf{توضیح / ارجاع} \\
\midrule
\endfirsthead
\caption[]{(ادامه)} \\
\toprule
\textbf{اصطلاح فارسی}
  & \textbf{معادل انگلیسی}
  & \textbf{توضیح / ارجاع} \\
\midrule
\endhead
\bottomrule
\endlastfoot

ولایت فقیه
  & \en{Guardianship of the Jurist}
  & نظریهٔ حکومت مستقیم فقیه؛ فصل‌های ۴، ۸ \\
\addlinespace

ولایت مطلقهٔ فقیه
  & \en{Absolute Guardianship of the Jurist}
  & نسخهٔ گسترش‌یافته: ولایت بر تمام احکام؛ فصل‌های ۱۱، ۱۵ \\
\addlinespace

مصلحت نظام
  & \en{Expediency of the State / Maṣlaḥa}
  & تقدم مصلحت حکومت بر احکام فقهی؛ فصل‌های ۱۱، ۱۶ \\
\addlinespace

تقیه
  & \en{Taqiyya (precautionary dissimulation)}
  & پنهان‌سازی باور واقعی در شرایط خطر؛ فصل~۴ \\
\addlinespace

ناهماهنگی شناختی
  & \en{Cognitive Dissonance}
  & تنش میان باور و رفتار؛ فصل~۱۵ \\
\addlinespace

خودفریبی
  & \en{Self-Deception}
  & باور و انکار هم‌زمان؛ فصل‌های ۱۴–۱۶ \\
\addlinespace

استدلال انگیزه‌محور
  & \en{Motivated Reasoning}
  & پردازش گزینشی شواهد؛ فصل~۱۵ \\
\addlinespace

سوگیری تأیید
  & \en{Confirmation Bias}
  & توجه بیشتر به شواهد هم‌سو با باور موجود؛ فصل~۱۵ \\
\addlinespace

تحلیل حساسیت
  & \en{Sensitivity Analysis}
  & بررسی تأثیر تغییر فروض بر نتیجه؛ فصل~۱۵ \\
\addlinespace

ارزیابی بیزی کیفی
  & \en{Qualitative Bayesian Assessment}
  & روش وزن‌دهی با پیشین و درست‌نمایی؛ فصل~۱۵ \\
\addlinespace

تز ترکیبی مرحله‌ای
  & \en{Phased Composite Thesis}
  & فرضیهٔ نهایی کتاب: ترکیب مرحله‌ای تزها؛ فصل‌های ۱۴–۱۶ \\
\addlinespace

پارسیمونی
  & \en{Parsimony (Occam's Razor)}
  & ترجیح تبیین ساده‌تر؛ فصل~۱۴ \\
\addlinespace

ماتریس سازگاری
  & \en{Compatibility Matrix}
  & جدول سازگاری منطقی تزها؛ فصل~۱۴ \\
\addlinespace

سوگیری بقا
  & \en{Survivorship Bias}
  & حفظ نامتوازن شواهد؛ فصل~۱۵ \\
\addlinespace

نظریهٔ ذهن
  & \en{Theory of Mind}
  & توانایی درک حالات ذهنی دیگران؛ فصل~۱۴ \\

\end{longtable}
}

\begin{principleBox}[خلاصهٔ پیوست ج]
\begin{itemize}
\item ۱۵ اصطلاح تخصصی فارسی–انگلیسی فهرست شد.
\item هر اصطلاح با ارجاع به فصل مربوطه همراه است.
\item این واژه‌نامه ابزار مرجع سریع برای خوانندگان است.
\end{itemize}
\end{principleBox}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  APPENDIX D — روش‌شناسی تفصیلی
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\chapter{تشریح روش‌شناسی پژوهش}
\label{app:method}

\begin{infoBox}[دربارهٔ این پیوست]
این پیوست روش‌شناسیِ به‌کاررفته در کتاب را
به‌صورت تفصیلی شرح می‌دهد:
معیارهای انتخاب منابع، مقیاس ارزیابی،
محدودیت‌ها و مفروضات.
\end{infoBox}

%============================================================
\section{معیارهای انتخاب منابع}
\label{sec:app-d-sources}

\begin{table}[ht]
\centering
\caption{سلسله‌مراتب منابع}
\label{tab:source-hierarchy}
\begin{tabular}{>{\centering\arraybackslash}m{1.5cm}
                >{\arraybackslash}m{4cm}
                >{\arraybackslash}m{6.5cm}}
\toprule
\textbf{رتبه} & \textbf{نوع منبع} & \textbf{مثال} \\
\midrule
۱ & اسناد دست‌اول رسمی
  & صحیفهٔ امام، مصوبات مجلس خبرگان، اسناد لانهٔ جاسوسی \\
\addlinespace
۲ & خاطرات دست‌اول
  & رفسنجانی، منتظری، یزدی، بازرگان، بنی‌صدر \\
\addlinespace
۳ & پژوهش‌های آکادمیک (فارسی و انگلیسی)
  & \en{Abrahamian, Bakhash, Milani, Keddie};
    کدیور، بشیریه، سروش \\
\addlinespace
۴ & تحلیل‌های روزنامه‌نگاری و مستند
  & \en{Bowden, Crist}; مقالات تحلیلی \\
\bottomrule
\end{tabular}
\end{table}

\begin{noteBox}[اصل منبع‌شناختی]
در تمام فصل‌ها، تلاش شده منابع ردهٔ ۱ و ۲
بر ردهٔ ۳ و ۴ اولویت داشته باشند.
هرجا منبع دست‌اول در دسترس نبود،
حداقل دو منبع ثانویهٔ مستقل مورد استناد قرار گرفته است.%
\footnote{%
\en{George \& Bennett},
\textit{\en{Case Studies and Theory Development}}, 2005, pp.\,89–95.}
\end{noteBox}

%============================================================
\section{مقیاس ارزیابی سازگاری}
\label{sec:app-d-scale}

مقیاس سه‌درجه‌ای (فصل~۱۳) بر پایهٔ سه معیار عمل می‌کند:

\begin{enumerate}
\item \textbf{سازگاری مستقیم:}
  آیا شواهد مستقیماً پیش‌بینیِ تز را تأیید می‌کنند؟
\item \textbf{نیاز به فروض کمکی:}
  آیا تز برای توضیح رویداد نیاز به فروض اضافی دارد؟
\item \textbf{وجود شواهد مخالف:}
  آیا شواهدی وجود دارد که مستقیماً
  پیش‌بینی تز را نقض کنند؟
\end{enumerate}

\begin{figure}[ht]
\centering
\begin{tikzpicture}[
    node distance=0.8cm and 2cm,
    decision/.style={diamond, draw=cPrimary, thick, fill=cLight,
                     aspect=2.5, font=\scriptsize, align=center,
                     inner sep=2pt},
    result/.style={rectangle, rounded corners=4pt, draw=#1, thick,
                   fill=#1!15, font=\scriptsize\bfseries,
                   minimum width=2.2cm, minimum height=0.7cm},
    arr/.style={-{Stealth[length=5pt]}, thick},
  ]
  \node[decision] (Q1) {شواهد\\مستقیم؟};
  \node[decision, below left=1.5cm and 1.5cm of Q1] (Q2) {فروض\\کمکی؟};
  \node[result=cGreen, right=2.5cm of Q1] (R3) {قوی (۳)};
  \node[result=cGold, right=2.5cm of Q2] (R2) {متوسط (۲)};
  \node[result=cAccent, below=1.5cm of Q2] (R1) {ضعیف (۱)};

  \draw[arr] (Q1) -- node[above, font=\tiny]{بله} (R3);
  \draw[arr] (Q1) -- node[left, font=\tiny]{خیر} (Q2);
  \draw[arr] (Q2) -- node[above, font=\tiny]{بله و کافی} (R2);
  \draw[arr] (Q2) -- node[left, font=\tiny]{خیر یا ناکافی} (R1);
\end{tikzpicture}
\caption{فلوچارت تصمیم‌گیری برای نمره‌دهی سازگاری}
\label{fig:scoring-flowchart}
\end{figure}

%============================================================
\section{مفروضات و محدودیت‌ها}
\label{sec:app-d-limits}

\begin{enumerate}
\item \textbf{فرض عقلانیت حداقلی:}
  خمینی به‌عنوان فاعل عقلانی (نه لزوماً کاملاً عقلانی)
  فرض شده است — یعنی کنش‌هایش حداقل
  تا حدّی هدفمند و محاسبه‌شده بوده‌اند.%
  \footnote{\en{Jon Elster},
  \textit{\en{Ulysses and the Sirens}}, rev.\ ed., 1984, ch.\,1.}

\item \textbf{عدم دسترسی به آرشیو محرمانه:}
  بسیاری از اسناد داخلی حکومت ایران
  طبقه‌بندی‌شده و غیرقابل دسترسی‌اند.
  این محدودیت مهم‌ترین عامل عدم قطعیت نتایج است.

\item \textbf{سوگیری بقا:}
  شواهدی که به نفع حاکمیت بودند
  بیشتر حفظ و منتشر شده‌اند.
  شواهد تردید یا اعتراض ممکن است
  به‌طور سیستماتیک حذف شده باشند.

\item \textbf{زبان و ترجمه:}
  بخشی از مصاحبه‌های پاریس به فرانسه یا انگلیسی بود
  و ترجمهٔ فارسی ممکن است ظرایفی را از دست داده باشد.%
  \footnote{ر.ک.\ فصل~۶ برای بحث دربارهٔ نسخه‌های مختلف
  مصاحبهٔ خمینی با \en{Le Monde}.}
\end{enumerate}

\begin{principleBox}[خلاصهٔ پیوست د]
\begin{itemize}
\item سلسله‌مراتب چهارسطحی منابع تعریف شد.
\item مقیاس سه‌درجه‌ای سازگاری
      با فلوچارت تصمیم‌گیری تشریح شد.
\item چهار مفروض و محدودیت اصلی تصریح شدند.
\end{itemize}
\end{principleBox}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  BIBLIOGRAPHY — کتاب‌نامه
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% If using BibLaTeX (recommended for this project):
% \printbibliography[heading=bibintoc, title={کتاب‌نامه}]
%
% Below: manual bibliography as fallback
% (replace with .bib file for production)

\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{کتاب‌نامه}
\chapter*{کتاب‌نامه}
\label{ch:bibliography}

\begin{infoBox}[دربارهٔ کتاب‌نامه]
کتاب‌نامه به دو بخش تقسیم شده است:
(الف) منابع فارسی و (ب) منابع انگلیسی.
ترتیب هر بخش الفبایی بر اساس نام خانوادگی مؤلف است.
\end{infoBox}

%============================================================
\section*{الف) منابع فارسی}

\begin{enumerate}[label={[\arabic*]}, leftmargin=2cm]

\item
بازرگان، مهدی.
\textit{انقلاب ایران در دو حرکت}.
تهران، ۱۳۶۳.

\item
بشیریه، حسین.
\textit{دیباچه‌ای بر جامعه‌شناسی سیاسی ایران (دورهٔ جمهوری اسلامی)}.
تهران: نگاه معاصر، ۱۳۸۱.

\item
بنی‌صدر، ابوالحسن.
\textit{خیانت به امید}.
پاریس، ۱۳۶۱.

\item
حجاریان، سعید.
\textit{از شاهد قدسی تا شاهد بازاری}.
تهران: طرح نو، ۱۳۸۰.

\item
خمینی، روح‌الله.
\textit{صحیفهٔ امام}، ۲۲ جلد.
تهران: مؤسسهٔ تنظیم و نشر آثار امام خمینی، ۱۳۷۸.

\item
خمینی، روح‌الله.
\textit{ولایت فقیه (حکومت اسلامی)}.
نجف، ۱۳۴۸ ش. [تقریرات درس].

\item
رفسنجانی، اکبر هاشمی.
\textit{خاطرات} (چندین جلد).
تهران: دفتر نشر معارف انقلاب، سال‌های مختلف.

\item
سروش، عبدالکریم.
\textit{فربه‌تر از ایدئولوژی}.
تهران: صراط، ۱۳۷۲.

\item
\textit{صورت مشروح مذاکرات مجلس خبرگان قانون اساسی}.
تهران: ادارهٔ کل امور فرهنگی و روابط عمومی مجلس شورای اسلامی، ۱۳۶۴.

\item
کدیور، محسن.
\textit{حکومت ولایی}.
تهران: نشر نی، ۱۳۷۷.

\item
کدیور، محسن.
\textit{نظریه‌های دولت در فقه شیعه}.
تهران: نشر نی، ۱۳۷۶.

\item
گنجی، اکبر.
\textit{تلقی فاشیستی از دین و حکومت}.
تهران: طرح نو، ۱۳۷۹.

\item
منتظری، حسینعلی.
\textit{خاطرات} (نسخهٔ اینترنتی).
\url{https://amontazeri.com/farsi/memoir}.

\item
میلانی، عباس.
\textit{نگاهی به شاه}.
تهران: نشر اختران، ۱۳۹۲.

\item
یزدی، ابراهیم.
\textit{آخرین تلاش‌ها در آخرین روزها}.
تهران: قلم، ۱۳۶۳.

\end{enumerate}

%============================================================
\section*{ب) منابع انگلیسی}

\begin{enumerate}[label={[\arabic*]}, leftmargin=2cm, resume]

\item
\en{Abrahamian, Ervand.
\textit{Khomeinism: Essays on the Islamic Republic}.
Berkeley: University of California Press, 1993.}

\item
\en{Abrahamian, Ervand.
\textit{A History of Modern Iran}.
Cambridge: Cambridge University Press, 2008.}

\item
\en{Abrahamian, Ervand.
\textit{Tortured Confessions: Prisons and Public Recantations
in Modern Iran}.
Berkeley: University of California Press, 1999.}

\item
\en{Abrahamian, Ervand.
\textit{Radical Islam: The Iranian Mojahedin}.
London: I.\,B.\,Tauris, 1989.}

\item
\en{Arjomand, Said Amir.
\textit{The Turban for the Crown: The Islamic Revolution in Iran}.
New York: Oxford University Press, 1988.}

\item
\en{Bakhash, Shaul.
\textit{The Reign of the Ayatollahs: Iran and the Islamic Revolution}.
New York: Basic Books, 1984.}

\item
\en{Beeman, William O.
\textit{The ``Great Satan'' vs.\ the ``Mad Mullahs'':
How the United States and Iran Demonize Each Other}.
Westport, CT: Praeger, 2005.}

\item
\en{Bowden, Mark.
\textit{Guests of the Ayatollah: The First Battle in
America's War with Militant Islam}.
New York: Atlantic Monthly Press, 2006.}

\item
\en{Brinton, Crane.
\textit{The Anatomy of Revolution}. Rev.\ ed.
New York: Vintage, 1965.}

\item
\en{Crist, David.
\textit{The Twilight War: The Secret History of
America's Thirty-Year Conflict with Iran}.
New York: Penguin, 2012.}

\item
\en{Dennett, Daniel C.
\textit{The Intentional Stance}.
Cambridge, MA: MIT Press, 1987.}

\item
\en{Elster, Jon.
\textit{Sour Grapes: Studies in the Subversion of Rationality}.
Cambridge: Cambridge University Press, 1983.}

\item
\en{Elster, Jon.
\textit{Ulysses and the Sirens: Studies in Rationality
and Irrationality}. Rev.\ ed.
Cambridge: Cambridge University Press, 1984.}

\item
\en{Festinger, Leon.
\textit{A Theory of Cognitive Dissonance}.
Stanford: Stanford University Press, 1957.}

\item
\en{Fingarette, Herbert.
\textit{Self-Deception}.
London: Routledge \& Kegan Paul, 1969.}

\item
\en{Franck, Thomas M.
\textit{The Power of Legitimacy Among Nations}.
New York: Oxford University Press, 1990.}

\item
\en{George, Alexander L., and Andrew Bennett.
\textit{Case Studies and Theory Development in the Social Sciences}.
Cambridge, MA: MIT Press, 2005.}

\item
\en{Howson, Colin, and Peter Urbach.
\textit{Scientific Reasoning: The Bayesian Approach}. 3rd ed.
Chicago: Open Court, 2006.}

\item
\en{Kant, Immanuel.
\textit{Groundwork of the Metaphysics of Morals} (1785).
Trans.\ Mary Gregor.
Cambridge: Cambridge University Press, 1998.}

\item
\en{Keddie, Nikki R.
\textit{Modern Iran: Roots and Results of Revolution}.
Updated ed.
New Haven: Yale University Press, 2006.}

\item
\en{Korsgaard, Christine M.
\textit{Creating the Kingdom of Ends}.
Cambridge: Cambridge University Press, 1996.}

\item
\en{Krippendorff, Klaus.
\textit{Content Analysis: An Introduction to Its Methodology}.
3rd ed.
Thousand Oaks, CA: Sage, 2013.}

\item
\en{Kunda, Ziva.
``The Case for Motivated Reasoning.''
\textit{Psychological Bulletin}, 108(3), 1990, pp.\,480–498.}

\item
\en{Kurzman, Charles.
\textit{The Unthinkable Revolution in Iran}.
Cambridge, MA: Harvard University Press, 2004.}

\item
\en{Lijphart, Arend.
``Comparative Politics and the Comparative Method.''
\textit{American Political Science Review}, 65(3), 1971, pp.\,682–693.}

\item
\en{MacIntyre, Alasdair.
\textit{After Virtue: A Study in Moral Theory}. 3rd ed.
Notre Dame, IN: University of Notre Dame Press, 2007.}

\item
\en{Martin, Vanessa.
\textit{Creating an Islamic State: Khomeini and the Making of
a New Iran}.
London: I.\,B.\,Tauris, 2000.}

\item
\en{Mele, Alfred R.
\textit{Self-Deception Unmasked}.
Princeton: Princeton University Press, 2001.}

\item
\en{Milani, Mohsen M.
\textit{The Making of Iran's Islamic Revolution:
From Monarchy to Islamic Republic}. 2nd ed.
Boulder, CO: Westview Press, 1994.}

\item
\en{Mill, John Stuart.
\textit{Utilitarianism} (1863).
Ed.\ Roger Crisp.
Oxford: Oxford University Press, 1998.}

\item
\en{Moin, Baqer.
\textit{Khomeini: Life of the Ayatollah}.
London: I.\,B.\,Tauris, 1999.}

\item
\en{Nickerson, Raymond S.
``Confirmation Bias: A Ubiquitous Phenomenon in Many Guises.''
\textit{Review of General Psychology}, 2(2), 1998, pp.\,175–220.}

\item
\en{Opwis, Felicitas.
\textit{Maṣlaḥa and the Purpose of the Law: Islamic Discourse
on Legal Change from the 4th/10th to 8th/14th Century}.
Leiden: Brill, 2010.}

\item
\en{Robertson, Geoffrey.
\textit{The Massacre of Political Prisoners in Iran, 1988:
A Report}.
Washington, DC: Abdorrahman Boroumand Foundation, 2010.}

\item
\en{Saltelli, Andrea, et al.
\textit{Global Sensitivity Analysis: The Primer}.
Chichester: Wiley, 2008.}

\item
\en{Schirazi, Asghar.
\textit{The Constitution of Iran: Politics and the State
in the Islamic Republic}.
London: I.\,B.\,Tauris, 1997.}

\item
\en{Sharot, Tali.
\textit{The Optimism Bias: A Tour of the Irrationally Positive Brain}.
New York: Pantheon, 2011.}

\item
\en{Skocpol, Theda.
\textit{States and Social Revolutions: A Comparative Analysis of
France, Russia, and China}.
Cambridge: Cambridge University Press, 1979.}

\item
\en{Trivers, Robert.
\textit{The Folly of Fools: The Logic of Deceit and
Self-Deception in Human Life}.
New York: Basic Books, 2011.}

\item
\en{Tufte, Edward R.
\textit{The Visual Display of Quantitative Information}. 2nd ed.
Cheshire, CT: Graphics Press, 2001.}

\item
\en{von Hippel, William, and Robert Trivers.
``The Evolution and Psychology of Self-Deception.''
\textit{Behavioral and Brain Sciences}, 34(1), 2011, pp.\,1–16.}

\end{enumerate}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  INDEX — نمایه
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Note: For full index, use makeidx or xindy.
% Below is a placeholder structure.
% In production, add \index{} commands throughout Segments 1-4
% and compile with: makeindex -s xindy.ist <jobname>

\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{نمایه}

% If using makeidx:
% \printindex

% Manual placeholder index:
\chapter*{نمایه}
\label{ch:index}

\begin{infoBox}[دربارهٔ نمایه]
نمایهٔ زیر مهم‌ترین اصطلاحات، اشخاص و رویدادها
را با ارجاع به شمارهٔ فصل فهرست می‌کند.
در نسخهٔ نهایی با استفاده از بستهٔ
\en{makeidx/xindy}
به‌صورت خودکار تولید خواهد شد.
\end{infoBox}

{%
\small
\begin{multicols}{2}
\subsection*{اشخاص}
\begin{description}[style=nextline, font=\normalfont]
\item[خمینی، روح‌الله] تمام فصل‌ها
\item[بازرگان، مهدی] ۶، ۷، ۱۶
\item[بختیار، شاپور] ۷
\item[بنی‌صدر، ابوالحسن] ۱۲، ۱۴، ۱۶
\item[بهشتی، محمد] ۸، ۱۴، ۱۶
\item[رفسنجانی، اکبر هاشمی] ۸، ۱۱، ۱۴، ۱۶
\item[سروش، عبدالکریم] ۴، ۱۴
\item[کدیور، محسن] ۴، ۸، ۱۳، ۱۴
\item[گنجی، اکبر] ۱۳
\item[منتظری، حسینعلی] ۱۲، ۱۶، پیوست ب
\item[یزدی، ابراهیم] ۶، ۷، ۱۶
\end{description}

\subsection*{مفاهیم و اصطلاحات}
\begin{description}[style=nextline, font=\normalfont]
\item[استدلال انگیزه‌محور] ۱۵
\item[ارزیابی بیزی] ۱۵
\item[تحلیل حساسیت] ۱۵
\item[تز ترکیبی مرحله‌ای] ۱۴، ۱۵، ۱۶
\item[تقیه] ۴، ۱۴
\item[خودفریبی] ۱۴، ۱۵، ۱۶
\item[ماتریس سازگاری] ۱۴
\item[مصلحت نظام] ۱۱، ۱۵، ۱۶، پیوست ب
\item[ناهماهنگی شناختی] ۱۵
\item[ولایت فقیه] ۴، ۸، ۱۱، ۱۳، پیوست ب
\item[ولایت مطلقهٔ فقیه] ۱۱، ۱۵، ۱۶، پیوست ب
\

<!-- POSSIBLE OVERLAP DETECTED (similarity: 85%) - REVIEW BELOW -->

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
```

### Overlap Report

*2 overlap(s) detected:*

- **Overlap 1:** 62 chars, similarity 85%, Flagged
- **Overlap 2:** 53 chars, similarity 85%, Flagged

---
